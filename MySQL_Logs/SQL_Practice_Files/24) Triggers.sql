delimiter $$

CREATE DEFINER=`root`@`localhost` TRIGGER `fact_sales_monthly_AFTER_INSERT` AFTER INSERT ON `fact_sales_monthly` FOR EACH ROW BEGIN
	insert into fact_act_est 
    (date, 
    product_code, 
    customer_code, 
    sold_quantity)
	values
    (new.date,
    new.product_code,
    new.customer_code,
    new.sold_quantity)
    on duplicate key update
		sold_quantity = values(new.sold_quantity);
END$$

-------------------------
CREATE DEFINER=`root`@`localhost` TRIGGER `fact_forecast_monthly_AFTER_INSERT` AFTER INSERT ON `fact_forecast_monthly` FOR EACH ROW BEGIN
	insert into fact_act_est
    (date, 
    product_code,
    customer_code,
    forecast_quantity)
    values
    (new.date,
    new.product_code,
    new.customer_code,
    new.forecast_quantity)
    on duplicate key update
		forecast_quantity = values(new.forecast_quantity);
END$$