-- -- this creates a kitten table
-- CREATE TABLE kittens (
--   -- these are the kitten attributes
--   id SERIAL PRIMARY KEY,
--   name VARCHAR NOT NULL,
--   age INTEGER DEFAULT 0,
--   is_cute BOOLEAN DEFAULT true,
--   image_url VARCHAR
-- );

-- INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Garfield', 7, false, 'http://images4.wikia.nocookie.net/__cb20130317214660/smashbroslawlorigins/images/3/3f/Garfield_by_is6ca.jpg');
-- INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Sylvester', 6, false, 'http://www.allfreevectors.com/images/Free%20Vector%20Sylvester%20008929.jpg');
-- INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Sylvester', 8, false, 'http://www.allfreevectors.com/images/Free%20Vector%20Sylvester%20008929.jpg');
-- INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Maru', 3, true, 'http://s3-ec.buzzfed.com/static/enhanced/webdr03/2013/8/7/10/enhanced-buzz-25813-1375885241-14.jpg');
-- INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Maru', 3, true, 'http://s3-ec.buzzfed.com/static/enhanced/webdr03/2013/8/7/10/enhanced-buzz-25813-1375885241-14.jpg');
-- INSERT INTO kittens (name, age, is_cute, image_url) VALUES ('Hamilton', 9, true, 'http://s3-ec.buzzfed.com/static/enhanced/webdr06/2013/8/7/12/enhanced-buzz-15588-1375894490-20.jpg');

UPDATE kittens SET owner_id = 3 WHERE id = 3;
UPDATE kittens SET owner_id = 4 WHERE id = 4;
UPDATE kittens SET owner_id = 5 WHERE id = 5;
UPDATE kittens SET owner_id = 6 WHERE id = 6;
UPDATE kittens SET owner_id = 7 WHERE id = 7;
UPDATE kittens SET owner_id = 8 WHERE id = 8;
UPDATE kittens SET owner_id = 9 WHERE id = 9;
UPDATE kittens SET owner_id = 10 WHERE id = 10;
