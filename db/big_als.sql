DROP TABLE albums;
DROP TABLE artists;
-- DROP TABLE genres;


-- CREATE TABLE genres
-- (
--   id SERIAL8 PRIMARY KEY,
--   type VARCHAR(255) NOT NULL
-- );




CREATE TABLE artists
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE albums
 (
   id SERIAL8 PRIMARY KEY,
   title VARCHAR(255),
   artist_id INT8 REFERENCES artists(id) ON DELETE CASCADE,
   genre_id INT8 REFERENCES genres(id),
   quantity INT8,
   buy_price INT8,
   sell_price INT8,
   artwork TEXT
 );




-- ALTER TABLE albums ADD artist_id INT8 references artists(id);
-- ALTER TABLE albums DROP COLUMN artist;
