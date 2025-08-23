delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_gross_sales`(
	c_codes text
)
BEGIN
	select
		s.date,
        sum(round(s.sold_quantity * g.gross_price,2)) as monthly_sales
	from fact_sales_monthly s
    join fact_gross_price g
    on (s.product_code = g.product_code
		and
		get_fiscal_year(s.date) = g.fiscal_year)
	where find_in_set(s.customer_code, c_codes) > 0
    group by s.date;
END$$

---------------------------------------------------------------------
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge`(
	in market varchar(45),
    in fiscal_year year,
    out badge varchar(10)
    )
BEGIN
	declare quantity int default 0;
    
    # Set Default Market and fiscal_year:
    if market is null or market = '' then
		set market = 'India';
	end if;
    
    if fiscal_year is null then
		set fiscal_year = 2020;
	end if;
    
    # Retrieve Total Quantity for a Market for Given year:
	select
		sum(s.sold_quantity) into quantity
	from fact_sales_monthly s
	join dim_customer c
	on (s.customer_code = c.customer_code)
	where get_fiscal_year(s.date) = fiscal_year
		and
		c.market = market
	group by c.market;
    
    # Determining Market Badge:
    if quantity > 5000000 then
		set badge = 'Gold';
	else
		set badge = 'Silver';
	end if;
    
END$$