CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  imdbID VARCHAR,
  title VARCHAR,
  year VARCHAR,
  rated VARCHAR,
  released VARCHAR,
  runtime VARCHAR,
  genre VARCHAR,
  director VARCHAR,
  writer VARCHAR,
  actors VARCHAR,
  plot TEXT,
  poster_link TEXT DEFAULT 'Not Available'
);

INSERT INTO movies(imdbID, title, year, rated, released, runtime, genre, director, writer, actors, plot, poster_link) VALUES ('tt0448134','Sunshine','2007','R','05 Apr 2007', '1 h 47 min','Adventure, Sci-Fi, Thriller','Danny Boyle','Alex Garland', 'Cillian Murphy, Rose Byrne, Chris Evans, Michelle Yeoh','A team of astronauts are sent to re-ignite the dying sun 50 years into the future.','http://ia.media-imdb.com/images/M/MV5BMTU5Nzg2OTk2NF5BMl5BanBnXkFtZTYwNTc1ODM3._V1_SX300.jpg')