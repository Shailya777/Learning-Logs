select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
select 10 + 20 as arithmetic;
select 10 - 20 as arithmetic;
select 10 * 20 as arithmetic;
select 10 / 20 as arithmetic;
select 10 % 20 as arithmetic;

select * from people;
select name, age, age + 5 as five_years_later from people;
select name, age, age - 5 as five_years_before from people;

create table cart (
					id int primary key auto_increment,
                    item_name varchar(50),
                    item_price int,
                    quantity int
                    );
insert into cart (item_name, item_price, quantity)
values
('Phone', 300, 2),
('Laptop', 900, 1),
('Tablet', 500, 3);

select * from cart;

select id, item_name, item_price, quantity, 
item_price * quantity as total_price 
from cart;