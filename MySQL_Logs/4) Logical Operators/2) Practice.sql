show databases;
select database();
use challengedb;
select database();
show tables;

/* Select students who are above the age of 20 and have scored above 70

Select students who are living in NY and are below the age of 20.*/
select * from students;

select * from students
where age > 20 and marks > 70;

select * from students
where city = 'New York' and age < 20;

/*Select students who are more 
than 20 years old or they have scored more than 70.*/
select * from students;

select * from students
where age > 20 or marks > 70;

/*Select students who have not scored above 75.*/
select * from students;

select * from students
where not marks > 75;

/*Select students who live in NY and have not scored above 80.*/
select * from students;

select * from students
where city = 'New York' and not marks > 80;

/*Select students who’s firstname does not start with" J".

Select student who’s lastname does not end with "d".*/
select * from students;

select * from students
where firstname not like 'J%';

select * from students
where firstname not like '%d';