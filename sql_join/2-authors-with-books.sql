SELECT
    authors.id,
    authors.name,
    authors.country,
    books.id,
    books.title,
    books.author_id
FROM
    authors
    LEFT JOIN books ON authors.id = books.author_id