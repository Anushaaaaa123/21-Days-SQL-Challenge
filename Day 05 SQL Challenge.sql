USE hospital;

SELECT COUNT(*) AS total_patients FROM patients;

SELECT
    COUNT(*) AS total,
    AVG(age) AS avg_age,
    MIN(age) AS youngest,
    MAX(age) AS oldest,
    SUM(satisfaction) AS total_satisfaction
FROM patients;

SELECT
    COUNT(*) AS total,
    AVG(age) AS avg_age,
    MIN(age) AS youngest,
    MAX(age) AS oldest,
    SUM(satisfaction) AS total_satisfaction
FROM patients WHERE service = 'Cardiology';

SELECT ROUND(AVG(age), 2) AS avg_age FROM patients;

SELECT COUNT(DISTINCT service) AS unique_services FROM patients;

SELECT COUNT(*) FROM patients;

SELECT AVG(satisfaction) FROM patients;

SELECT MIN(age), MAX(age) FROM patients;

SELECT COUNT(patients_admitted), COUNT(patients_refused), ROUND(AVG(patient_satisfaction),2) FROM services_weekly;