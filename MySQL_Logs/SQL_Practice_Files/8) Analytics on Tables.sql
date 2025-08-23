use moviesdb;
select database();

-- List Bollywood Movoies with their Financial Information and Profit in Decreasing Order.
select m.movie_id, title, budget, revenue, currency, unit,
		case
			when unit = 'thousands' then round((revenue - budget) / 1000, 2)
            when unit = 'millions' then round((revenue - budget),2)
            when unit = 'billions' then round((revenue - budget) * 1000, 2)
        end as profit_millions
from movies m join financials f
on (m.movie_id = f.movie_id)
where industry = 'bollywood'
order by profit_millions desc;