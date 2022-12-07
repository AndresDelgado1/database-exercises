USE codeup_test_db;
select 'Albums released after 1991' AS 'description';
-- select record_name from albums where release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;


select 'Albums with the genre disco' AS 'description';
-- select record_name from albums where genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';


select 'Albums by Metallica' AS 'description';
-- select record_name from albums where artist_name = 'Metallica';
DELETE FROM albums WHERE artist_name = 'Metallica';