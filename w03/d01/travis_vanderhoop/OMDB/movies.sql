CREATE TABLE movies(
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  year INTEGER NOT NULL,
  rated VARCHAR,
  released VARCHAR,
  runtime VARCHAR,
  genre VARCHAR,
  director VARCHAR,
  writer VARCHAR,
  actors VARCHAR,
  plot TEXT

);
