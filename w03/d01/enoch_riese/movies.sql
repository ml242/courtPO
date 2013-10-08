CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  year SMALLINT,
  rated VARCHAR,
  released VARCHAR,
  runtime VARCHAR,
  genre VARCHAR,
  writer VARCHAR,
  actors TEXT,
  plot TEXT,
  poster VARCHAR
)
