CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  year INTEGER,
  type VARCHAR DEFAULT 'movie',
  genre VARCHAR,
  runtime VARCHAR,
  release_date VARCHAR,
  director TEXT,
  writer TEXT,
  actors TEXT,
  plot TEXT
);
