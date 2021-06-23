USE codeup_test_db;

CREATE TABLE artists_albums (
    id INT NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL,
    album_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (artist_name, album_name)
);