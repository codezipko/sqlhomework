-- pratybos 7

CREATE TABLE books_authors (
	id int AUTO_INCREMENT,
    bookId int,
    authorId int,
    PRIMARY KEY (id)
);

ALTER TABLE books DROP COLUMN authorId;
ALTER TABLE books CHANGE title CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;

SELECT
  books.bookId,
  GROUP_CONCAT(books.title),
  books_authors.bookId,
  GROUP_CONCAT(books_authors.authorId),
  GROUP_CONCAT(authors.name)
FROM
  books
  INNER JOIN books_authors ON books.bookId = books_authors.bookId
  LEFT JOIN authors ON books_authors.authorId = authors.authorId
GROUP BY
  books.title
ORDER BY
  authors.name