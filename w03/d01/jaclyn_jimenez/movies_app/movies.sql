CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  year INTEGER,
  type VARCHAR DEFAULT 'movie',
  genre VARCHAR,
  runtime VARCHAR,
  release_date VARCHAR,
  director VARCHAR,
  writer VARCHAR,
  actors VARCHAR,
  plot TEXT
);

-- http://www.omdbapi.com/?i=tt0087451
-- psql -d movies_db -f movies.sql
