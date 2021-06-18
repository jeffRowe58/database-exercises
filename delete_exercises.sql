USE codeup_test_db;

SELECT 'Albums released after 1991' AS '';
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'Albums that include disco as a genre' AS '';
SELECT * FROM albums WHERE genre LIKE '%Disco%';

SELECT 'Albums that include disco as a genre' AS '';
SELECT * FROM albums WHERE artist_name LIKE '%Whitney Houston%';

SELECT 'Now we delete them all!' AS '';
DELETE  FROM albums WHERE release_date > 1991;
DELETE  FROM albums WHERE genre LIKE '%Disco%';
DELETE  FROM albums WHERE artist_name LIKE '%Whitney Houston%';

SELECT 'Shaazaam! list updated' AS '';
SELECT * FROM albums;

