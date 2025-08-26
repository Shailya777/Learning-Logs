-- Write a query for the below scenario.
-- The supply chain business manager wants to see which customers’ forecast 
-- accuracy has dropped from 2020 to 2021. 
-- Provide a complete report with these columns: 
-- customer_code, customer_name, market, forecast_accuracy_2020, forecast_accuracy_2021.

create temporary table forecast_acc_2020
with cte1 as
(
select
	s.customer_code,
    c.customer as customer_name,
    c.market,
    sum(forecast_quantity - sold_quantity) as net_error,
    sum(forecast_quantity - sold_quantity)*100 / sum(forecast_quantity) as net_error_pct,
    sum(abs(forecast_quantity - sold_quantity)) as abs_error,
    sum(abs(forecast_quantity - sold_quantity))*100 / sum(forecast_quantity) as abs_error_pct
from fact_act_est s
join dim_customer c
using (customer_code)
where s.fiscal_year = 2020
group by s.customer_code    
)
select
	*,
    if (abs_error_pct > 100, 0, 100-abs_error_pct) as forecast_accuracy
from cte1;
-----------------------------------------------------------------------
create temporary table forecast_acc_2021
with cte2 as
(
select
	s.customer_code,
    c.customer as customer_name,
    c.market,
    sum(forecast_quantity - sold_quantity) as net_error,
    sum(forecast_quantity - sold_quantity)*100 / sum(forecast_quantity) as net_error_pct,
    sum(abs(forecast_quantity - sold_quantity)) as abs_error,
    sum(abs(forecast_quantity - sold_quantity))*100 / sum(forecast_quantity) as abs_error_pct
from fact_act_est s
join dim_customer c
using (customer_code)
where s.fiscal_year = 2021
group by s.customer_code    
)
select
	*,
    if (abs_error_pct > 100, 0, 100-abs_error_pct) as forecast_accuracy
from cte2;

select * from forecast_acc_2021;
-----------------------------------------------------------------------

select
	x.customer_code,
    x.customer_name,
    x.market,
    x.forecast_accuracy as forecast_accuracy_2020,
    y.forecast_accuracy as forecast_accuracy_2021
from forecast_acc_2020 x
join forecast_acc_2021 y
using (customer_code, customer_name, market);