select database();
show databases;
use challengedb;
select database();
show tables;

/*Retrieve all students and their associated departments.*/
select * from students;
select * from departments;

describe students;
describe departments;

insert into departments (name)
values
('Science'),
('Commerce'),
('Arts'),
('Sociology'),
('Politics');

select * from departments;

select * from students;

update students
set department_id = 2 where id = 3;

update students
set department_id = 1 where id = 4;

update students
set department_id = 5 where id = 5;

update students
set department_id = 4 where id = 6;

update students
set department_id = 1 where id = 7;

select * from students;

select s.first_name, s.last_name, s.marks, d.name
from
students s inner join departments d
on (s.department_id = d.department_id);

/*Retrieve all departments and their associated students.*/
select d.department_id, d.name, s.id, s.first_name
from
students s right join departments d
on (s.department_id = d.department_id);

/*Retrieve all students and departments,
including unmatched rows from both sides.*/
select * from
students s left join departments d
on (s.department_id = d.department_id)

union

select * from
students s right join departments d
on (s.department_id = d.department_id);

/*Generate all possible combinations of students and departments.*/
select * from
students cross join departments;