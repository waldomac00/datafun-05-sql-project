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
    -- J.K. Rowling (3 books)
    ('BOOK_001', 'Harry Potter and the Sorcerer''s Stone', 'Fantasy', 1997, 'AUTHOR_001'),
    ('BOOK_002', 'Harry Potter and the Chamber of Secrets', 'Fantasy', 1998, 'AUTHOR_001'),
    ('BOOK_003', 'Harry Potter and the Prisoner of Azkaban', 'Fantasy', 1999, 'AUTHOR_001'),

    -- George Orwell (2 books)
    ('BOOK_004', '1984', 'Dystopian', 1949, 'AUTHOR_002'),
    ('BOOK_005', 'Animal Farm', 'Political Satire', 1945, 'AUTHOR_002'),

    -- Harper Lee (1 book)
    ('BOOK_006', 'To Kill a Mockingbird', 'Fiction', 1960, 'AUTHOR_003'),

    -- Jane Austen (4 books)
    ('BOOK_007', 'Pride and Prejudice', 'Romance', 1813, 'AUTHOR_004'),
    ('BOOK_008', 'Sense and Sensibility', 'Romance', 1811, 'AUTHOR_004'),
    ('BOOK_009', 'Emma', 'Romance', 1815, 'AUTHOR_004'),
    ('BOOK_010', 'Mansfield Park', 'Romance', 1814, 'AUTHOR_004'),

    -- Mark Twain (2 books)
    ('BOOK_011', 'Adventures of Huckleberry Finn', 'Adventure', 1884, 'AUTHOR_005'),
    ('BOOK_012', 'The Adventures of Tom Sawyer', 'Adventure', 1876, 'AUTHOR_005'),

    -- Ernest Hemingway (3 books)
    ('BOOK_013', 'The Old Man and the Sea', 'Literary Fiction', 1952, 'AUTHOR_006'),
    ('BOOK_014', 'For Whom the Bell Tolls', 'Literary Fiction', 1940, 'AUTHOR_006'),
    ('BOOK_015', 'A Farewell to Arms', 'Literary Fiction', 1929, 'AUTHOR_006'),

    -- F. Scott Fitzgerald (2 books)
    ('BOOK_016', 'The Great Gatsby', 'Fiction', 1925, 'AUTHOR_007'),
    ('BOOK_017', 'Tender is the Night', 'Fiction', 1934, 'AUTHOR_007'),

    -- J.R.R. Tolkien (5 books)
    ('BOOK_018', 'The Hobbit', 'Fantasy', 1937, 'AUTHOR_008'),
    ('BOOK_019', 'The Lord of the Rings: The Fellowship of the Ring', 'Fantasy', 1954, 'AUTHOR_008'),
    ('BOOK_020', 'The Lord of the Rings: The Two Towers', 'Fantasy', 1954, 'AUTHOR_008'),
    ('BOOK_021', 'The Lord of the Rings: The Return of the King', 'Fantasy', 1955, 'AUTHOR_008'),
    ('BOOK_022', 'The Silmarillion', 'Fantasy', 1977, 'AUTHOR_008'),

    -- Mary Shelley (1 book)
    ('BOOK_023', 'Frankenstein', 'Gothic', 1818, 'AUTHOR_009'),

    -- Charles Dickens (3 books)
    ('BOOK_024', 'A Tale of Two Cities', 'Historical Fiction', 1859, 'AUTHOR_010'),
    ('BOOK_025', 'Great Expectations', 'Fiction', 1861, 'AUTHOR_010'),
    ('BOOK_026', 'David Copperfield', 'Fiction', 1850, 'AUTHOR_010'),

    -- Leo Tolstoy (2 books)
    ('BOOK_027', 'War and Peace', 'Historical Fiction', 1869, 'AUTHOR_011'),
    ('BOOK_028', 'Anna Karenina', 'Fiction', 1877, 'AUTHOR_011'),

    -- Herman Melville (1 book)
    ('BOOK_029', 'Moby-Dick', 'Adventure', 1851, 'AUTHOR_012'),

    -- Gabriel Garcia Marquez (2 books)
    ('BOOK_030', 'One Hundred Years of Solitude', 'Magical Realism', 1967, 'AUTHOR_013'),
    ('BOOK_031', 'Love in the Time of Cholera', 'Magical Realism', 1985, 'AUTHOR_013'),

    -- Virginia Woolf (2 books)
    ('BOOK_032', 'Mrs Dalloway', 'Modernist Fiction', 1925, 'AUTHOR_014'),
    ('BOOK_033', 'To the Lighthouse', 'Modernist Fiction', 1927, 'AUTHOR_014'),

    -- Oscar Wilde (1 book)
    ('BOOK_034', 'The Picture of Dorian Gray', 'Philosophical Fiction', 1890, 'AUTHOR_015'),

    -- C.S. Lewis (3 books)
    ('BOOK_035', 'The Lion, the Witch and the Wardrobe', 'Fantasy', 1950, 'AUTHOR_016'),
    ('BOOK_036', 'Prince Caspian', 'Fantasy', 1951, 'AUTHOR_016'),
    ('BOOK_037', 'The Voyage of the Dawn Treader', 'Fantasy', 1952, 'AUTHOR_016'),

    -- Arthur Conan Doyle (2 books)
    ('BOOK_038', 'A Study in Scarlet', 'Detective Fiction', 1887, 'AUTHOR_017'),
    ('BOOK_039', 'The Hound of the Baskervilles', 'Detective Fiction', 1902, 'AUTHOR_017'),

    -- Louisa May Alcott (1 book)
    ('BOOK_040', 'Little Women', 'Coming-of-Age', 1868, 'AUTHOR_018'),

    -- John Steinbeck (2 books)
    ('BOOK_041', 'The Grapes of Wrath', 'Fiction', 1939, 'AUTHOR_019'),
    ('BOOK_042', 'Of Mice and Men', 'Fiction', 1937, 'AUTHOR_019'),

    -- Homer (2 books)
    ('BOOK_043', 'The Iliad', 'Epic Poetry', -750, 'AUTHOR_020'),
    ('BOOK_044', 'The Odyssey', 'Epic Poetry', -700, 'AUTHOR_020');
