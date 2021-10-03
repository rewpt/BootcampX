SELECT cohorts.name as name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
FROM cohorts
JOIN students on cohort_id = cohorts.id
JOIN assistance_requests on students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;