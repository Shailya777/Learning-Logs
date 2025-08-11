select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- INNER Join:

select * from customers;
select * from orders;
describe orders;

insert into orders (order_date, customer_id)
values
('2024-02-02', 3);

select * from orders;

insert into orders (order_date, customer_id)
values
('2024-03-03', 2);

select * from orders;

select * from
customers inner join orders
on (customers.customer_id = orders.customer_id);

-------------------------------------------------------------
-- LEFT OUTER Join:

select * from customers;
select * from orders;

insert into orders (order_date)
values ('2024-12-31');

select * from orders;

select * from
customers left join orders
on (customers.customer_id = orders.customer_id);

-------------------------------------------------------------
-- RIGHT OUTER Join:

select * from customers;
select * from orders;

select * from
customers right join orders
on (customers.customer_id = orders.customer_id);

-------------------------------------------------------------
-- FULL OUTER Join:
/* MySQL Does not Support Full outer Join.
We Can use UNION Operation to Combine LEFT and RIGHT Joins
to Simulate FULL OUTER Join.
*/

select * from customers;
select * from orders;

select * from
customers left join orders
on (customers.customer_id = orders.customer_id)
union
select * from
customers right join orders
on (customers.customer_id = orders.customer_id);

-------------------------------------------------------------
-- CROSS Join:

select * from customers;
select * from orders;

select * from
customers cross join orders;