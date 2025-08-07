select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- CONCAT Function:

select concat('Hello', 'World');
select concat('Hello ', 'World');
select concat('Apple ', 'Mango') as Fruits;
select concat('My ', 'Name ', 'is ', 'John ', 'Doe') as Introduction;

select * from people;
select concat(name,location) from people;
select concat(name,age,location) as UserName from people;
select concat(name,'_',location,'_',age) as UserName
from people;

-------------------------------------------------------------
-- CONCAT_WS Function:

select * from people;
select concat_ws('_','Apple','Mango') as Fruits;
select concat_ws('*','Apple','Mango','Banana') as Fruits;
select concat_ws(':','2024','11','12') as Dates;

-------------------------------------------------------------
-- LENGTH Function:

select length('Shailya') as length;
select length('😁') as length; -- Press WINDOWS+. Keys for Emojis
select length('🤷‍♂️') as length;
select length('Hello World') as length;

select * from people;

select name, length(name) as name_length from people;

-------------------------------------------------------------
-- CHAR LENGTH Function:

select char_length('Hello') as char_length;
select char_length('🤷‍♂️') as char_length;
select char_length('😁') as char_length;

select * from customers;
select * from customers
where char_length(name) between 5 and 15;

-------------------------------------------------------------
-- SUBSTRING (SUBSTR) Function:
-- SUBSTRING('STRING', start, length)

select substring('Programming', 5) as substr;
select substr('Programming', 5) as substr;
select substr('Programming', 1, 7) as substr;
select substr('Programming', 5, 7) as substr;

select * from customers;

select locate(' ', name) as space from customers;

select substr(name, 1, locate(' ', name) - 1) as first_name
from customers;

select substr(email, 1, locate('@', email) - 1) as user_name
from customers;

-------------------------------------------------------------
-- LEFT and RIGHT Functions:

select left('Hello there!', 7) as lft;
select left('Hello there!', 3) as lft;

select * from people;
select left(name, 2) as initials from people;

select right('Hello there!', 7) as rt;
select right('Hello there!', 8) as rt;

select * from people;
select right(name, 2) as rt from people;

-------------------------------------------------------------
-- UPPER and LOWER Functions:

select upper('hello') as upr;
select lower('Hello') as lwr;

select * from people;
describe people;
insert into people
values (
		8,
        'Damien',
        27,
        upper('us')
        );
select * from people;

select upper(name) as capitalized_names from people;

-------------------------------------------------------------
-- TRIM Function:

select trim('Hello') as trimmed;
select trim('       Hello  ') as trimmed;
select trim('   Hello World!   ') as trimmed;

-------------------------------------------------------------
-- REPLACE Function:
-- replace(original string, find string, replace with string)

select replace('I like apple', 'apple', 'mango') as replaced;
select replace('1800-20-30-560', '-', '') as phone;
select replace('$500', '$', '') as amount;
select replace('20%', '%', '') as percent;

select * from customers;
select replace(email, '@yahoo.com', '@mydomain.com') as new_eamil
from customers;

-------------------------------------------------------------
-- INSTR Function:

select instr('Hey there, Mike', 'Mike') as name_location;
select instr('Hey there, mike! How are you mike?', 'mike') 
as name_location;

-------------------------------------------------------------
-- LOCATE Function:

select locate('mike', 'Hey there, mike! How are you mike?')
as name_location;

select locate('mike', 'Hey there, mike! How are you mike?', 15)
as name_location;

-------------------------------------------------------------
-- RTRIM and LTRIM Functions:

select rtrim('    Hello There!    ') as r_trimmed;

select ltrim('    Hello There!    ') as r_trimmed;

-------------------------------------------------------------
-- ASCII and CHAR Functions:

select ascii('A') as ascii_value;
select ascii('a') as ascii_value;
select ascii('Apple') as ascii_value;
select ascii('apple') as ascii_value;
select ascii('mango') as ascii_value;

select char(65) as char_val; -- Run this Query in Shell.

/* MySQL Shell:
mysql> select char(65) as char_val;
+--------------------+
| char_val           |
+--------------------+
| 0x41               |
+--------------------+
1 row in set (0.00 sec)

mysql> select char(65 using ascii) as char_val;
+----------+
| char_val |
+----------+
| A        |
+----------+
1 row in set (0.00 sec)
*/

select char(65 using ascii) as char_val;

-------------------------------------------------------------
-- REGEXP Function:

select * from employees;

select * from employees
where name regexp '^R';

-------------------------------------------------------------
-- REVERSE Function:

select reverse('Hello') as reversed;

select reverse('Hello there! How are you?') as reversed;

select reverse('1800-789-123') as reversed;

select * from customers;
select reverse(email) as reversed_email from customers;