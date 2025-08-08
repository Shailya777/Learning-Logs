select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- AVG (Average) Function:

select * from people;

select avg(age) from people;

select avg(age) from people
where country = 'US';

select * from employees;

select avg(salary) from employees;

-------------------------------------------------------------
-- COUNT Function:
select * from people;

select count(*) from people;

select count(name) from people;

select count(country) from people;

select count(distinct(country)) from people;

select count(*) from people
where country = 'IND';

select count(*) from people
where age < 30;

-------------------------------------------------------------
-- GROUP BY Clause:

select * from employees;

alter table employees
add department varchar(30);

select * from employees;

describe employees;

update employees
set department = 'IT'
where id in (1,2);

select * from employees;

update employees
set department = 'HR'
where id in (3,4);

select * from employees;

select department, count(*)
from employees
group by department;

select department, sum(salary)
from employees
group by department;

select department, sum(salary), avg(salary), count(*)
from employees
group by department;

select * from people;

select country, count(*) from people
group by country;

select country, avg(age) as avg_age from people
group by country;

-------------------------------------------------------------
-- MIN and MAX Function:

select * from employees;

select min(salary) from employees;

select department, min(salary) from employees
group by department;


select max(salary) from employees;

select department, max(salary) from employees
group by department;

-------------------------------------------------------------
-- SUM Function:

select * from employees;

select sum(salary) from employees;

select department, sum(salary) from employees
group by department;

-------------------------------------------------------------
-- GROUP BY Clause on Multiple Columns:

create table transactions (
							id int primary key auto_increment,
                            product_name varchar(50),
                            region varchar(30),
                            quantity int
                            );
                            
describe transactions;

insert into transactions(product_name, region, quantity)
values
('Laptop', 'North', 5),
('Laptop', 'South', 7),
('Phone', 'North', 10),
('Phone', 'South', 8),
('Laptop', 'North', 6);

select * from transactions;

select region, sum(quantity) from transactions
group by region;

select product_name, region, sum(quantity) from transactions
group by product_name, region;