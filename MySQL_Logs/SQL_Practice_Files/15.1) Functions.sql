DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_quarter`(
					calender_date date
                    ) RETURNS char(2) CHARSET utf8mb4
    DETERMINISTIC
begin
	declare fiscal_quarter char(2);
    if month(calender_date) in (9,10, 11)
    then set fiscal_quarter = 'Q1';
	
    elseif month(calender_date) in (12, 1, 2)
	then set fiscal_quarter = 'Q2';
	
    elseif month(calender_date) in (3, 4, 5)
	then set fiscal_quarter = 'Q3';
	
    else set fiscal_quarter = 'Q4';
        
    end if;
    
    return fiscal_quarter;
end$$

--------------------------------------------------------------------
CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_year`(
				calender_date date
) RETURNS int
    DETERMINISTIC
BEGIN
	declare fiscal_year int;
	set fiscal_year = year(date_add(calender_date, interval 4 month));
	return fiscal_year;
END$$

