with cte1 as
(
select
	p.division,
    p.product,
    sum(sold_quantity) as total_quantity
from fact_sales_monthly s
join dim_product p
on (s.product_code = p.product_code)
where fiscal_year = 2021
group by p.division, p.product
),

cte2 as
(
select
	*,
    dense_rank() over(partition by division order by total_quantity desc) as d_rank
from cte1
)
select * from cte2
where d_rank <=3;

---------------------------------------------------------------------------------------
# Retrieve the top 2 markets in every region by their gross sales amount in FY=2021.
# market, region, gross_sales_mln, rank

select * from gross_sales;

with temp1 as
(
select
    c.market,
    c.region,
    round(sum(gross_price_total) / 1000000, 2) as gross_sales_mln
from gross_sales s
join dim_customer c
on (s.customer_code = c.customer_code)
where s.fiscal_year = 2021
group by c.region, c.market
order by gross_sales_mln desc
),

temp2 as
(
select
	*,
    dense_rank() over(partition by region order by gross_sales_mln desc) as d_rank
from temp1)

select * from temp2
where d_rank <= 2;
