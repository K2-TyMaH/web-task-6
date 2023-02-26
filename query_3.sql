--Найти средний балл в группах по определенному предмету.
SELECT subj.name, gr.name, ROUND(AVG(g.grade), 2) AS avg_grade
FROM grades g
JOIN students s on s.id = g.student_id 
JOIN subjects subj on subj.id = g.subject_id 
JOIN [groups] gr on gr.id = s.group_id 
WHERE subj.id = 8
GROUP BY gr.name
