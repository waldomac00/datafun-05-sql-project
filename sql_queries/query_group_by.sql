SELECT a.nationality, COUNT(b.book_id) AS n_books, AVG(b.year_published) AS avg_year
FROM authors a
LEFT JOIN books b ON b.author_id = a.author_id
GROUP BY a.nationality
ORDER BY n_books DESC, nationality ASC;
-- This query lists the number of books and average publication