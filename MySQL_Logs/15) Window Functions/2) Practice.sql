select database();
show databases;
use challengedb;
select database();
show tables;

/*Calculate the Total marks for students.*/
select * from students;

select first_name, last_name, marks,
	   sum(marks) over() as 'Total'
from students;

/*Order students by marks in descending order.*/
select * from students;

select * from students
order by marks desc;

/*Assign a row number to each student, ordered by marks.*/

select * from students;

select first_name, last_name, marks, row_number()
over (order by marks desc)
from students;

/*Rank students based on their marks, allowing ties.*/
select * from students;

select first_name, last_name, marks, department_id,
		rank() over(partition by department_id 
					order by marks desc) 'Rank'
from students;

/*Assign dense ranks to students based on their marks.*/
select * from students;

select first_name, last_name, department_id, marks, dense_rank()
over (partition by department_id order by marks desc) as 'Rank'
from students;

/*Use LEAD and LAG to find the previous and next student’s marks.*/
select * from students;

select first_name, last_name, department_id, marks,
	   lead(marks, 1, 0) over(partition by department_id order by marks desc) as 'Next',
       lag(marks, 1, 0) over(partition by department_id order by marks desc) as 'Previous'
from students;