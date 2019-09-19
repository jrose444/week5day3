DROP TABLE IF EXISTS cattoys;
DROP TABLE IF EXISTS cats;
DROP TABLE IF EXISTS toys;

CREATE TABLE cats (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    color VARCHAR(255),
    breed VARCHAR(255)
);

CREATE TABLE toys (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    color VARCHAR(255),
    price INT
);

CREATE TABLE cattoys(
    id SERIAL PRIMARY KEY,
    cat_id INTEGER,
    toy_id INTEGER,

    FOREIGN KEY (cat_id) REFERENCES cats(id),
    FOREIGN KEY (toy_id) REFERENCES toys(id)
);

INSERT INTO
  cats
  (name, color, breed)
  VALUES
  ('Jack', 'Red', 'Pug');
INSERT INTO
  cats
  (name, color, breed)
  VALUES
  ('Jackie', 'Orange', 'Chow Chow');
INSERT INTO
  cats
  (name, color, breed)
  VALUES
  ('Hal', 'White', 'Pug');
INSERT INTO
  cats
  (name, color, breed)
  VALUES
  ('Paul', 'Red', 'Chow Chow');
INSERT INTO
  cats
  (name, color, breed)
  VALUES
  ('James', 'Black', 'Chow Chow')
  ;

--   CREATE TABLE toys (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255),
--     color VARCHAR(255),
--     price INT
-- );

INSERT INTO
toys
(name, color, price)
VALUES
('ball', 'orange', 3);

INSERT INTO
toys
(name, color, price)
VALUES
('stick', 'brown', 1);

INSERT INTO
toys
(name, color, price)
VALUES
('string', 'white', 1);

INSERT INTO
toys
(name, color, price)
VALUES
('scratching_post', 'gray', 10);

INSERT INTO
toys
(name, color, price)
VALUES
('ball', 'red', 3);

INSERT INTO
cattoys
(cat_id, toy_id)
VALUES
((1), (1));

INSERT INTO
cattoys
(cat_id, toy_id)
VALUES
((2), (2));

INSERT INTO
cattoys
(cat_id, toy_id)
VALUES
((3), (3));

INSERT INTO
cattoys
(cat_id, toy_id)
VALUES
((4), (4));

INSERT INTO
cattoys
(cat_id, toy_id)
VALUES
((5), (5));