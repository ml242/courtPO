
CREATE DATABASE models_db;


CREATE TABLE models(
  id SERIAL PRIMARY KEY,
  author VARCHAR,
  photo_url TEXT,
  date_taken DATE);



INSERT INTO models(author, photo_url, date_taken) VALUES ('dr.foo', 'http://placekitten.com/200/300', '2013-10-09');
