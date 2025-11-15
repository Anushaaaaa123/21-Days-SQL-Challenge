USE hospital;

SELECT name, satisfaction,
    CASE
    WHEN satisfaction >= 90 THEN 'Excellent'
    WHEN satisfaction >= 75 THEN 'Good'
    WHEN satisfaction >= 60 THEN 'Fair'
    ELSE 'Needs Improvement'
    END AS satisfaction_category
FROM patients;

SELECT name, age,
    CASE
    WHEN age < 18 THEN 'Pediatric'
    WHEN age BETWEEN 18 AND 65 THEN 'Adult'
    ELSE 'Senior'
    END AS age_group
FROM patients;

SELECT service, COUNT(*) AS total,
    SUM(CASE WHEN satisfaction >= 80 THEN 1 ELSE 0 END) AS high_satisfaction_count,
    SUM(CASE WHEN satisfaction < 60 THEN 1 ELSE 0 END) AS low_satisfaction_count
FROM patients
GROUP BY service;

select name,
case
when satisfaction >=70 then 'High'
when satisfaction >30 and satisfaction <70 then 'Medium'
else 'Low'
End as Satisfaction_Level
from patients;

select * from staff;

select *, 
case 
when role = 'doctor' then 'Medical'
else 'Assistant'
end as Job_Role
from staff;

select *,
case
when age <=18 then 'Child'
when age >=19 and age <=40 then 'Adults'
when age >=41 and age <=65 then 'Middle_aged'
else 'Seniors'
end as Age_Level
from patients;


select service, count(patients_admitted),
case
when avg(patient_satisfaction)>=85 then 'Excellent'
when avg(patient_satisfaction)>=75 then 'Good'
when avg(patient_satisfaction)>=65 then 'Fair'
else 'Needs Improvement'
end as Performance_Category from services_weekly 
group by service
order by avg(patient_satisfaction) desc;