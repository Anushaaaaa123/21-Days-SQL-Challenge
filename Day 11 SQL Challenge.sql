USE hospital;

SELECT DISTINCT service FROM patients;

SELECT DISTINCT
    service,
    CASE
        WHEN age < 18 THEN 'Pediatric'        WHEN age BETWEEN 18 AND 65 THEN 'Adult'        ELSE 'Senior'    END AS age_group
FROM patients;

SELECT COUNT(DISTINCT service) AS unique_services FROM patients;

SELECT DISTINCT service, arrival_date
FROM patients
ORDER BY service, arrival_date;

SELECT DISTINCT service, name FROM patients;

select distinct service from patients;

select distinct role from staff;

select distinct month from services_weekly;

select * from services_weekly;

select count(distinct service) as Unique_Serivces
from services_weekly
where event!='none'
order by  Unique_Serivces desc;

select service, event, count(*) as event_count
from services_weekly
where event!='none'
group by service, event
order by event_count desc;
