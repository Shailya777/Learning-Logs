with cte1 as
(select
	c.customer,
    round(sum(n.net_sales / 1000000),2) as net_sales_millions
	from net_sales n
	join dim_customer c
	on (n.customer_code = c.customer_code)
	where fiscal_year = 2021
	group by c.customer
	order by net_sales_millions desc)
  
select 
	*,
    net_sales_millions*100/sum(net_sales_millions) over() as pct
from cte1;
---------------------------------------------------------------------------------------------------
with cte2 as
(    
select
	c.customer,
    c.region,
    round(sum(n.net_sales / 1000000),2) as net_sales_millions
	from net_sales n
	join dim_customer c
	on (n.customer_code = c.customer_code)
	where fiscal_year = 2021
	group by c.customer, c.region
)
select
	*,
    net_sales_millions * 100 / sum(net_sales_millions) over(partition by region) as pct_share_region
from cte2
order by region, net_sales_millions desc;