-- All courses with their assignments, including courses with none
SELECT c.title AS course_title,
       a.title AS assignment_title
FROM courses c
LEFT JOIN assignments a ON a.course_id = c.id
ORDER BY course_title ASC, assignment_title ASC;
