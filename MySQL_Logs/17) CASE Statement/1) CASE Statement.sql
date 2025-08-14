select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- Simple CASE Statement:

select * from people;

select name, age, country, 
	   case country
			when 'US' then 'United States'
			when 'UK' then 'United Kingdom'
			when 'IND' then 'India'
			when 'AUS' then 'Australia'
			else 'Not Found'
		end as country_name
from people;

-------------------------------------------------------------
-- Searched CASE Statement:

select * from employees;

select name, age, salary,
	case
		when salary < 5000 then 'Low Salary'
        when salary between 5000 and 10000 then 'Medium Salary'
        when salary between 10000 and 50000 then 'High Salary'
        when salary > 50000 then 'Raees Log'
        else 'Undefined'
	end as 'Salary Category'
from employees;

-------------------------------------------------------------
-- Counting Number of Employees using CASE Statement:

select * from employees;

select 
	count(case when department = 'IT' then 1 end) as IT_Employees,
	count(case when department = 'HR' then 1 end) as HR_Employees,
    count(case when department = 'Accounting' then 1 end) as Accounting_Employees,
    count(case when department = 'Engineering' then 1 end) as Engineering_Employees,
    count(case when department = 'Finance' then 1 end) as Finance_Employees,
    count(case when department = 'Sales' then 1 end) as Sales_Employees,
	count(case when department = 'Marketing' then 1 end) as Marketing_Employees,
	count(case when department = 'Operations' then 1 end) as OPS_Employees,
	count(case when department = 'Customer Support' then 1 end) as CS_Employees
from employees;

-------------------------------------------------------------
-- CASE Statement in UPDATE:

select * from employees;

alter table employees
add salary_cat varchar(30);

select * from employees;

set sql_safe_updates = 0;

update employees
set salary_cat = 
		case
			when salary < 5000 then 'Low'
            when salary between 5000 and 10000 then 'Medium'
            when salary > 10000 then 'High'
            else 'NA'
		end;

select * from employees;