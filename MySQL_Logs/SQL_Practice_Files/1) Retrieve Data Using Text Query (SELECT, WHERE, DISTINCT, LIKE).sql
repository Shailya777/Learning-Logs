use moviesdb;

select * from movies;

select * from movies
where industry = 'Bollywood';

select count(*) from movies
where industry = 'Bollywood';

select count(*) from movies
where industry = 'Hollywood';

select * from movies
where industry = 'Hollywood';

select distinct industry from movies;

select * from movies
where title like 'THOR%';

select * from movies
where title like '%america%';

select * from movies
where studio = '';

-- Print all movie titles and release year for all Marvel Studios movies.
select * from movies;

select title, release_year from movies
where studio = 'Marvel Studios';

-- Print all movies that have Avenger in their name.
select * from movies
where title like '%avenger%';

-- Print the year when the movie "The Godfather" was released.
select release_year from movies
where title = 'The Godfather';

-- Print all distinct movie studios in the Bollywood industry.
select * from movies;

select distinct studio from movies
where industry = 'Bollywood';