CREATE TABLE projects (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  category_id INTEGER,
  funding_goal INTEGER,
  start_date INTEGER,
  end_date INTEGER
);

CREATE TABLE categories (
  id INTEGER PRIMARY KEY,
  category_name TEXT
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  age INTEGER
);

CREATE TABLE pledges (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER
);

INSERT INTO categories (id, category_name) VALUES 
(1,"music"),
(2,"books"),
(3,"charity");
