CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL UNIQUE,
  image_url TEXT,
  year VARCHAR,
  type VARCHAR
);
