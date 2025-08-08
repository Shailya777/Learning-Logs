select database();
show databases;
use challengedb;
select database();
show tables;

/*
Add a birth_date column with sample data to use in date-related challenges
*/

select * from students;
describe students;

ALTER TABLE students ADD birth_date DATE;

UPDATE students SET birth_date = '2008-07-15' WHERE id = 3;
UPDATE students SET birth_date = '1999-11-20' WHERE id = 4;
UPDATE students SET birth_date = '2000-06-25' WHERE id = 5;
UPDATE students SET birth_date = '2005-01-01' WHERE id = 6;
UPDATE students SET birth_date = '2003-05-10' WHERE id = 7;

select * from students;

/*Extract the year from the birth_date of each student.*/
select * from students;

select birth_date, year(birth_date) as birth_year
from students;

select birth_date, extract(year from birth_date) as birth_year
from students;

/*Find students whose birth_date is after '2000-01-01'.*/
select * from students;

select * from students
where birth_date > '2000-01-01';

/*
Add a created_at column with 
current timestamps and display the hour part of the timestamp.
*/
select * from students;

alter table students
add created_at datetime default current_timestamp;

select * from students;

select hour(created_at) as hour_of_creation
from students;

/*Use CURRENT_TIMESTAMP to update the created_at column for all rows.*/
select * from students;

update students
set created_at = current_timestamp();

select * from students;