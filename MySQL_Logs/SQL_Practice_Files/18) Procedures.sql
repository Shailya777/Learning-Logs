Delimiter $$
-- Procedure 1:
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_customers_by_net_sales`(
	in_market varchar(45),
    in_fiscal_year int,
    in_top_n int)
BEGIN
	select
	c.customer,
    round(sum(n.net_sales / 1000000),2) as net_sales_millions
	from net_sales n
	join dim_customer c
	on (n.customer_code = c.customer_code)
	where fiscal_year = in_fiscal_year and n.market = in_market
	group by c.customer
	order by net_sales_millions desc
    limit in_top_n;
END$$

----------------------------------------------------------------------------------------------
-- Procedure 2:
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_markets_ny_net_sales`(
		in_fiscal_year int,
        in_top_n int)
BEGIN
	select
	market,
    round(sum(net_sales / 1000000),2) as net_sales_millions
	from net_sales
	where fiscal_year = in_fiscal_year
	group by market
	order by net_sales_millions desc
    limit in_top_n;
END$$

-----------------------------------------------------------------------------------------------------
-- Procedure 3:
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_products_by_net_sales`(
	in_fiscal_year int,
    in_top_n int)
BEGIN
            select
                 product,
                 round(sum(net_sales)/1000000,2) as net_sales_mln
            from net_sales
            where fiscal_year= in_fiscal_year
            group by product
            order by net_sales_mln desc
            limit in_top_n;
END$$

