--Оценки студентов в определенной группе по определенному предмету на последнем занятии.
SELECT gr.name AS [group], subj.name AS subject, s.fullname AS student, g.grade, g.date_of
FROM grades g
JOIN [groups] gr on gr.id = s.group_id 
JOIN students s on s.id = g.student_id 
JOIN subjects subj on subj.id = g.subject_id 
JOIN teachers t on t.id = subj.teacher_id
WHERE (gr.id = 3 AND subj.id = 8 AND (g.date_of BETWEEN '2023-06-12' AND '2023-06-15'))
GROUP BY g.id 
ORDER BY g.date_of