CREATE TABLE kittens (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  is_cute BOOLEAN DEFAULT true,
  img_url VARCHAR
  );