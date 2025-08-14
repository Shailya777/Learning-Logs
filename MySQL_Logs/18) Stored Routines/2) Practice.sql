select database();
show databases;
use challengedb;
select database();
show tables;

/*Create a procedure to insert a new student record.*/
select * from students;
describe students;

delimiter $$
create procedure insertStudent (in std_id int,
								in std_first_name varchar(50),
                                in std_last_name varchar(50),
                                in std_age int,
                                in std_city varchar(50),
                                in std_marks int,
                                in std_email varchar(100),
                                in std_birth_date date,
                                in std_dept int)
begin
insert into students (id, first_name, last_name, age,
					  city, marks, email, birth_date,
                      department_id)
values(std_id, 
	   std_first_name, 
       std_last_name,
       std_age,
       std_city,
       std_marks,
       std_email,
       std_birth_date,
       std_dept);
end $$

call insertStudent (8, 'Diana', 'Prince', 31,
					'Amazon', 66, 'DPrince@gmail.com',
                    '1768-12-31', 4)$$

select * from students$$

/*Create a procedure to fetch students from a specific city.*/
select * from students;

create procedure studentFromCity (in std_city varchar(50))
begin
	select * from students
    where city = std_city;
end$$

call studentFromCity('Mehsana')$$
call studentFromCity('Ahmedabad')$$
call studentFromCity('Amazon')$$

/*Create a procedure to update a student's marks based on their ID.*/
select * from students;

create procedure updateMarks(in std_id int, in std_marks int)
begin
	update students
    set marks = std_marks
    where id = std_id;
end $$

call updateMarks(1, 83)$$
select * from students$$
call updatemarks(2, 46)$$
select * from students;

/*Create a procedure that returns the total count of students.*/
select * from students;

create procedure studentCount (out std_count int)
begin
	select count(*) into std_count from students;
end $$

call studentCount(@count)$$
select @count$$

/*Create a procedure that increments a given student’s marks
and returns the new value.*/
select * from students;

create procedure incrementMarks (inout std_marks int,
								in increment int)
begin
	set std_marks = std_marks + increment;
end $$

set @marks = 80$$
call incrementMarks(@marks, 15)$$
select @marks$$

/*Create a stored function that handles NULL values in the 
marks column by replacing them with the average marks.
*/
select * from students;

call insertStudent(9, 'Tony', 'Stark', 40, 'New York',
				   null, 'TStark@gmail.com', '1980-11-21',
                   5)$$
call insertStudent(10, 'Steve', 'Rogers', 90, 'New York',
				   null, 'SRogers@gmail.com', '1925-01-01',
                   1)$$

select * from students$$

create function handleNullMarks (marks int, avg_marks decimal(5,2))
returns int
deterministic
begin
	return coalesce(marks, avg_marks);
end $$

select first_name, marks, 
	   handleNullMarks(marks, (select avg(marks) from students)) as modified_marks
from students$$