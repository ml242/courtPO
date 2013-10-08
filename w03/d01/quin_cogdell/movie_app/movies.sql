CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    title VARCHAR,
    year INTEGER,
    rated VARCHAR,
    released DATE,
    runtime VARCHAR,
    genre VARCHAR,
    writer VARCHAR,
    actors VARCHAR,
    plot TEXT,
    poster VARCHAR,
    imdbRating NUMERIC,
    imdbVotes INTEGER,
    imdbID VARCHAR UNIQUE
);