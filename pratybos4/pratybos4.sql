-- pratybos 4

SELECT authors.name, COUNT(books.bookId), books.authorId 
FROM authors 
LEFT JOIN books ON authors.authorId = books.authorId 
GROUP BY authors.name;
DELETE authors 
FROM authors 
LEFT JOIN books ON authors.authorId = books.authorId 
WHERE books.authorId IS NULL;