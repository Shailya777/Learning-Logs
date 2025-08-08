select database();
show databases;
use challengedb;
select database();
show tables;

/*
Create a student_profiles table and implement 
a one-to-one relationship with the students table.
*/

describe students;

alter table students
add primary key (id);

create table students_profiles (
								profile_id int primary key,
                                student_id int unique,
                                bio varchar(50),
                                foreign key (student_id)
                                references students(id)
                                );
describe students_profiles;

/*
Create a courses table and implement 
a one-to-many relationship with students.
*/

describe students;

create table courses (
					  course_id int primary key auto_increment,
                      course_name varchar(50),
                      student_id int,
                      foreign key (student_id)
                      references students(id)
                      );
describe courses;

/*
Create a student_courses junction table to represent a 
many-to-many relationship between students and courses.
*/

describe students;
describe courses;

show create table courses;

alter table courses
drop foreign key courses_ibfk_1;

create table student_courses (
							  student_id int,
                              course_id int,
                              primary key (student_id, course_id),
                              
                              foreign key (student_id)
                              references students(id),
                              
                              foreign key (course_id)
                              references courses(course_id)
                              );
describe student_courses;