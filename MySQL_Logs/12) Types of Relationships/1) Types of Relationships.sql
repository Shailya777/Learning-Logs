select database();
show databases;
use socialdb;
select database();
show tables;

--------------------------------------------------------------
-- One To One Relationship:

create table users (
					user_id int primary key auto_increment,
                    username varchar(30)
                    );
describe users;

create table profiles (
						profile_id int primary key,
                        phone_number varchar(20),
                        address varchar(100),
                        user_id int unique,
                        foreign key (user_id)
                        references users(user_id)
                        );
describe profiles;

insert into users (username)
values
('Mike'),
('Tom'),
('Jake'),
('david');
select * from users;

insert into profiles
values
(101, '11111', 'UK', 1),
(102, '22222', 'US', 2),
(103, '33333', 'AUS', 3),
(104, '44444', 'IND', 4);

select * from profiles;

insert into profiles
values
(105, '55555', 'CAN', 1); -- ERROR

-------------------------------------------------------------
-- One To Many Relationship:

create table authors (
					author_id int primary key auto_increment,
                    author_name varchar(50),
                    gender varchar(10)
                    );
describe authors;

create table books (
					book_id int primary key auto_increment,
                    book_name varchar(50),
                    genre varchar(30),
                    author_id int,
                    foreign key (author_id)
                    references authors(author_id)
                    );
describe books;

insert into authors (author_name, gender)
values
('Jordan peterson', 'Male'),
('David Burns', 'Male'),
('J. K. Rowling', 'Female');
select * from authors;

insert into books (book_name, genre, author_id)
values
('12 Rules for Life', 'Psychology', 1),
('Feeling Good', 'Therapy', 2),
('Harry Potter and Chamber of Secrets', 'Fiction', 3),
('Harry potter and Goblet of Fire', 'Fiction', 3),
('Harry Potter and Deathly Hallows', 'Fiction', 3);
select * from books;

insert into books (book_name, genre, author_id)
values
('Feeling Great', 'Psychology', 2);

select * from books;

-------------------------------------------------------------
-- Many to Many Relationship:

create table students (
						student_id int primary key auto_increment,
                        student_name varchar(50)
                        );
describe students;

insert into students (student_name)
values 
('Jake'),
('Mike'),
('Rob'),
('Alex');
select * from students;

create table courses (
					  course_id int primary key auto_increment,
                      course_name varchar(30)
                      );
describe courses;

insert into courses (course_name)
values
('Physics'),
('Chemistry'),
('Mathematics'),
('Computer Science');
select * from courses;

create table enrollments (
							student_id int,
                            course_id int,
                            foreign key (student_id)
                            references students(student_id),
                            
                            foreign key (course_id)
                            references courses(course_id),
                            
                            primary key (student_id, course_id)
                            );
describe enrollments;

insert into enrollments
values
(1, 1), (1, 3), (1, 4),
(2, 1), (2, 2), (2, 3),
(3, 3), (3, 4);
select * from enrollments;

insert into enrollments
values (3,3); -- ERROR