--Найти средний балл, который ставит определенный преподаватель по своим предметам.
SELECT t.fullname, subj.name, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN teachers t on t.id = subj.teacher_id
JOIN subjects subj on subj.id = g.subject_id 
GROUP BY subj.name
ORDER BY t.fullname 