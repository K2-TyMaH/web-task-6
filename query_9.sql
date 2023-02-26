--Найти список курсов, которые посещает определенный студент.
SELECT s.fullname, subj.name
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN subjects subj ON subj.id = g.subject_id 
WHERE g.student_id = 21
GROUP BY subj.name 
ORDER BY subj.name 