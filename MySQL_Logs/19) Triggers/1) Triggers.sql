select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- Creating a Trigger (After Insert):

select * from orders;
drop table orders;

create table orders (
					order_id int primary key auto_increment,
                    customer_id int,
                    order_amount int,
                    status varchar(30),
                    created_at timestamp default current_timestamp,
                    updated_at timestamp default current_timestamp
								on update current_timestamp
					);
describe orders;

create table orders_log (
						 log_id int primary key auto_increment,
                         order_id int,
                         log_message varchar(255),
                         lag_date timestamp default current_timestamp
                         );
describe orders_log;

delimiter $$
create trigger after_insert_orders
after insert
on orders
for each row
begin
	insert into orders_log (order_id, log_message)
    values (
			new.order_id,
            concat('The Order No ',new.order_id, ' was created'));
end $$

select * from orders$$
select * from orders_log$$

insert into orders (customer_id, order_amount, status)
values (
		2,
        300,
        'Undelivered'
        )$$   

select * from orders$$
select * from orders_log$$

-------------------------------------------------------------
-- Before Insert:

select * from orders$$

create trigger before_insert_orders
before insert
on orders
for each row
begin
	if new.order_amount <= 0 then
		signal sqlstate '45000'
			set message_text = 'Order Amount must be Positive';
	end if;
end $$

insert into orders (customer_id, order_amount, status)
values (1, -500, 'Delivered')$$

insert into orders (customer_id, order_amount, status)
values (1, 500, 'Delivered')$$

select * from orders$$
select * from orders_log$$

-------------------------------------------------------------
-- Before Update:

select * from orders$$

create trigger before_update_orders
before update
on orders
for each row
begin
	if new.status not in ('Delivered', 'Undelivered', 'Shipped') then
		signal sqlstate '45000'
			set message_text = 'Invalid Status value';
	end if;
end$$

update orders
set status = 'Out For Delivery'
where order_id = 2$$

select * from orders$$

update orders
set status = 'Shipped'
where order_id = 2$$

select * from orders$$

-------------------------------------------------------------
-- After Update:

select * from orders$$
select * from orders_log$$

update orders
set order_amount = 1000
where order_id = 2$$

select * from orders$$
select * from orders_log$$

create trigger after_update_order_amount
after update
on orders
for each row
begin
		if old.order_amount != new.order_amount then
			insert into orders_log (order_id, log_message)
			values (new.order_id,
					concat('Order Amount Updated from ', old.order_amount, ' to ', new.order_amount));
		end if;
end$$

select * from orders$$

update orders
set order_amount = 7000
where order_id = 2$$

select * from orders$$
select * from orders_log$$

update orders
set order_amount = 17000
where order_id = 2$$

select * from orders$$
select * from orders_log$$

-------------------------------------------------------------
-- Before Delete:

select * from orders$$

create trigger before_delete_orders
before delete
on orders
for each row
begin
	if old.status in ('Shipped', 'Delivered') then
		signal sqlstate '45000'
			set message_text = 'Can Not Delete Shipped or
								Delivered Orders';
	end if;
end$$

select * from orders$$

delete from orders
where order_id = 2$$

insert into orders (customer_id, order_amount, status)
values (1, 1000, 'Undelivered')$$

select * from orders$$
select * from orders_log$$

delete from orders
where order_id = 3$$

select * from orders$$

-------------------------------------------------------------
-- After Delete:

select * from orders$$
select * from orders_log$$

create trigger after_delete_orders
after delete
on orders
for each row
begin
	insert into orders_log (order_id, log_message)
    values (old.order_id,
			concat('The Order ',old.order_id, ' was deleted'));
end$$

select * from orders$$

update orders
set status = 'Undelivered'
where order_id = 2$$

select * from orders$$

set sql_safe_updates= 0 $$

delete from orders
where order_id = 2$$

select * from orders$$
select * from orders_log$$