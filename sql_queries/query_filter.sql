SELECT title, publication_year
FROM books
WHERE  publication_year >= 1950
ORDER BY publication_year ASC, title ASC;
-- This query lists books published from 1950 onwards, ordered by year and title.