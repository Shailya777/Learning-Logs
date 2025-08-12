select database();
show databases;
use challengedb;
select database();
show tables;

/*Write a CTE that calculates the average marks of 
all students and returns the details of students 
who scored above the average.*/
select * from students;

with AverageMarks
as (select avg(marks) as avg_marks
	from students
    )
select first_name, marks
from students
where marks > (select avg_marks from Averagemarks);

/*
Write two chained CTEs:

1. The first CTE should calculate the total marks for 
each city.

2. The second CTE should find students from the city 
with the highest total marks.
*/    
select * from students;

with city_marks
as (select city, sum(marks) as total_marks
	from students
    group by city
    ),
top_city
as (select city from city_marks
	order by total_marks desc
    limit 1
    )
select * from students
where city = (select city from top_city);