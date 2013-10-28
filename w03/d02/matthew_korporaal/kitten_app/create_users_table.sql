CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  favorite_food VARCHAR,
  github VARCHAR
);

CREATE TABLE houses (
id SERIAL PRIMARY KEY,
  name VARCHAR,
  house_id INTEGER,
  image_url VARCHAR);

INSERT INTO houses (name, image_url) VALUES ('Hufflepuff', 'http://www.hp-lexicon.org/images/icons/200x240xshield_huf.jpg.pagespeed.ic.X0J42SGCOS.jpg');
INSERT INTO houses (name, image_url) VALUES ('Ravenclaw', 'http://the-leaky-cauldron.org/wiki/images/5/55/Ravenclaw.jpg');
INSERT INTO houses (name, image_url) VALUES ('Gryffindor', 'http://images1.wikia.nocookie.net/__cb20130130004310/pottermore/images/4/43/Gryffindor_LeviosaEye30794.gif');
INSERT INTO houses (name, image_url) VALUES ('Slytherin', 'http://www.wikihow.com/images/2/28/Slytherincrest-jpg..jpg');


