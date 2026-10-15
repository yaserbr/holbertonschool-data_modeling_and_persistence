-- One row per registration: student and course
SELECT s.name AS student_name,
       c.title AS course_title
FROM registrations r
JOIN students s ON s.id = r.student_id
JOIN courses c ON c.id = r.course_id
ORDER BY student_name ASC, course_title ASC;
