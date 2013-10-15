DROP TABLE programmers;

CREATE TABLE programmers (
id SERIAL PRIMARY KEY,
name VARCHAR,
twitter_pic TEXT,
twitter_username VARCHAR
);

COPY programmers (name, twitter_username, twitter_pic) FROM '/Users/willsmith/ga_wdi/hw/w03/d05/will_smith/programming_app/programmers.csv'  DELIMITERS  ','  CSV;


