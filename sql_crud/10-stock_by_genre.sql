SELECT
    genre,
    SUM(stock)
FROM
    books
group by
    genre