select database();
show databases;
use challengedb;
select database();
show tables;

/*
Add a new student: 7, 'Emma', 'Wilson', 22, 'Berlin', 75.
*/
select * from students_data;

alter table students_data
rename to students;

select * from students;
describe students;

insert into students
values
(7, 'Emma', 'Wilson', 22, 'Berlin', 75, 'emwilson@gmail.com');

select * from students;

/* Retrieve all students where marks > 70.*/
select * from students
where marks > 70;

/*Update the city of the student with id = 2 to Berlin.*/
select * from students;

SET SQL_SAFE_UPDATES = 0;

update students
set city = 'Berlin'
where id = 2;

select * from students;

/* Delete the student record where age < 18.*/

select * from students;

delete from students
where age < 18;

select * from students;