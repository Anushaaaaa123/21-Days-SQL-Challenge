USE hospital;

SELECT * FROM services_weekly WHERE event IS NULL;

SELECT * FROM services_weekly WHERE event IS NOT NULL;

SELECT service, week,
    COALESCE(event, 'No Event') AS event_status
FROM services_weekly;

SELECT
    COUNT(*) AS total_rows,
    COUNT(event) AS non_null_events,
    COUNT(*) - COUNT(event) AS null_events
FROM services_weekly;

SELECT * FROM services_weekly
WHERE event IS NOT NULL AND event != '';

select week from services_weekly where event is Null;

select * from services_weekly where event='none';

select count(*) from services_weekly 
where event is null or event='';

select distinct service from services_weekly
where event is not null and event!='none';

select 
case
when event is not null then 'With Event'
else 'No Event'
end as event_status,
count(*) as total_weeks, avg(patient_satisfaction) as avg_satisfaction, avg(staff_morale) avg_morale
from services_weekly
group by event_status
order by avg_satisfaction desc;
