USE codeup_test_db;
select 'all albums' AS 'description';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
select 'all albums' AS 'description';
SELECT sales FROM albums;


select 'All albums released before 1980' AS 'description';
SELECT record_name FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = 1800 WHERE release_date < 1980 ;
select 'Move all the albums before 1980 back to the 1800s' AS 'description';
SELECT release_date from albums;


select 'All albums by Michael Jackson' AS 'description';
SELECT record_name FROM albums WHERE artist_name = 'Michael Jackson';
UPDATE albums SET artist_name = 'Peter Jackson' WHERE artist_name = 'Michael Jackson';
select 'Change ''Michael Jackson'' to ''Peter Jackson''' AS 'description';
SELECT artist_name FROM albums;

