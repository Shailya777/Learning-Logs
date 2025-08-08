select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- DATE Datatype:
/*
Default Format: YYYY-MM-DD
Range: 1000-01-01 to 9999-12-31
*/

create table friends (
					  id int primary key auto_increment,
                      name varchar(30),
                      dob date
                      );
describe friends;

insert into friends (name, dob)
values
('John', '1991-01-02'),
('Rob', '1999-08-04'),
('Mike', '2001-03-02'),
('Jacob', '2004-05-07');

select * from friends;

select name, date_format(dob, '%d-%m-%Y') as dob
from friends;

-------------------------------------------------------------
-- DATE Functions:

select curdate();

select * from friends;

insert into friends (name, dob)
values ('Jake', curdate());

select * from friends;

select adddate('2025-01-01', 8);
select adddate('2025-01-01', 365);

select subdate('2025-01-01', 8);
select subdate('2025-01-01', 10000);

select datediff(curdate(), '1992-02-01');
select datediff(curdate(), '2013-05-31');

select year(curdate());
select yearweek(curdate());
select month(curdate());
select day(curdate());
select monthname(curdate());
select dayname(curdate());
select dayofmonth(curdate());
select dayofweek(curdate());
select dayofyear(curdate());

-------------------------------------------------------------
-- Comparing and Filtering Dates:

select * from friends;

select * from friends
where dob < '2000-01-01';

select * from friends
where dob > '2000-01-01';

select * from friends
where dob between '1993-01-01' and '2003-01-01';

-------------------------------------------------------------
-- DATETIME Data Type:
/*
Default Format: YYYY-MM-DD HH:MM:SS
Range: 1000-01-01 00:00:00 yo 9999-12-31 23:59:59
*/

create table appointments (
							id int primary key auto_increment,
                            name varchar(50),
                            app_datetime datetime
                            );
describe appointments;

insert into appointments (name, app_datetime)
values
('John', '2024-10-10 14:30:00');

select * from appointments;

insert into appointments (name, app_datetime)
values
('Jake', now());

select * from appointments;

select name, date_format(app_datetime, '%d-%m-%Y %H:%i:%s')
from appointments;

-------------------------------------------------------------
-- DATETIME Functions:

select now();

select adddate(now(), 8);
select addtime(now(), '10:45:22');
select subdate(now(), 1000);
select subtime(now(), '10:45:22');

select * from appointments;

select datediff(curdate(), '1992-02-01');
select timediff(now(), '1992-02-01 15:30:30');
-- Gives Wrong Result as maximun allowed Value for TimeDiff
-- is ~ 838 Hours / ~ 35 days.

select * from appointments;
select datediff((select app_datetime from appointments
				where id = 1), now())  as days_since_appointment;
                
select timediff((select app_datetime from appointments
				where id = 2), now()) as time_since_appointment;

select hour(now());
select minute(now());
select second(now());

-------------------------------------------------------------
-- Comparing and Filtering DATETIME:

select * from appointments;

select * from appointments
where app_datetime = '2024-10-10 14:30:00';

select * from appointments
where date(app_datetime) = '2024-10-10';

select * from appointments
where app_datetime between '2024-10-10 00:00:00' and now();

select * from appointments
where app_datetime > '2024-10-20 00:00:00';

-------------------------------------------------------------
-- TIMESTAMP Data Type:

create table user_logins (
						  login_id int primary key auto_increment,
                          user_id int,
                          login_time timestamp default current_timestamp,
                          logout_time timestamp
                          );
describe user_logins;

insert into user_logins (user_id)
values (1);

select * from user_logins;

select * from orders;
drop table orders;

create table orders (
					id int primary key auto_increment,
                    order_date timestamp default current_timestamp,
                    status varchar(30),
                    last_update timestamp default current_timestamp
								on update current_timestamp
				    );
                    
describe orders;

insert into orders (status)
values ('undelivered');

select * from orders;

update orders
set status = 'delivered'
where id = 1;

select * from orders;

update orders
set status = 'undelivered'
where id = 1;

select * from orders;