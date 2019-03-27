-- Pratybos 2

INSERT INTO authors SET name = 'Mantas';
INSERT INTO authors SET name = 'Matas';
INSERT INTO books SET authorID = 8, title = 'Knyga1', Year = 2019;
INSERT INTO books SET authorID = 9, title = 'Knyga2', Year = 2019;
INSERT INTO books SET authorID = 8, title = 'Knyga3', Year = 2019;
UPDATE books SET authorId = 8 WHERE authorId = 1;