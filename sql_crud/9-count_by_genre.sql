SELECT
    genre,
    count(*)
FROM
    books
GROUP BY
    genre