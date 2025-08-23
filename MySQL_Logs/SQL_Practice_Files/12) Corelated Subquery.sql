-- Select actor id, actor name and number of movies they have acted in:

select * from movies;
select * from actors;
select * from movie_actor;

-- 1) using Join and Group by:
select ma.actor_id, a.name, count(*) as movies_count
from movie_actor ma
join actors a
on (ma.actor_id = a.actor_id)
group by actor_id
order by movies_count desc;

-- 2) Using Correlated Sub Query:
select count(*) from movie_actor
where actor_id = 51;

select 
	actor_id,
    name, 
    (select count(*) from movie_actor 
    where actor_id = actors.actor_id) as movies_count 
from actors
order by movies_count desc;

--  Select all the movies with minimum and maximum release_year.
-- (Note that there can be more than one movie in min and a max year hence output rows can be more than 2)
select * from movies;

select * from movies
where release_year in ((select min(release_year) from movies),
						(select max(release_year) from movies));

--  Select all the rows from the movies table whose imdb_rating is higher than the average rating.
select * from movies
where imdb_rating > (select avg(imdb_rating) from movies);