SELECT
    author,
    count(*)
FROM
    books
GROUP BY
    author