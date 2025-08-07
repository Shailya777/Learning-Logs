show databases;
select database();
use socialdb;
select database();
show tables;

--------------------------------------------------------------

-- AND Operator:

select * from people;

select * from people
where age > 30 and location = 'US';

select * from people
where age < 30 and location = 'US';

select * from people
where age < 20 and location = 'US';

select * from people
where age > 30 and location = 'US' and name = 'John';

-------------------------------------------------------------

-- OR Operator:

select * from people;

select * from people
where age < 30 or location = 'US';

select * from people
where age > 50 or location = 'CAN';

select * from people
where age < 50 or location = 'CAN';

-------------------------------------------------------------

-- NOT Operator:

select * from people;

select * from people
where age = 32;

select * from people
where not age = 32;

select * from people
where not location = 'US';

-------------------------------------------------------------

-- Combining Logical Operators:

select * from people;

select * from people
where age < 30 and (location = 'US' or location = 'UK');

select * from people
where age > 30 and (location = 'US' or location = 'UK');

select * from people
where age > 30 and location = 'US' or location = 'UK';

-------------------------------------------------------------

-- Combining Null Operators:

select * from people;

select * from people
where age > 30 and location is not null;

select * from people
where location = 'US' or location is null;

-------------------------------------------------------------

-- NOT LIKE Operator:

select * from people;

select * from people
where name not like 'J%';

select * from people
where name not like '%n';

select * from people
where name not like '_a%';

select * from people
where name not like 'J___';

select * from customers;

select * from customers
where email not like '%@yahoo%';