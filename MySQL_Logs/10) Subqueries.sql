select database();
use moviesdb;
select database();

-- Movie with highest imdb rating:
select * from movies
where imdb_rating = (select max(imdb_rating) from movies);

-- Movie with minimum imdb rating:
select * from movies
where imdb_rating = (select min(imdb_rating) from movies);

-- Sub Query returning list of values:
-- Movies with highest and lowest imdb rating:
select * from movies
where imdb_rating in ((select max(imdb_rating) from movies),
					  (select min(imdb_rating) from movies));
                      
-- Sub Query Returning a Table:
-- Select all actors with age > 70 and age < 85
select * from actors;

select * from
			(select *, year(curdate()) - birth_year as age
			from actors) as actors_age
where age > 70 and age < 85;