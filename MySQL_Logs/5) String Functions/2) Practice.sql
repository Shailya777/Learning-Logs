select database();
show databases;
use challengedb;
select database();
show tables;

/*Simply concat the two strings “Welcome” and “Aboard”.

Concat firstname and lastname from students table.
*/
select concat('Welcome', 'Abroad') as joined;

select * from students;
select concat(firstname, ' ', lastname) as fullname
from students;

/*Concat firstname and lastname of students with a space between them.

Create a username for your students using their firstname, lastname,id and city.

The format of the username should be firstname_lastname_id_city

Create email address for your students, which should have a format:

firstname_lastname_id_city@yourschoolname.com
*/

select * from students;

select concat_ws(' ', firstname, lastname) as fullname
from students;

select concat_ws('_', firstname, lastname, id, city) as username
from students;

select concat_ws('@', concat_ws('_', firstname, lastname, id, city), 'myschool.com') as email
from students;

/*Calculate the length of firstname of each student.*/
select * from students;
select firstname, length(firstname) from students;

/*Instead of displaying city names,
display the initial 3 letters of the city.*/
select * from students;
select *, upper(substr(city, 1, 3)) as city_id
from students;

/*Select both the 
firstname and lastname in uppercase from the student’s table.
*/
select * from students;
select upper(firstname), lower(lastname) from students;

/*From the string: “    Adrian Johnson     ” remove the whitespaces.
*/
select trim('   Adrian Johnson    ') as trimmed;

/*From the email “jacob@gmail.com” replace 
the email with domain @mycompany.com.*/
select replace('jacob@gmail.com', '@gmail.com', '@mycompany.com') as new_email;

/*Create a password for each student in the table by using the firstname and lastname by 
combining the firstname and lastname and then reversing them.
*/
select * from students;
select *, reverse(concat(firstname, lastname)) as pass
from students;