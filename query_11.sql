--Средний балл, который определенный преподаватель ставит определенному студенту.
SELECT t.fullname AS teacher, s.fullname AS student, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN teachers t on t.id = subj.teacher_id
JOIN subjects subj on subj.id = g.subject_id 
JOIN students s on s.id = g.student_id 
WHERE s.id = 15 AND t.id = 2
