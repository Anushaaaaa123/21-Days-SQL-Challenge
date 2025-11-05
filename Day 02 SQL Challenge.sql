USE hospital;

SELECT * FROM patients WHERE age > 60;

SELECT * FROM patients
WHERE age > 60 AND service = 'Cardiology';

SELECT * FROM patients
WHERE service = 'Emergency' OR service = 'Cardiology';

SELECT * FROM patients
WHERE service IN ('Emergency', 'Cardiology', 'Neurology');

-- PRACTICE QUESTIONS

SELECT * FROM patients 
WHERE age > 60;

SELECT * FROM staff
WHERE service = 'emergency';

SELECT * FROM services_weekly
WHERE patients_request > 100;

SELECT patient_id, name, age, satisfaction FROM patients
WHERE service = 'surgery' AND satisfaction <70;