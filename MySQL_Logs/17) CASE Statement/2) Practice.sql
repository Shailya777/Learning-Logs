select database();
show databases;
use challengedb;
select database();
show tables;

/*
Write a query that categorizes students into 
'Excellent', 'Good', and 'Needs Improvement' based on their marks:

Marks >= 90: Excellent

Marks >= 70 and < 90: Good

Marks < 70: Needs Improvement
*/
select * from students;

select first_name, marks,
		case 
			when marks < 70 then 'Needs Improvement'
            when marks between 70 and 90 then 'Good'
            when marks > 90 then 'Excellent'
            else 'NA'
		end as remark
from students;

/*
Write a query that assigns a grade to each student based on their marks:

Marks >= 85: A

Marks >= 70 and < 85: B

Marks >= 50 and < 70: C

Marks < 50: D
*/
select * from students;

select first_name, marks,
		case
			when marks >= 85 then 'A'
            when marks >= 70 and marks < 85 then 'B'
            when marks >= 50 and marks < 70 then 'C'
            when marks < 50 then 'D'
            else 'NA'
		end as grade
from students;

/*
Use a CASE statement to replace NULL values in the marks 
column with the average marks of all students.
*/
select * from students;
describe students;

insert into students (id, first_name, last_name, age, city,
					email, birth_date, department_id)
values
(1, 'Manish', 'Pesswani', 21, 'Ahmedabad', 'mpesswani@gmail.com',
'1991-12-26', 1),
(2, 'Clark', 'Kent', 23, 'Metropolis', 'ckent@gmail.com',
'1988-01-01', 5);

select * from students;

select first_name,
		case
			when marks is null then (select avg(marks) from students)
            else marks
		end as marks
from students;

/*
Use a CASE statement to count the number of students in each age group:

Age <= 18: Group 1

Age > 18 and <= 25: Group 2

Age > 25: Group 3
*/
select * from students;

select
	count(case when age > 25 then 1 end) as 'Group 3',
    count(case when age <= 25 then 1 end) 'Group 2',
    count(case when age <= 18 then 1 end) 'Group 1'
from students;

/*
Write a query that determines whether a student is eligible for a scholarship:

Marks >= 75 and Age <= 21: Eligible

Otherwise: Not Eligible
*/
select * from students;

select first_name, age, marks,
		case
			when marks >= 75 and age <= 21 then 'Eligible'
            else 'Not Eligible'
		end as Scholarship
from students;

/*
Write a query that categorizes cities based on the average marks of students:

City average marks >= 80: High Performing City

City average marks >= 50 and < 80: Medium Performing City

City average marks < 50: Low Performing City
*/
select * from students;

select city,
		case
			when avg(marks) >= 80 then 'High Performing'
            when avg(marks) >= 50 then 'Medium Performing'
            else 'Low performing'
		end as city_category
from students
group by city;

/*
Write a query that shows the student's status:

"Outstanding" if marks >= 90 and age <= 20

"Eligible" if marks >= 75 and age <= 25

"Needs Improvement" otherwise
*/
select * from students;

select first_name, age, marks,
		case
			when marks >= 90 and age <= 20 then 'Outstanding'
            when marks >= 75 and age <= 25 then 'Eligible'
            else 'Needs Improvment'
		end as status
from students;

/*
Write a query to sort students by their marks dynamically 
using a CASE statement. The sort order is controlled 
by a variable (@sort_by) that can be either 'marks' or 'age'.
*/
select * from students;

set @sort_by = 'marks';

select first_name, age, marks
from students
order by case
			when @sort_by = 'marks' then marks
            when @sort_by = 'age' then age
		end desc;
        
/*
Use a CASE statement to display the status of students based on their course enrollment:

"Enrolled" if the student is found in the student_courses table.

"Not Enrolled" if the student is not found in the student_courses table.
*/

select * from students;

select * from courses;
desc courses;
alter table courses
drop student_id;
select * from courses;

select * from student_courses;
describe student_courses;

insert into courses (course_name)
values ('Physics'), ('Chemestry'), ('Maths'), 
('Computer Science'), ('Accounting'), ('Machine Learning');

select * from students;
select * from courses;

select * from student_courses;

insert into student_courses
values (1,1),(1,2),(1,3),(2,2),(2,3),(2,5),(2,6),(3,1),(3,3),
(3,6),(4,1),(4,2),(4,3),(4,4),(4,6),(6,1),(6,2);

select * from student_courses;

select distinct s.id, s.first_name, s.last_name,
		case
			when sc.student_id is not null then 'Enrolled'
            else 'Not Enrolled'
		end as student_status
from students s left join student_courses sc
on (s.id = sc.student_id);

/*
Create a query that uses a CASE statement to assign a dynamic status to students based on multiple conditions:

If marks >= 80: "Excellent"

If marks between 60 and 80: "Good"

If marks between 40 and 59: "Average"

If marks < 40: "Poor"
*/
select * from students;

select first_name, marks,
		case
			when marks >= 80 then 'Excellent'
            when marks >= 60 then 'Good'
            when marks >= 40 then 'Average'
            when marks < 40 then 'Poor'
            else 'NA'
		end as student_cat
from students;
            