select * from expenses
order by category;

select sum(amount) from expenses; #65800

select
	*,
    amount * 100 / sum(amount) over() as pct
from expenses
order by category;

select
	*,
    amount * 100 / sum(amount) over(partition by category) as pct
from expenses
order by category;

----------------------
select * from expenses
order by category, date;

select
	*,
    sum(amount) over(partition by category order by date) as total_expense_till_date
from expenses
order by category, date;
