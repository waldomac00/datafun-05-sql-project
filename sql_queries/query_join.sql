SELECT b.title,
       b.year_published,
       a.name AS author
FROM books b
INNER JOIN authors a ON a.author_id = b.author_id
ORDER BY a.name ASC, b.title ASC;
-- This query lists all books along with their authors, ordered by author name and book title.