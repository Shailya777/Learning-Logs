select database();
show databases;
use challengedb;
select database();
show tables;

/*Calculate the average marks of all students.*/
select * from students;
select avg(marks) from students;

/*Count the total number of students in the table.*/
select * from students;
select count(*) from students;

/*Group students by city and calculate the average marks for each city.*/
select * from students;

select city, avg(marks) as average_marks
from students
group by city;

/*Find the minimum and maximum marks.*/
select * from students;

select min(marks) as minimum, max(marks) as maximum
from students;

/*Calculate the total marks scored by all students.*/
select * from students;

select sum(marks) as total_marks from students;

/*Group students by city and age to find the count of students in each group.*/
select * from students;

select city, age, count(*) as no_of_students
from students
group by city, age;