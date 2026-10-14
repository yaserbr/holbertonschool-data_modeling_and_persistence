SELECT
    genre,
    count(stock)
FROM
    books
group by
    genre