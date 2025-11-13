USE hospital;
SELECT service, COUNT(*) AS patient_count
FROM patients
GROUP BY service
HAVING COUNT(*) > 100;

SELECT service, COUNT(*) AS patient_count
FROM patients
WHERE age >= 65
GROUP BY service
HAVING COUNT(*) > 20;

SELECT service,
    AVG(satisfaction) AS avg_sat,
    COUNT(*) AS count FROM patients
GROUP BY service
HAVING AVG(satisfaction) > 80 AND COUNT(*) > 50;

SELECT service, COUNT(*) AS count FROM patients
GROUP BY service
HAVING count > 100;

select service, sum(patients_admitted) as patients from services_weekly group by service having sum(patients_admitted)>500;

select service, avg(patient_satisfaction) as satisfaction from services_weekly group by service having avg(patient_satisfaction)<75;

select week, sum(present) as staff_presence from staff_schedule group by week having sum(present)<50;

select service, sum(patients_refused) as total_refused, avg(patient_satisfaction) as average_satisfaction 
from services_weekly group by service having sum(patients_refused)>100 and avg(patient_satisfaction)<80;
