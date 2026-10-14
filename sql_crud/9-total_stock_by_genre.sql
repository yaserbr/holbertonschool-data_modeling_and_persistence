SELECT
    genre,
    sum(stock)
FROM
    books
GROUP BY
    genre