USE codeup_test_db;
select 'all albums by Pink Floyd' AS 'description';
select record_name
from albums
where artist_name = 'Pink Floyd';

select 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'description';
SELECT release_date
FROM albums
WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';



select 'The genre for Nevermind' AS 'description';
select genre from albums where record_name = 'Nevermind';



select 'Which albums were released in the 1990s' AS 'description';
select record_name from albums where release_date between 1990 and 1999;



select 'Which albums had less than 20 million certified sales' AS 'description';
select record_name from albums where sales < 20;


select 'All the albums with a genre of "Rock"' AS 'description';
select record_name from albums where genre = 'Rock'
