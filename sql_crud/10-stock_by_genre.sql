SELECT
    genre,
    count(*)
FROM
    books
group by
    genre