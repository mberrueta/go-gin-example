DROP DATABASE IF EXISTS go_gin_example_db;
CREATE DATABASE go_gin_example_db;

\connect go_gin_example_db

----------------------------------------------------------------------
-- Tables
----------------------------------------------------------------------

DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS auths;
DROP TABLE IF EXISTS tags;

-- TODO: Pass should be DIGEST!
CREATE TABLE auths (
  id                        SERIAL PRIMARY KEY,
  username                  CHARACTER VARYING(50),
  password                  CHARACTER VARYING(50)
);

CREATE TABLE tags (
  id                        SERIAL PRIMARY KEY,
  name                      CHARACTER VARYING(100),
  created_on                DATE,
  created_by                CHARACTER VARYING(100),
  modified_on               DATE,
  modified_by               CHARACTER VARYING(100),
  deleted_on                DATE,
  state                     INT
);

CREATE TABLE articles
(
  id                        SERIAL PRIMARY KEY,
  tag_id                    INT,
  title                     CHARACTER VARYING(100),
  description               CHARACTER VARYING(200),
  content                   CHARACTER VARYING(400),
  cover_image_url           CHARACTER VARYING(200),
  created_on                DATE,
  created_by                CHARACTER VARYING(100),
  modified_on               DATE,
  modified_by               CHARACTER VARYING(100),
  deleted_on                DATE,
  state                     INT,
  FOREIGN KEY (tag_id) REFERENCES tags(id)
);
