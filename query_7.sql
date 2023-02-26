--Найти оценки студентов в отдельной группе по определенному предмету.
SELECT s.fullname, gr.name, subj.name, grade, date_of 
FROM grades g
JOIN students s on s.id = g.student_id 
JOIN subjects subj on subj.id = g.subject_id 
JOIN [groups] gr on gr.id = s.group_id 
WHERE subj.id = 2 AND gr.id = 2
GROUP BY date_of
ORDER BY s.fullname 