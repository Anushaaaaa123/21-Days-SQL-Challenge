USE hospital;

SELECT service, COUNT(*) AS patient_count
FROM patients
GROUP BY service;

SELECT service,
    COUNT(*) AS total_patients,
    AVG(age) AS avg_age,
    AVG(satisfaction) AS avg_satisfaction
FROM patients
GROUP BY service;

SELECT service,
    CASE WHEN age >= 65 THEN 'Senior' ELSE 'Adult' END AS age_group,
    COUNT(*) AS count FROM patients
GROUP BY service, age_group;

SELECT service, COUNT(*) AS count FROM patients
GROUP BY service
ORDER BY count DESC;

SELECT service, count(*) FROM patients GROUP BY service;

SELECT service, AVG(age) FROM patients GROUP BY service;

SELECT role, COUNT(*) FROM staff GROUP BY role;

SELECT service, 
SUM(patients_admitted) AS patients_admitted, 
SUM(patients_refused) AS patients_refused, 
ROUND((SUM(patients_admitted) * 100.0)/ NULLIF(SUM(patients_admitted) + SUM(patients_refused), 0),2) AS admission_rate 
FROM services_weekly GROUP BY service;