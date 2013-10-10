-- CREATE TABLE items (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR,
--   wishlist_id INTEGER
-- );

-- CREATE TABLE wishlists (
--   ID SERIAL PRIMARY KEY,
--   name VARCHAR,
--   description TEXT
-- );

INSERT INTO wishlists (name, description) VALUES ('xmas list', 'stuff for xmas');
INSERT INTO wishlists (name, description) VALUES ('band stuff', 'stuff for the band');
INSERT INTO wishlists (name, description) VALUES ('Larp club', 'with my imaginary friends');
INSERT INTO items (name, wishlist_id) VALUES ('banana republic gift card', 1);
INSERT INTO items (name, wishlist_id) VALUES ('drums', 2);
INSERT INTO items (name, wishlist_id) VALUES ('axe', 3);
INSERT INTO items (name, wishlist_id) VALUES ('guitar', 1);
INSERT INTO items (name, wishlist_id) VALUES ('tool kit', 2);
INSERT INTO items (name, wishlist_id) VALUES ('mixer', 3);
