select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- Common Table Expressions (CTEs):

select * from employees;

with high_salary_employees
as (select id, name, age, salary, department
	from employees
    where salary > 5000
    ),
department_salaries
as (select department, sum(salary)
	from high_salary_employees
    group by department
    )
select * from department_salaries;

--

select * from employees;

select department, avg(salary) as avg_sal
from employees
group by department; 

with avg_salary_dept
as (select department, avg(salary) as avg_sal
	from employees
    group by department
    )
select name, e.salary, e.department, d.avg_sal
from employees e inner join avg_salary_dept d
on (e.department = d.department)
where e.salary > d.avg_sal
order by e.department;