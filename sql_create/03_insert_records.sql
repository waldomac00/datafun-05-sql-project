-- Insert records into the authors table first
INSERT INTO authors (author_id, name, birth_year, nationality) VALUES
    ('AUTHOR_001', 'J.K. Rowling', 1965, 'British'),
    ('AUTHOR_002', 'George Orwell', 1903, 'British'),
    ('AUTHOR_003', 'Harper Lee', 1926, 'American'),
    ('AUTHOR_004', 'Jane Austen', 1775, 'British'),
    ('AUTHOR_005', 'Mark Twain', 1835, 'American'),
    ('AUTHOR_006', 'Ernest Hemingway', 1899, 'American'),
    ('AUTHOR_007', 'F. Scott Fitzgerald', 1896, 'American'),
    ('AUTHOR_008', 'J.R.R. Tolkien', 1892, 'British'),
    ('AUTHOR_009', 'Mary Shelley', 1797, 'British'),
    ('AUTHOR_010', 'Charles Dickens', 1812, 'British'),
    ('AUTHOR_011', 'Leo Tolstoy', 1828, 'Russian'),
    ('AUTHOR_012', 'Herman Melville', 1819, 'American'),
    ('AUTHOR_013', 'Gabriel Garcia Marquez', 1927, 'Colombian'),
    ('AUTHOR_014', 'Virginia Woolf', 1882, 'British'),
    ('AUTHOR_015', 'Oscar Wilde', 1854, 'Irish'),
    ('AUTHOR_016', 'C.S. Lewis', 1898, 'British'),
    ('AUTHOR_017', 'Arthur Conan Doyle', 1859, 'British'),
    ('AUTHOR_018', 'Louisa May Alcott', 1832, 'American'),
    ('AUTHOR_019', 'John Steinbeck', 1902, 'American'),
    ('AUTHOR_020', 'Homer', -800, 'Greek');

-- Insert records into the books table
-- And include foreign key references to the authors table
-- IMPORTANT: No tic marks inside a string, use two single quotes to escape a single quote
INSERT INTO books (book_id, title, genre, publication_year, author_id) VALUES
    ('BOOK_001', 'Harry Potter and the Sorcerer''s Stone', 'Fantasy', 1997, 'AUTHOR_001'),
    ('BOOK_002', '1984', 'Dystopian', 1949, 'AUTHOR_002'),
    ('BOOK_003', 'To Kill a Mockingbird', 'Fiction', 1960, 'AUTHOR_003'),
    ('BOOK_004', 'Pride and Prejudice', 'Romance', 1813, 'AUTHOR_004'),
    ('BOOK_005', 'Adventures of Huckleberry Finn', 'Adventure', 1884, 'AUTHOR_005'),
    ('BOOK_006', 'The Old Man and the Sea', 'Literary Fiction', 1952, 'AUTHOR_006'),
    ('BOOK_007', 'The Great Gatsby', 'Fiction', 1925, 'AUTHOR_007'),
    ('BOOK_008', 'The Hobbit', 'Fantasy', 1937, 'AUTHOR_008'),
    ('BOOK_009', 'Frankenstein', 'Gothic', 1818, 'AUTHOR_009'),
    ('BOOK_010', 'A Tale of Two Cities', 'Historical Fiction', 1859, 'AUTHOR_010'),
    ('BOOK_011', 'War and Peace', 'Historical Fiction', 1869, 'AUTHOR_011'),
    ('BOOK_012', 'Moby-Dick', 'Adventure', 1851, 'AUTHOR_012'),
    ('BOOK_013', 'One Hundred Years of Solitude', 'Magical Realism', 1967, 'AUTHOR_013'),
    ('BOOK_014', 'Mrs Dalloway', 'Modernist Fiction', 1925, 'AUTHOR_014'),
    ('BOOK_015', 'The Picture of Dorian Gray', 'Philosophical Fiction', 1890, 'AUTHOR_015'),
    ('BOOK_016', 'The Lion, the Witch and the Wardrobe', 'Fantasy', 1950, 'AUTHOR_016'),
    ('BOOK_017', 'The Hound of the Baskervilles', 'Detective Fiction', 1902, 'AUTHOR_017'),
    ('BOOK_018', 'Little Women', 'Coming-of-Age', 1868, 'AUTHOR_018'),
    ('BOOK_019', 'The Grapes of Wrath', 'Fiction', 1939, 'AUTHOR_019'),
    ('BOOK_020', 'The Odyssey', 'Epic Poetry', -700, 'AUTHOR_020');