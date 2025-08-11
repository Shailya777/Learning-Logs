select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- Creating Views:

select * from people;

select * from people
where country = 'US';

create view us_people
as
select * from people
where country = 'US';

select * from us_people;

select * from us_people
where age > 25;

-------------------------------------------------------------
-- Complex View:

select * from customers;
select * from orders;

select * from
customers c inner join orders o
on (c.customer_id = o.customer_id);

create view customer_orders
as
select c.customer_id, c.name, c.email, o.order_id, o.order_date
from customers c inner join orders o
on (c.customer_id = o.customer_id);

select * from customer_orders;

select * from customer_orders
where name = 'John';

-------------------------------------------------------------
-- Updating and Dropping Views:

show tables;
show full tables;

select * from us_people;

create or replace view us_people
as
select * from people
where age > 25;

select * from us_people;

drop view us_people;

show full tables;