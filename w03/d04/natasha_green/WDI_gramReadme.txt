CREATE DATABASE wdigram_db;

CREATE TABLE entries(
  id SERIAL PRIMARY KEY,
  author VARCHAR,
  photo VARCHAR,
  photo_taken DATE
  );

