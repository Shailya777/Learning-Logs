use moviesdb;
select database();

-- List Movies with All it's Actors (in a single row):
select m.title, group_concat(a.name separator ' | ') as actors
from movies m join movie_actor ma
on (m.movie_id = ma.movie_id)
join actors a
on (a.actor_id = ma.actor_id)
group by m.movie_id;

-- List All Actors with All Movies they are in (in a single row):
select 
	a.name, 
    group_concat(m.title separator ' | ') as movies,
    count(m.title) as movie_count
from movies m join movie_actor ma
on (m.movie_id = ma.movie_id)
join actors a
on (a.actor_id = ma.actor_id)
group by a.actor_id
order by movie_count desc;

-- Generate a report of all Hindi movies sorted by their revenue amount in millions.
-- Print movie name, revenue, currency, and unit.
select * from movies;
select * from financials;
select * from languages;

select m.title,
		case
			when unit = 'thousands' then round((revenue / 1000),2)
            when unit = 'millions' then revenue
            when unit = 'billions' then round((revenue * 1000), 2)
        end as revenue_millions,
		 f.currency, f.unit
from movies m join financials f
on (m.movie_id = f.movie_id)
join languages l
on (m.language_id = l.language_id)
where l.name = 'hindi'
order by revenue_millions desc;