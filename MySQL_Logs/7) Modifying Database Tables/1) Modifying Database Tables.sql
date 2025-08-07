select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- Adding New Columns:

select * from people;
describe people;

alter table people
add username varchar(30);

describe people;
select * from people;

alter table people
add salary int;

describe people;
select * from people;

-------------------------------------------------------------
-- Dropping Column:

select * from people;

alter table people
drop salary; -- Dropping One Column.

select * from people;

alter table people
add salary int;

select * from people;

alter table people
drop column username, drop column salary; -- Dropping Multiple Columns.

select * from people;

-------------------------------------------------------------
-- Modifying Columns:

describe people;
select * from people;

alter table people
modify column age varchar(10);

describe people;
select * from people;

alter table people
modify column age int;

describe people;
select * from people;

-------------------------------------------------------------
-- Renaming a Column:

select * from people;

alter table people
change location country varchar(30);

select * from people;

-------------------------------------------------------------
-- Renaming a Table:

select * from people;

alter table people
rename to students;

select * from students;

alter table students
rename to people;

select * from people;

-------------------------------------------------------------
-- Modifying Constraints:

describe people;

alter table people
modify age int not null;

describe people;

select * from people;
alter table people
modify id int primary key auto_increment;
describe people;

-------------------------------------------------------------
-- Dropping Constraints:

drop table sample;
create table sample(
					id int,
                    name varchar(30),
                    quantity int
                    );
describe sample;

alter table sample
modify id int primary key;

describe sample;

alter table sample
drop primary key;

describe sample;

alter table sample
modify name varchar(30) not null;

describe sample;

alter table sample
modify name varchar(30);

describe sample;

/*
alter table table_name
drop primary key; -- For Dropping Primary key Constraint.

alter table table_name
drop foreign key fk_name -- For Dropping Foreign Key Constraint.

alter table table_name
droop index column_name/constraint_name; -- For Dropping Unique Constraint.
*/