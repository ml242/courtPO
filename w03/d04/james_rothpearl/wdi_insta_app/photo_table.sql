CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  author VARCHAR,
  img_url VARCHAR,
  date_taken DATE
  );


INSERT INTO photos (author, img_url, date_taken) VALUES ('Alex Hint', 'http://www.world-science.net/images/dog1.jpg', '2013-10-07');

http://www.world-science.net/images/dog1.jpg
