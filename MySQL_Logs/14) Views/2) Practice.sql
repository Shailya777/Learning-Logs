select database();
show databases;
use challengedb;
select database();
show tables;

/*Create a view student_summary
 that includes id, first_name, last_name, and marks.*/
select * from students;

create view student_summary
as
select id, first_name, last_name, marks
from students;

select * from student_summary;

/*Use the student_summary view to find students with marks > 75.*/
select * from student_summary;

select * from student_summary
where marks > 75;

/*Update the student_summary view to include city, and then drop it.*/
select * from student_summary;

create or replace view student_summary
as
select id, first_name, last_name, marks, city
from students;

select * from student_summary;

drop view student_summary;

show full tables;