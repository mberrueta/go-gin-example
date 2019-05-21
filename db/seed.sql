\connect go_gin_example_db

-- TODO: Pass should be encrypted DON'T DO THIS!
INSERT INTO blog_auth (id, username, password) VALUES ('1', 'test', 'test123');