USE hospital;

SELECT patient_id, name,
    arrival_date,
    departure_date,
    DATEDIFF(departure_date, arrival_date) AS stay_days
FROM patients;

SELECT
    patient_id,
    YEAR(arrival_date) AS arrival_year,
    MONTH(arrival_date) AS arrival_month
FROM patients;

SELECT * FROM patients
WHERE arrival_date BETWEEN '2024-01-01' AND '2024-12-31';

SELECT * FROM patients
WHERE MONTH(arrival_date) = '06';

select Year(arrival_date) as Arrival_Year from patients;

select *, datediff(departure_date,arrival_date) as Satys from patients;

select service, count(*) from patients
group by service
having avg(datediff(departure_date,arrival_date)) > 7
order by avg(datediff(departure_date,arrival_date)) desc;