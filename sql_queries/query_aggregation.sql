SELECT a.name AS author, COUNT(b.book_id) AS book_count
FROM authors a
LEFT JOIN books b ON b.author_id = a.author_id
GROUP BY a.author_id
ORDER BY book_count DESC, author ASC;
-- This query lists authors along with the count of books they have written.