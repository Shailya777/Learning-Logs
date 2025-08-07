select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- CREATE Operation:
select * from people;
describe people;

insert into people (name, age, country)
values
('Mike', 21, 'AUS');

select * from people;

-------------------------------------------------------------
-- READ Operation:

select * from people;

select * from people
where id = 1;

select name from people;

select name from people
where id = 4;

select * from people
order by age;

select * from people
order by country desc;

select * from people
order by country desc, age asc;

select * from people
limit 5;

-------------------------------------------------------------
-- UPDATE Opeartion:

select * from people;

update people
set age = 30
where id = 1;

select * from people;

update people
set age = 25, country = 'AUS'
where id = 5;

select * from people;

-------------------------------------------------------------
-- DELETE Operation:

select * from people;

delete from people
where id = 9;

select * from people;