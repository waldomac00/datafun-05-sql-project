SELECT title, year_published
FROM books
WHERE year_published >= 1950
ORDER BY year_published ASC, title ASC;
-- This query lists books published from 1950 onwards, ordered by year and title.