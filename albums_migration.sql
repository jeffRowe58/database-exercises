USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR (50) NOT NULL,
    album_name VARCHAR (50) NOT NULL,
    release_date INT(4) NOT NULL,
    sales_number DECIMAL(15, 2) UNSIGNED NOT NULL,
    genre VARCHAR (30) NOT NULL,
    PRIMARY KEY (id)
);