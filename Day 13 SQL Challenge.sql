USE hospital;

SELECT
    p.patient_id,
    p.name AS patient_name,
    p.service,
    s.staff_name,
    s.role FROM patients p
INNER JOIN staff s ON p.service = s.service
ORDER BY p.service, p.name;

SELECT
    p.patient_id,
    p.name,
    p.service,
    COUNT(s.staff_id) AS staff_count
FROM patients p
INNER JOIN staff s ON p.service = s.service
GROUP BY p.patient_id, p.name, p.service;

SELECT *FROM services_weekly sw
INNER JOIN staff_schedule ss
    ON sw.service = ss.service
    AND sw.week = ss.week;

select * from patients p
inner join staff s on p.service = s.service;

select sw.week,
    sw.service,
    sw.patient_satisfaction,
    s.staff_name as Staff_Name,
    s.role as Staff_Role from staff as s
inner join services_weekly sw on sw.service = s.service;

select 
p.patient_id as Patient_ID,
p.name as Patient_Name,
p.age as Patient_Age,
p.service as service,
s.staff_name as Staff_Name from patients p
left join staff s on p.service = s.service;

select p.patient_id as Patient_ID,
p.name as Patient_Name,
p.age as Patient_Age,
p.service as Service,
count(s.staff_id) as Staff_Count from patients p
inner join staff s on s.service = p.service
group by p.patient_id, p.name, p.age, p.service
having Staff_Count > 5
order by Staff_Count desc,
Patient_Name desc;
