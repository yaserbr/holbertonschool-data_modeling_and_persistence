UPDATE
    books
SET
    price = price * 0.90
WHERE
    genre = 'tech'
    AND stock > 5