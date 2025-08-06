select database();
use challengedb;
select database();

show tables;

/* Select all students from the city of your choice.*/
select * from students;

select * from students
where city = 'Mehsana';

/* Select all students who are NOT from a city of your choice.*/
select * from students;

select * from students
where city != 'New York';

/*Select students who have scored below a score you have mentioned:

Select students who are below 15 years of age.*/
select * from students;

select * from students
where marks < 80;

select * from students
where age < 15;

/* Select students who have scored above what you have mentioned.

Select students who are above 20 years of age.*/
select * from students;

select * from students
where marks > 80;

select * from students
where age > 20;

/* Select students where lastname starts with "C" or 
any character of your choice.*/
select * from students;

select * from students
where lastname like 'K%';

/* Select students who are from either of the three locations: 
NY,Paris,London or any three locations of your own choice.*/
select * from students;

select * from students
where city in ('Ahmedabad', 'Mehsana', 'Pune');

/* Select students where the age of the students is set to null.*/
select * from students;

describe students;

insert into students values (
							 6,
                             'Bruce',
                             'Wayne',
                             null,
                             'Gotham',
                             85
                             );
select * from students;

select * from students
where age is null;

/* Select students where the age of the students is not set to null.*/
select * from students;

select * from students
where age is not null;