USE hospital;

SELECT
    s.staff_id,
    s.staff_name,
    s.role,
    s.service,
    COUNT(ss.week) AS weeks_scheduled,
    SUM(COALESCE(ss.present, 0)) AS weeks_present
FROM staff s
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id
GROUP BY s.staff_id, s.staff_name, s.role, s.service;

SELECT s.*FROM staff s
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id
WHERE ss.staff_id IS NULL;

SELECT
    sw.service,
    sw.week,
    COUNT(p.patient_id) AS patient_count
FROM services_weekly sw
LEFT JOIN patients p ON sw.service = p.service
GROUP BY sw.service, sw.week;

SELECT
    s.staff_name,
    COALESCE(SUM(ss.present), 0) AS weeks_present
    FROM staff s
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id;

SELECT 
    s.staff_id, 
    s.staff_name, 
    s.role, 
    s.service,
    COALESCE(SUM(ss.present), 0) AS weeks_present
FROM staff s
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id
GROUP BY s.staff_id, s.staff_name, s.role, s.service
ORDER BY weeks_present DESC;