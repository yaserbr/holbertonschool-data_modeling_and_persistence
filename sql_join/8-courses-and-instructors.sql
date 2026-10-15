-- All courses with their instructor
SELECT c.title AS course_title,
       i.name AS instructor_name
FROM courses c
LEFT JOIN instructors i ON i.id = c.instructor_id
ORDER BY course_title ASC;
