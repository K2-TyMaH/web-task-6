--Список курсов, которые определенному студенту читает определенный преподаватель.
SELECT subj.name AS subject, s.fullname AS student, t.fullname AS teacher
FROM grades g
JOIN students s on s.id = g.student_id 
JOIN subjects subj on subj.id = g.subject_id 
JOIN teachers t on t.id = subj.teacher_id
WHERE s.id = 9 AND t.id = 2
GROUP BY subj.name 
ORDER BY subj.name 