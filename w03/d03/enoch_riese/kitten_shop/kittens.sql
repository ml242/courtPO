-- CREATE TABLE kittens (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR,
--   age INTEGER,
--   is_cute BOOLEAN,
--   image_url VARCHAR
-- );

ALTER TABLE kittens ADD COLUMN owner_id INTEGER;
-- CREATE TABLE owners (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR);

-- INSERT INTO owners (name) VALUES ('Nyki');
-- INSERT INTO owners (name) VALUES ('Phil');
-- INSERT INTO owners (name) VALUES ('Tara');

UPDATE kittens SET owner_id = 1 WHERE id = 1;
UPDATE kittens SET owner_id = 1 WHERE id = 2;
UPDATE kittens SET owner_id = 1 WHERE id = 3;
UPDATE kittens SET owner_id = 1 WHERE id = 6;
UPDATE kittens SET owner_id = 2 WHERE id = 4;
UPDATE kittens SET owner_id = 2 WHERE id = 5;
UPDATE kittens SET owner_id = 3 WHERE id = 7;
