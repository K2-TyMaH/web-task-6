--Найти какие курсы читает определенный преподаватель.
SELECT t.fullname, subj.name
FROM subjects subj
FULL JOIN teachers t on t.id = subj.teacher_id
GROUP BY subj.name
ORDER BY t.fullname 