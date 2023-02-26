--Найти список студентов в определенной группе.
SELECT gr.name, s.fullname 
FROM students s
JOIN [groups] gr on gr.id = s.group_id 
GROUP BY s.fullname 
ORDER BY gr.name
