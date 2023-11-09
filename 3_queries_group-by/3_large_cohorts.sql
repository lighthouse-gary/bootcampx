SELECT c.name AS cohort_name, COUNT(*) AS student_count
FROM cohorts AS c
JOIN students AS s ON c.id = cohort_id
GROUP BY c.name
HAVING COUNT(*) >= 18
ORDER BY student_count;