select database();
show databases;
use challengedb;
select database();
show tables;

/*Let’s assume the marks obtained by students are out of 120,
find the percentage of marks scored out of 120 for each 
student and display it in a new column.
*/
select * from students;
select *, (marks*100)/120 as percentge from students;