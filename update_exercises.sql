USE codeup_test_db;

SELECT 'All albums' AS '';
SELECT * FROM albums;
UPDATE albums SET sales_number = sales_number * 10;
SELECT 'More popular albums' AS '';
SELECT * FROM albums;

SELECT 'All albums for before 1980' AS '';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT 'Old albums Older' AS '';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'All Michael Jackson albums' AS '';
SELECT * FROM albums WHERE artist_name = 'Michael Jackson';
UPDATE albums SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';
SELECT 'Peter or Michael... Still a Jackson' AS '';
SELECT * FROM albums WHERE artist_name = 'Peter Jackson';



