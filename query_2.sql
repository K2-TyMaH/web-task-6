--Найти студента с наивысшим средним баллом по определенному предмету.
SELECT subj.name, s.fullname, ROUND(AVG(g.grade), 2) AS avg_grade
FROM grades g
JOIN students s on s.id = g.student_id 
JOIN subjects subj on subj.id = g.subject_id 
WHERE subj.id = 4
GROUP BY s.fullname 
ORDER BY avg_grade DESC
LIMIT 1