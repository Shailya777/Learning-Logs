select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- Creating a Procedure:

delimiter $$
create procedure getAllEmployees()
begin
	select * from employees;
end $$

delimiter ;
call getAllEmployees();

-------------------------------------------------------------
-- Procedure with A Parameter:

delimiter $$
create procedure getEmployee(in employee_id int)
begin
	select * from employees
    where id = employee_id;
end $$

delimiter ;
call getEmployee(1);
call getEmployee(2);
call getEmployee(12);
call getEmployee(16);

-------------------------------------------------------------
-- Procedure with Multiple Parameters:

delimiter $$
create procedure addEmployee (in emp_name varchar(50),
							  in emp_age int,
                              in emp_salary int,
                              in emp_department varchar(50))
begin
	insert into employees (name, age, salary, department)
    values (emp_name, emp_age, emp_salary, emp_department);
end $$

call addEmployee('Procedure_name', 29, 98000, 'IT') $$

select * from employees $$

call addEmployee('Procedure_name 1', 49, 380000, 'IT') $$

select * from employees $$

-------------------------------------------------------------
-- Procedure with OUTPUT Parameter:

delimiter $$

create procedure totalSalaryByDept (in dept_name varchar(50),
									out total int)
begin
	select sum(salary) into total from employees
    where department = dept_name;
end $$

call totalSalaryByDept ('IT', @total)$$
select @total$$

call totalSalaryByDept ('HR', @total)$$
select @total$$

call totalSalaryByDept ('Engineering', @total)$$
select @total$$

-------------------------------------------------------------
-- Procedure with INOUT Parameter:

delimiter $$

create procedure addTax (inout product_price int,
						in tax_percent decimal)
begin
	set product_price = product_price + (product_price * tax_percent/100);
end $$

set @product_price = 100$$
call addTax(@product_price, 10)$$
select @product_price$$

set @product_price = 500$$
call addTax(@product_price, 18)$$
select @product_price$$

-------------------------------------------------------------
-- Managing Stored Procedures:

show procedure status where db = 'socialdb';

show create procedure addtax;

drop procedure addTax;

show procedure status where db = 'socialdb';

-------------------------------------------------------------
-- Creating a Stored Function:

delimiter $$

create function calculate_price (item_price decimal, tax_rate decimal)
returns decimal
deterministic
begin
	set item_price = item_price + (item_price * tax_rate / 100);
    return item_price;
end $$

select calculate_price(100, 10)$$
select calculate_price(230.50, 16.79)$$
select calculate_price(500.50, 22.5)$$

select * from cart$$
select id, item_name, item_price,
	   calculate_price(item_price, 12) as final_price
from cart$$

-------------------

create function getInitials (name varchar(50))
returns varchar(3)
deterministic
begin
	return upper(substr(name, 1, 3));
end $$

select getInitials('Shailya')$$
select getInitials('Bruce')$$

select * from people$$

select *, getInitials(name) as initials
from people$$

-------------------------------------------------------------
-- Handling Null Values in Stored Functions:

delimiter $$

create function applyDiscount (product_price int, discount int)
returns decimal
deterministic
begin
	return (product_price - (product_price * discount /100));
end $$

select applyDiscount(100, 5)$$

select * from cart$$
describe cart$$
insert into cart(item_name, item_price, quantity)
values ('iPad', null, 5)$$
select * from cart$$

select item_name, item_price, 
		applyDiscount(item_price, 5) discounted_price
from cart$$

drop function applyDiscount$$

-----------

create function applyDiscount (product_price int, discount int)
returns decimal
deterministic
begin
	if product_price is null or discount is null then 
		return 0;
	else
		return product_price - (product_price * discount / 100);
	end if;
end $$

select applyDiscount(100, 10)$$
select applyDiscount(100, null)$$

select * from cart$$
select item_name, item_price,
	   applyDiscount(item_price, 10) as dicounted_price
from cart$$