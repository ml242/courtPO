CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  year INTEGER,
  rated VARCHAR,
  genre VARCHAR,
  director VARCHAR,
  writer VARCHAR,
  actors text,
  plot text
);


-- INSERT INTO movies (title, year, rated, genre, director, writer, actors, plot) VALUES ( etc... etc... );
