USE hospital;

SELECT * FROM patients ORDER BY age DESC;

SELECT * FROM patients ORDER BY age DESC, name ASC;

SELECT name, age FROM patients ORDER BY 2 DESC;

SELECT name, age FROM patients ORDER BY satisfaction DESC;

SELECT * FROM patients
ORDER BY satisfaction DESC
LIMIT 10;

SELECT name, age FROM patients ORDER BY age DESC;

SELECT * FROM services_weekly ORDER BY week ASC, patients_request DESC;

SELECT * FROM staff ORDER BY staff_name ASC;

SELECT week, service, patients_refused, patients_request FROM services_weekly
ORDER BY patients_refused DESC LIMIT 5;