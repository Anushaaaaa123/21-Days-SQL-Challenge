USE hospital;

SELECT * FROM patients LIMIT 10 OFFSET 0;

SELECT * FROM patients LIMIT 10 OFFSET 10;

SELECT * FROM patients LIMIT 10 OFFSET 100;

SELECT * FROM patients LIMIT 5;

SELECT * FROM patients LIMIT 10 OFFSET 20;

SELECT * FROM patients 
ORDER BY arrival_date DESC
LIMIT 10 OFFSET 10;

SELECT patient_id, name, service, satisfaction FROM patients ORDER BY satisfaction DESC LIMIT 4 OFFSET 2;