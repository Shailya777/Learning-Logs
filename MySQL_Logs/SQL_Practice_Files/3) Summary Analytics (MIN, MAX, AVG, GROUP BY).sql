use moviesdb;

select count(*) from movies
where industry = 'bollywood';

select max(imdb_rating) from movies
where industry = 'bollywood';

select min(imdb_rating) from movies
where industry = 'hollywood';

select avg(imdb_rating) from movies
where studio = 'marvel studios';

select round(avg(imdb_rating), 2) from movies
where studio = 'marvel studios';

select round(avg(imdb_rating), 2) as avg_rating
from movies
where studio = 'marvel studios';

select min(imdb_rating) as min_rating,
		max(imdb_rating) as max_rating,
		avg(imdb_rating) as avg_rating
from movies
where studio = 'marvel studios';

select industry, count(*)
from movies
group by industry;

select studio, count(*)
from movies
group by studio;

select studio, count(*) as count
from movies
group by studio
order by count desc;

select industry, count(industry),
		round(avg(imdb_rating), 2) as avg_rating
from movies
group by industry;

select studio,
		count(studio) as count,
        round(avg(imdb_rating), 2) as avg_rating
from movies
group by studio
order by avg_rating desc;

-- How many movies were released between 2015 and 2022.
select count(*) from movies
where release_year between 2015 and 2022;

-- Print the max and min movie release year.
select max(release_year) as max,
		min(release_year) as min
from movies;

-- Print each year along with the number of movies released in that year, starting from the most recent year.
select release_year, count(*) as count
from movies
group by release_year
order by release_year desc;