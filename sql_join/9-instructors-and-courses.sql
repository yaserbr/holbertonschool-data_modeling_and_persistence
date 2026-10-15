-- All instructors, including those without courses
SELECT i.name AS instructor_name,
       c.title AS course_title
FROM instructors i
LEFT JOIN courses c ON c.instructor_id = i.id
ORDER BY instructor_name ASC, course_title ASC;
