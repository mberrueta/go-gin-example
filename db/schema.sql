DROP DATABASE IF EXISTS go_gin_example_db;
CREATE DATABASE go_gin_example_db;

\connect go_gin_example_db

----------------------------------------------------------------------
-- Tables
----------------------------------------------------------------------

DROP TABLE IF EXISTS blog_article;
DROP TABLE IF EXISTS blog_auth;
DROP TABLE IF EXISTS blog_tag;

-- TODO: Pass should be DIGEST!
CREATE TABLE blog_auth (
  id                        SERIAL PRIMARY KEY,
  username                  CHARACTER VARYING(50),
  password                  CHARACTER VARYING(50)
);

CREATE TABLE blog_tag (
  id                        SERIAL PRIMARY KEY,
  name                      CHARACTER VARYING(100),
  created_on                DATE,
  created_by                CHARACTER VARYING(100),
  modified_on               DATE,
  modified_by               CHARACTER VARYING(100),
  deleted_on                DATE,
  state                     INT
);

CREATE TABLE blog_article
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
  FOREIGN KEY (tag_id) REFERENCES blog_tag(id)
);
