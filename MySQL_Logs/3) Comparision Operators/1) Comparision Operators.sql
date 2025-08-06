select database();
show databases;
use socialdb;
select database();
show tables;

-------------------------------------------------------------

-- Equal To Operator (=):
select * from people;

select * from people
where age = 25;

select * from people
where location = "IND";

select * from people
where name = "Jake";

-------------------------------------------------------------

-- Not Equal To Operator (!= or <>):

select * from people
where location != "US";
-- OR
select * from people
where location <> "US";

select * from people
where location != "IND";

select * from people
where age != 25;

-------------------------------------------------------------

-- Less Than Operator (<):

select * from people
where age < 30;

select * from people
where name < "Jake";

select * from people
where name < "R";

select * from people
where name < "r";

select * from people
where name < "E";

-------------------------------------------------------------

-- Greater Than Operator (>):

select * from people;

select * from people
where age > 30;

select * from people
where location > "UK";

select * from people
where location > "IND";

select * from people
where name > "J";

select * from people
where name > "j";

-------------------------------------------------------------

-- Comparision Operators With Date:

create table sales (
					id int primary key auto_increment,
                    amount int,
                    date date
                    );
                    
describe sales;

insert into sales (amount, date) values 
(100,'2024-01-01'),
(200,'2024-02-02'),
(300,'2024-03-02'),
(400,'2024-04-02'),
(500,'2024-05-02'),
(600,'2024-06-02'),
(700,'2024-07-02'),
(800,'2024-08-02');

select * from sales;

select * from sales
where date = '2024-04-02';

select * from sales
where date < '2024-04-02';

select * from sales
where date > '2024-04-02';

select * from sales
where date = '2024'; -- Error

-------------------------------------------------------------

-- Less Than or Equal To Operator (<=):

select * from people;

select * from people
where age <= 25;

select * from people
where location <= "IND";

select * from people
where location <= "UK";

select * from people
where location <= "US";

select * from sales;

select * from sales
where date <= '2024-04-02';

select * from sales
where amount <= 500;

-------------------------------------------------------------

-- Greater Than or Equal To Operator (>=):

select * from people;

select * from people
where age >= 32;

select * from people
where location >= "IND";

select * from people
where location >= "US";

select * from sales;

select * from sales
where date >= '2024-04-02';

select * from sales
where amount >= 600;

-------------------------------------------------------------

-- Between Operator (Between.. And):

select * from people;

select * from people
where age between 18 and 25;

select * from people
where name between "A" and "K";

select * from people
where age between 30 and 40;

create table employees (
						id int primary key auto_increment,
                        name varchar(30),
                        age int,
                        salary int
                        );
describe employees;

insert into employees (name, age, salary)
values
("Mike", 20, 5000),
("Jake", 22, 4000),
("Rob", 32, 9000),
("Rick", 28, 6000);

select * from employees;

select * from employees
where salary between 5000 and 10000;

select * from employees
where age between 20 and 25;

select * from employees
where name between "A" and "M";

select * from sales;

select * from sales
where date between '2024-02-01' and '2024-06-01';

-------------------------------------------------------------

-- Like Operator:

select * from people;

select * from people
where name like "J%";

select * from people
where name like "_a%";

select * from people
where name like "%n";

select * from people
where name like '%an';

select * from people
where name like 'J___';

select * from people
where name like 'R__';

select * from people
where name like 'J__e';

select * from customers;

insert into customers values
(4, 'John Smith', 'john_smith@yahoo.com'),
(5, 'Adam Smith', 'adam_smith@yahoo.com');

select * from customers;

select * from customers
where email like '%gmail.com';

select * from customers
where email like '%yahoo%';

select * from customers
where name like '% Smith';

-------------------------------------------------------------

-- In Operator:

select * from people;

select * from people
where name in ('John', 'Rob', 'Jake');

select * from people
where age in (22, 24, 25);

select * from people
where location in ('IND', 'US');

-------------------------------------------------------------

-- Is Null and Is Not Null Operator:

select * from people;

describe people;

insert into people (id, name, age)
values
(7, 'Wayne', 45);

select * from people;

select * from people
where location = null; -- Does Not Work

select * from people
where location != null; -- Does Not Work

select * from people
where location is null;

select * from people
where location is not null;