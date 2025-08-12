select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- OVER Clause:

select * from employees;

INSERT INTO employees (name, age, salary, department) VALUES
('Alice Johnson', 29, 55000, 'HR'),
('Bob Smith', 35, 72000, 'Finance'),
('Charlie Lee', 42, 80000, 'Engineering'),
('Diana Wilson', 30, 60000, 'Marketing'),
('Edward Brown', 50, 95000, 'Sales'),
('Fayla Green', 28, 54000, 'IT'),
('George Harris', 40, 82000, 'Engineering'),
('Hannah Clark', 33, 67000, 'Customer Support'),
('Ivy Martinez', 26, 48000, 'Operations'),
('Jack Scott', 38, 77000, 'Finance');

select * from employees;

select department, max(salary)
from employees
group by department;

select *, max(salary)
over ()
from employees; -- Maximum Salary Over The Whole Table.

select *, max(salary)
over (partition by department)
from employees; 

select *, sum(salary)
over (partition by department)
from employees;

-------------------------------------------------------------
-- ORDER BY Clause:

select *, sum(salary) 
over (partition by department order by salary) as dept_total_salary
from employees;

select *, sum(salary) 
over (partition by department order by salary desc) as dept_total_salary
from employees;

-------------------------------------------------------------
-- ROW NUMBER Function:

select *, row_number() over()
from employees;

select *, row_number() over (partition by department) 'row_number'
from employees;

select * from (
			   select *, row_number() over (partition by department) as 'row_number'
               from employees
               ) x
where x.row_number = 1;

select *, row_number()
over(partition by department order by salary desc) as 'rank'
from employees;

insert into employees (name, age, salary, department)
values
('Anna', 29, 80000, 'Engineering');

select * from employees;

select *, row_number()
over(partition by department order by salary desc) as 'rank'
from employees;

/*
As we can see by results of above two queries,
row_number() function can be used to get Ranks
in a Window, but if two entries in same window have same values,
they will get different Ranks even when they should have
same Ranks.
See, Charlie Lee and Anna in Above Result Set.
*/

-------------------------------------------------------------
-- RANK Function:

select * from employees;

select *, rank()
over (partition by department order by salary desc) as 'Rank'
from  employees;

insert into employees (name, age, salary, department)
values
('Bruce', 31, 75000, 'Engineering');

select * from employees;

select *, rank()
over (partition by department order by salary desc) as 'Rank'
from  employees;

------------------------------------------------------------
-- DENSE_RANK Function:

select *, dense_rank()
over (partition by department order by salary desc) as 'rank'
from employees;

-------------------------------------------------------------
-- LEAD and LAG Functions:

select * from employees;

select *, lead(salary) over()
from employees;

select *, lead(salary)
over (partition by department order by salary desc) as 'Next_Sal'
from employees;

select *, lag(salary)
over (partition by department order by salary desc) as 'Prev_Sal'
from employees;

select *, lead(salary, 1, 0)
over (partition by department order by salary desc) as 'Next_Sal'
from employees;

select *, lead(salary, 2, 0)
over (partition by department order by salary desc) as 'Next_Sal'
from employees;

select *, lag(salary, 1, 'NA')
over (partition by department order by salary desc) as 'Prev_Sal'
from employees;

select *, lag(salary, 2, 'NA')
over (partition by department order by salary desc) as 'Prev_Sal'
from employees;

-------------------------------------------------------------
-- FIRST_VALUE and LAST_VALUE Function:

select *, first_value(name)
over (partition by department order by salary desc) as 'Highest'
from employees;

select *, first_value(name)
over (partition by department order by salary asc) as 'Lowest'
from employees;

select *, first_value(name)
over (partition by department order by age asc) as 'Youngest'
from employees;

select *, first_value(name)
over (partition by department order by age desc) as 'Oldest'
from employees;

----

select *, last_value(name)
over()
from employees;

select *, last_value(name)
over (partition by department)
from employees;

select *, last_value(name)
over (partition by department order by salary) as 'Highest'
from employees;
/* Above Query will give Wrong Results due to FRAMING Issues
(Default FRAME RANGE in Widow Functions).
See Topic Below for Solution.
*/

-------------------------------------------------------------
-- FRAME Clause:

/* Same as Last Query*/
select *, last_value(name)
over (partition by department order by salary
	  range between unbounded preceding and current row) as 'Highest'
from employees;

select * , last_value(name)
over (partition by department order by salary
	  range between unbounded preceding and unbounded following) as 'Highest'
from employees;

select *, last_value(name)
over (partition by department order by salary
	  rows between unbounded preceding and unbounded following) as 'Highest'
from employees;
-- Same as Previous one.

select * , sum(salary)
over (partition by department order by salary
	  rows between unbounded preceding and current row) as 'Cummulative Salary'
from employees;

select * , sum(salary)
over (partition by department order by salary
	  rows between unbounded preceding and unbounded following) as 'Department Total'
from employees;