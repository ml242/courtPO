CREATE TABLE programmers (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  twitter_pic VARCHAR,
  twitter_username VARCHAR
  );

COPY programmers(name, twitter_username, twitter_pic) FROM 'programmers.csv' DELIMITER ',' CSV;
