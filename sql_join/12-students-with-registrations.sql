-- Students registered in at least one course
SELECT s.name AS student_name
FROM students s
WHERE s.id IN (SELECT student_id FROM registrations)
ORDER BY student_name ASC;
