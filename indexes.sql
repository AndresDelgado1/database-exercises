USE codeup_test_db;
ALTER TABLE albums
ADD UNIQUE (artist_name, record_name);
describe albums;