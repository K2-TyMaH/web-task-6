--Найти 5 студентов с наибольшим средним баллом по всем предметам.
SELECT s.fullname, ROUND(AVG(g.grade), 2) AS avg_grade
FROM grades g
JOIN students s on s.id = g.student_id 
GROUP BY s.fullname 
ORDER BY avg_grade DESC
LIMIT 5