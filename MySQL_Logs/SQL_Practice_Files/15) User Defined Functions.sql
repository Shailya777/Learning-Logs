select database();
use gdb0041;
select database();

select * from dim_customer
where customer like '%croma%';

select * from fact_sales_monthly
where customer_code = 90002002
		and year(date) = 2021
order by date desc;

-- Converting Calender Year to Fiscal Year (Starting from Sept, ending at August):
select date_add('2020-09-01', interval 4 month);

select * from fact_sales_monthly
where customer_code = 90002002
		and
        get_fiscal_year(date) = 2021
order by date desc;

select 
	s.date,
    s.product_code,
    p.product,
    p.variant,
    s.sold_quantity,
    g.gross_price,
    round(s.sold_quantity * g.gross_price,2) as gross_price_total
from 
fact_sales_monthly s
join
dim_product p
on (s.product_code = p.product_code)
join fact_gross_price g
on (g.product_code = s.product_code and
	g.fiscal_year = get_fiscal_year(s.date))
where customer_code = 90002002
and  get_fiscal_year(date) = 2021
order by date desc;

----------------------------------------------------------------------------
select 
	s.date,
    sum(g.gross_price * s.sold_quantity) as gross_price_total
from fact_sales_monthly s
join fact_gross_price g
on (s.product_code = g.product_code)
	and (get_fiscal_year(s.date) = g.fiscal_year)
where customer_code = 90002002
group by s.date
order by s.date asc;

-----------------------------------------------------------------------------
-- Generate a yearly report for Croma India where there are two columns
-- 1. Fiscal Year
-- 2. Total Gross Sales amount In that year from Croma

select
	get_fiscal_year(s.date) as fiscal_year,
    sum(round(s.sold_quantity * g.gross_price, 2)) as yearly_total
from fact_sales_monthly s
join fact_gross_price g
on (s.product_code = g.product_code
	and
	get_fiscal_year(s.date) = g.fiscal_year)
where customer_code = 90002002
group by get_fiscal_year(s.date)
order by get_fiscal_year(s.date) asc;