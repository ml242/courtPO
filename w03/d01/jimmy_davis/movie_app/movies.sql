-- The movies table should contain all of the attributes that display in your movie's show page.
-- Show the movie's Title, Year, Rated, Released, Runtime, Genre, Director, Writer, Actors and Plot

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  year INTEGER,
  rated VARCHAR,
  released VARCHAR,
  runtime VARCHAR,
  genre TEXT,
  director VARCHAR,
  writer VARCHAR,
  actors VARCHAR,
  plot TEXT
);
