-- Example UPDATEs (adjust ids as you like)
UPDATE books SET is_favorite = 1 WHERE book_id IN ('BOOK_001','BOOK_007');
UPDATE books SET genre = 'Classic' WHERE year_published < 1950 AND genre IS NULL;
