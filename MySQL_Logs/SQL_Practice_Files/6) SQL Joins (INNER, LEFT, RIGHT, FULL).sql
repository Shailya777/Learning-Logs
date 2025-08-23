select * from movies;
select * from financials;

-- Natural Join:
select movie_id, budget, revenue, currency, unit
from movies natural join financials;

-- Using Clause:
select movie_id, budget, revenue, currency, unit
from movies join financials
using (movie_id);

-- Inner Join:
select m.movie_id, title, budget, revenue, currency, unit
from movies m join financials f
on m.movie_id = f.movie_id;

-- Left Join:
select m.movie_id, m.title, f.budget, f.revenue, f.currency, f.unit
from movies m left join financials f
on m.movie_id = f.movie_id;

-- Right Join:
select f.movie_id, m.title, f.budget, f.revenue, f.currency, f.unit
from movies m right join financials f
on m.movie_id = f.movie_id;

-- Full Join:
select m.movie_id, m.title, f.budget, f.revenue, f.currency, f.unit
from movies m left join financials f
on m.movie_id = f.movie_id

union

select f.movie_id, m.title, f.budget, f.revenue, f.currency, f.unit
from movies m right join financials f
on m.movie_id = f.movie_id;

-- Show all the movies with their language names.
select * from movies;
select * from languages;

select movie_id, title, name
from movies join languages
using (language_id);

--  Show all Telugu movie names (assuming you don't know the language id for Telugu).
select movie_id, title, name
from movies join languages
using (language_id)
where name = 'telugu';

-- Show the language and number of movies released in that language.
select l.language_id, l.name, count(m.movie_id) as 'number of movies'
from languages l join movies m
on (l.language_id = m.language_id)
group by language_id;