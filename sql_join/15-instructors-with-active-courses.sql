-- Instructors teaching at least one course with at least one registered student
SELECT DISTINCT i.name AS instructor_name
FROM instructors i
JOIN courses c ON c.instructor_id = i.id
JOIN registrations r ON r.course_id = c.id
ORDER BY instructor_name ASC;
