-- Every course with its number of registrations (including zero)
SELECT c.title AS course_title,
       COUNT(r.student_id) AS registration_count
FROM courses c
LEFT JOIN registrations r ON r.course_id = c.id
GROUP BY c.id, c.title
ORDER BY registration_count DESC, course_title ASC;
