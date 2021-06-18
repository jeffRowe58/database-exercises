USE codeup_test_db;

SELECT 'This is a list of the Pink Floyd Albums' AS '';
SELECT * FROM albums  WHERE artist_name = 'Pink Floyd' ;

SELECT 'This is the year SGT. Pepper''s Lonely Hearts Club Band album was released.' AS '';
SELECT YEAR(release_date) FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS '';
SELECT genre FROM albums WHERE album_name = 'Nevermind';

SELECT '90''s Albums' AS '';
SELECT * FROM albums WHERE YEAR(release_date) BETWEEN 1990 AND 1999;

SELECT 'Albums with less than 20 million sold' AS '';
SELECT * FROM albums WHERE sales_number < 20000000;

SELECT 'Albums that have Rock as a genre' AS '';
SELECT * FROM albums WHERE genre LIKE '%Rock%';