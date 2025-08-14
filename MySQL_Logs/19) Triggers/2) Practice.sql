select database();
show databases;
use challengedb;
select database();
show tables;

/*Create a trigger to set the city to 
Unknown if no value is provided during an insert.*/
select * from students;

delimiter $$
create trigger before_insert_city
before insert
on students
for each row
begin
	if new.city is null or new.city = '' then
		set new.city = 'Unknown';
	end if;
end $$

select * from students $$
describe students $$
insert into students (id, first_name, last_name, age, city,
						marks, email, birth_date, department_id)
values (11, 'Bucky', 'Barnes', 92, null, 76,
		'BBarnes@gmail.com', '1923-01-01', 2)$$

select * from students$$

insert into students (id, first_name, last_name, age, city,
						marks, email, birth_date, department_id)
values (12, 'Natasha', 'Romanoff', 28, '', 60,
		'NRomanoff@gmail.com', '1983-04-24', 3)$$

select * from students $$

/*Create a trigger to log changes when a student’s marks are updated.*/
select * from students$$

create table std_marks_log (
							log_id int primary key auto_increment,
                            log_message varchar(255)
                            )$$
select * from std_marks_log$$

create trigger std_marks_update
before update
on students
for each row
begin
	if old.marks != new.marks then
		insert into std_marks_log (log_message)
        values (concat('Marks for Student ID: ', old.id, ' updated from ',
				old.marks, ' to ', new.marks));
	end if;
end $$

select * from students $$

update students
set marks = 90
where id = 1$$

update students
set marks = 56
where id = 2$$

select * from students$$

select * from std_marks_log$$

/*Create a trigger to update a last_updated 
column after a student’s record is modified.*/
select * from students$$

alter table students
add last_updated timestamp$$

select * from students$$

create trigger std_last_updated
before update
on students
for each row
begin
	set new.last_updated = current_timestamp();
end$$

update students
set marks = 80
where id = 6 $$

select * from students$$

/*Create a trigger to check if the student has enrolled 
in courses before deleting their record.
*/
show tables $$
select * from courses $$
select * from students $$
select * from student_courses$$

create trigger before_delete_students
before delete
on students
for each row
begin
	if (select count(*) from student_courses
		where student_id = old.id) > 0 then
        signal sqlstate '45000'
        set message_text = 'Can Not Delete Student(s)
							who are Already Enrolled
							in One or More Courses';
	end if;
end $$

select * from students$$
select * from student_courses$$

delete from students
where id = 6 $$

select * from students $$

delete from students
where id = 12 $$

select * from students $$

/*Create a trigger to log the deletion of a student record 
in a separate audit table.*/
select * from students $$

create table std_deleted_log (
							log_id int primary key auto_increment,
                            log_message varchar(255)
                            )$$
select * from std_deleted_log $$

create trigger after_delete_students
after delete
on students
for each row
begin
	insert into std_deleted_log (log_message)
    values (concat('Student with ID: ', old.id, ' was Deleted
			at ', current_timestamp()));
end $$

select * from students $$

delete from students
where id = 11 $$

select * from students $$
select * from std_deleted_log $$