-- CREATE TABLE teachers (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR
-- );
CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  year INTEGER,
  genre VARCHAR,
  rated VARCHAR,
  released VARCHAR,
  runtime VARCHAR,
  director VARCHAR,
  writer VARCHAR,
  actors TEXT,
  plot TEXT
);


