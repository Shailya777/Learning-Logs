with forecast_error as
(
select
	s.customer_code,
    c.customer,
    c.market,
    sum((forecast_quantity - sold_quantity)) as net_error,
    sum((forecast_quantity - sold_quantity))*100 / sum(forecast_quantity) as net_error_pct,
    sum(abs(forecast_quantity - sold_quantity)) as abs_error,
    sum(abs(forecast_quantity - sold_quantity))*100 / sum(forecast_quantity) as abs_error_pct
    
from fact_act_est s
join dim_customer c
using (customer_code)
where s.fiscal_year = 2021
group by customer_code
)
select
	*,
    if (abs_error_pct > 100, 0, (100- abs_error_pct)) as forecast_accuracy
from forecast_error
order by forecast_accuracy;
    