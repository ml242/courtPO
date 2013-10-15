
CREATE DATABASE photos_db;


CREATE TABLE photos(
  id SERIAL PRIMARY KEY,
  author VARCHAR,
  photo_url TEXT,
  date_taken DATE);



INSERT INTO photos(author, photo_url, date_taken) VALUES ('dr.foo', 'http://placekitten.com/200/300', '2013-10-09');
