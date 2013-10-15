CREATE TABLE programmers (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  twitter_username VARCHAR,
  twitter_pic VARCHAR
  );

ALTER TABLE programmers ADD COLUMN github_username VARCHAR;