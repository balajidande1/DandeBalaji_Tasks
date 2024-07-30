create database school_management;
use school_management;

create table students(
student_id int primary key,
first_name varchar(40),
last_name varchar(40),
email varchar(40),
phone_number int,
dob date
);

create table courses(
course_id int primary key,
course_name varchar(40),
course_description varchar(40),
credits int
);

alter table students 
add column grade varchar(2);

alter table students 
modify column phone_number varchar(15);

insert into students 
(student_id, first_name, last_name, email, phone_number, dob) 
values 
(1, 'Virat', 'Kohli', 'virat@gmail.com', 4842462882, '2000-10-18'),
(2, 'Rohit', 'Sharma', 'rohit@gmail.com', 8372748292, '1998-11-25'),
(3, 'Hardik', 'Pandya', 'hardik@gmail.com', 9238429479, '2002-02-13');

insert into courses 
(course_id, course_name, course_description, credits) 
values 
(101, 'B.Tech', 'CSE', 1),
(102, 'B.Tech', 'ECE', 2),
(103, 'B.Tech', 'EEE', 3),
(104, 'B.Tech', 'Mech', 4),
(105, 'B.Tech', 'Civil', 5);

drop table students;
drop database school_management;