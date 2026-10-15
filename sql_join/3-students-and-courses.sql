SELECT
    students.name AS student_name,
    courses.title AS course_title
FROM
    enrollments
    INNER JOIN students ON students.id = enrollments.student_id
    INNER JOIN courses ON courses.id = enrollments.course_id
ORDER BY
    students.name ASC, courses.title ASC