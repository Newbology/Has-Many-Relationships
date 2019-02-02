DROP DATABASE has_many_blogs;
DROP USER has_many_user;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;

CREATE USER has_many_user;
CREATE DATABASE has_many_blogs OWNER has_many_user;

CREATE TABLE IF NOT EXISTS users
(
  id SERIAL,
  username VARCHAR(90) NOT NULL,
  first_name VARCHAR(90),
  last_name VARCHAR(90),
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  PRIMARY KEY (id)
)