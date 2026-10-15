SELECT
    c.title AS course_title
FROM
    courses c
    JOIN enrollments e ON e.course_id = c.id
GROUP BY
    c.id,
    c.title
HAVING
    COUNT(e.student_id) > (
        SELECT
            AVG(enrollment_count)
        FROM
            (
                SELECT
                    COUNT(student_id) AS enrollment_count
                FROM
                    enrollments
                GROUP BY
                    course_id
            ) AS course_counts
    )
ORDER BY
    course_title ASC;