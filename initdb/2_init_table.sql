\c blog;

CREATE TABLE author (
  id SERIAL NOT NULL,
  name TEXT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO author (name) VALUES ('t_o_d');

CREATE TABLE article (
  id SERIAL PRIMARY KEY,
  title TEXT,
  content TEXT,
  author_id INT references author(id),
  created_at TIMESTAMP
);