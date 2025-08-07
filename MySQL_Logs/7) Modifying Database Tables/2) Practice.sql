select database();
show databases;
use challengedb;
select database();
show tables;

/*Add an email column for students with the data type as string.

Add a username column for students with data type as string.
*/
select * from students;

alter table students
add email varchar(50), add username varchar(50);

select * from students;

describe students;

/*Drop the username column from the students table.
*/
describe students;
select * from studetns;

alter table students
drop column username;

describe students;

/*Rename the column firstname to first_name
and lastname to last_name.
*/
select * from students;

alter table students
change firstname first_name varchar(50),
change lastname last_name varchar(50);

select * from students;

/*Rename the students table to students_data.*/

alter table students
rename to students_data;

select * from students_data;

/*Add a UNIQUE constraint to the id column in the students table.*/
describe students_data;
select * from students_data;

alter table students_data
modify id int unique;

describe students_data;

/*Remove the UNIQUE constraint from the marks column.*/
describe students_data;

alter table students_data
drop index id;

describe students_data;