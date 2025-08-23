use moviesdb;

-- INSERTing Records:
insert into movies
values 
	(141, 'Bahubali 3', 'Bollywood', 2030, 9.0, 
		'Arka Media Works', 2);

select * from movies;

insert into movies
	(title, industry, release_year)
values
	('Bahubali 4', 'Bollywood', 2035);

select * from movies;

insert into movies
values 
	(default, 'Bahubali 5', 'Bollywood', 2037, null, null, 2);

select * from movies;

insert into movies
	(title, industry, language_id)
values 
	('Inception 2', 'Hollywood', 5),
    ('Inception 3', 'Hollywood', 5),
    ('Inception 4', 'Hollywood', 5);

select * from movies;

--------------------------------------------------------------
-- UPDATEing Records:

update movies
set studio = 'Warner Bros. Pictures',
	release_year = 2031
where movie_id = 145;

select * from movies;

select movie_id from movies
where title like '%inception%';

update movies
set studio = 'Warner Bros. Pictures'
where movie_id in (112, 145, 146, 147);

select * from movies;

--------------------------------------------------------------
-- DELETEing Records:

delete from movies
where movie_id = 147;

select * from movies;

delete from movies
where movie_id in (141, 143, 144, 145, 146);

select * from movies;