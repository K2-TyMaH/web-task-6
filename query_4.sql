--Найти средний балл на потоке (по всей таблице оценок).
SELECT ROUND(AVG(grade), 3) AS average_grade
FROM grades
