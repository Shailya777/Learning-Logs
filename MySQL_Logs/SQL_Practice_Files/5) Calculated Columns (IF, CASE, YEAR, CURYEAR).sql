use moviesdb;

select curdate();

select year(curdate());

select * from actors;

select *, year(curdate()) - birth_year as age
from actors;

select * from financials;

select *, revenue - budget as profit
from financials;

-- Converting Revenue into INR:
select *,
		if(currency = 'USD', revenue * 87, revenue) as revenue_inr
from financials;

select distinct unit
from financials;

-- Converting Units into Millions:
select *,
	case
		when unit = 'thousands' then revenue/1000
		when unit = 'billions' then revenue*1000
		else revenue
	end as revenue_millions
from financials;

-- Converting Budget, Revenue into Billions of INR:
select *,
	case
		when unit = 'billions' and currency = 'USD' then budget * 87
        when unit = 'millions' and currency = 'USD' then (budget / 1000) * 87
        when unit = 'billions' and currency = 'INR' then budget
        when unit = 'millions' and currency = 'INR' then budget / 1000
		when unit = 'thousands' and currency = 'INR' then budget / 1000000
    end as budget_INR_Billions,
    
    case
		when unit = 'billions' and currency = 'USD' then revenue * 87
        when unit = 'millions' and currency = 'USD' then (revenue / 1000) * 87
        when unit = 'billions' and currency = 'INR' then revenue
        when unit = 'millions' and currency = 'INR' then revenue / 1000
		when unit = 'thousands' and currency = 'INR' then revenue / 1000000
    end as revenue_INR_Billions
    
from financials;

-- Print profit % for all the movies.
select *,
	revenue - budget as profit,
    (revenue - budget) * 100 / budget as profit_perc
from financials;