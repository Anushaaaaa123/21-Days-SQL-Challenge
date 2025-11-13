USE hospital;
SELECT UPPER(name) AS name_upper FROM patients;

SELECT CONCAT(name, ' - ', service) AS patient_info FROM patients;

SELECT name, LENGTH(name) AS name_length
FROM patients
WHERE LENGTH(name) > 15;

SELECT SUBSTRING(name, 1, 3) AS name_abbr FROM patients;

SELECT REPLACE(service, 'emergency', 'ER') AS service_abbr
FROM patients;

SELECT
    name,
    CASE
        WHEN LENGTH(name) > 20 THEN SUBSTRING(name, 1, 20) || '...'        ELSE name
    END AS display_name
FROM patients;

select upper(name) as patient_name from patients;

select staff_name, length(staff_name) as length from staff;

select concat(staff_id, '-', staff_name) as Staff_ID_and_Name from staff;

select patient_id, upper(name) as Full_Name, lower(service) as Service, 
CASE
when age>=65 then 'Senior'
when age>=18 then 'Adult'
else 'Minor'
end as Age_Category
from patients
where length(name)>10;
