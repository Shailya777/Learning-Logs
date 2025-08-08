select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- Foreign Key:

select * from customers;
select * from orders;

drop table customers, orders;

show tables;

create table customers (
						customer_id int primary key auto_increment,
                        name varchar(50),
                        email varchar(50)
                        );
describe customers;

create table orders (
					 order_id int primary key auto_increment,
                     order_date date,
                     customer_id int,
                     foreign key (customer_id) references customers(customer_id)
                     );
describe orders;

insert into customers (name, email)
values
('jake', 'jake@gmail.com'),
('john', 'john@gmail.com'),
('mike', 'mike@gmail.com');

select * from customers;

describe orders;

insert into orders (order_date, customer_id)
values
('2024-01-01', 2);

select * from orders;
select * from customers;

select customer_id from customers
where name = 'John';

select * from orders
where customer_id = (select customer_id from customers
					where name = 'John');
                    
select * from orders
where customer_id = (select customer_id from customers
					where name = 'Mike');
