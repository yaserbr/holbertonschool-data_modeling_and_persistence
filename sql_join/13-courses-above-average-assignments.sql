-- Courses with more assignments than the average per course
SELECT c.title AS course_title
FROM courses c
JOIN assignments a ON a.course_id = c.id
GROUP BY c.id, c.title
HAVING COUNT(a.id) > (
    SELECT AVG(assignment_count)
    FROM (
        SELECT COUNT(id) AS assignment_count
        FROM assignments
        GROUP BY course_id
    ) AS course_counts
)
ORDER BY course_title ASC;
