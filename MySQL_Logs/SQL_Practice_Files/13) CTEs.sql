-- Get all acotrs between age of 70 and 85:

with actors_age as
		(select name, year(curdate()) - birth_year as age
        from actors)
select name, age
from actors_age
where age > 70 and age < 85;

-- Movies that produced 500% or more profit despite their rating
-- being less than average rating:

-- 1) Movies with 500% or more profit:
select * from financials;

select *, 
		(revenue - budget) * 100 / budget as pct_profit
from financials
having pct_profit >= 500;

-- 2) Movies with rating less than the average rating of all movies:
select * from movies
where imdb_rating < (select avg(imdb_rating) from movies);

-- 3) Using Sub Query:
select x.movie_id, y.title, y.imdb_rating, x.pct_profit from
			(select *, 
			(revenue - budget) * 100 / budget as pct_profit
			from financials
			having pct_profit >= 500) x
join (select * from movies
		where imdb_rating < (select avg(imdb_rating) 
							from movies)) y
on (x.movie_id = y.movie_id);

-- 4) Using CTEs:
with 
	x as 
		(select *, 
		(revenue - budget) * 100 / budget as pct_profit
		from financials
		having pct_profit >= 500),
        
	y as
		(select * from movies
		where imdb_rating < (select avg(imdb_rating) 
							from movies))

select x.movie_id, y.title, y.imdb_rating, x.pct_profit 
from x join y
on (x.movie_id = y.movie_id);

-- Select all Hollywood movies released after the year 2000 
-- that made more than 500 million $ profit or more profit. 
-- Note that all Hollywood movies have millions as a unit
-- hence you don't need to do the unit conversion. 
-- Also, you can write this query without CTE as well but 
-- you should try to write this using CTE only.

select * from movies;
select * from movies
where industry = 'Hollywood';

select * from financials;

select * from financials
where movie_id in (select movie_id from movies
					where industry = 'Hollywood');
                    
with 
	tab1 as (select movie_id, title, release_year, industry
			from movies
            where release_year >= 2000
            and industry = 'Hollywood'),
	
    tab2 as (select movie_id, budget, revenue,
					(revenue - budget) as profit
			from financials
            having profit > 500)

select 
	tab1.movie_id,
    tab1.title,
    tab1.release_year,
    tab2.budget,
    tab2.revenue,
    tab2.profit
from tab1 join tab2
on (tab1.movie_id = tab2.movie_id);
    
select movie_id, title, release_year, industry
			from movies
            where release_year >= 2000
            and industry = 'Hollywood';
select movie_id, budget, revenue,
					(revenue - budget) as profit
			from financials
            having profit > 500;

-- Benefits of CTE:
# Simple Queries.
# Query Readabiliy.
# Query Reusability, Same result set can be referenced multiple times.
# Suggest Potential candidates for Views.