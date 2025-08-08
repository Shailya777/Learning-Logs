select database();
show databases;
use challengedb;
select database();
show tables;

/*
Create a departments table and establish a foreign key 
relationship between students.department_id and departments.id
*/
select * from students;

create table departments (
						  department_id int primary key auto_increment,
                          name varchar(50));
describe departments;

alter table students
add department_id int;

alter table students
add constraint fk_student_dept foreign key (department_id)
				references departments(department_id);
                
describe departments;
describe students;