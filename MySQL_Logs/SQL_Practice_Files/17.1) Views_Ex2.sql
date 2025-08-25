select
	s.date,
    s.fiscal_year,
    s.customer_code,
    c.customer,
    c.market,
    s.product_code,
    p.product,
    p.variant,
    s.sold_quantity,
    g.gross_price as gross_price_per_item,
    round(s.sold_quantity * g.gross_price,2) as gross_price_total
from fact_sales_monthly s
join dim_customer c
on (s.customer_code = c.customer_code)
join dim_product p
on (s.product_code = p.product_code)
join fact_gross_price g
on (s.fiscal_year = g.fiscal_year
	and
    s.product_code = g.product_code);