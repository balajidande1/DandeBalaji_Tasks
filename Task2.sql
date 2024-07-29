create database school_management;
use school_management;

create table students(
student_id int primary key,
first_name varchar(40),
last_name varchar(40),
email varchar(50),
phone_number int,
dob date
);

create table courses(
course_id int primary key,
course_name varchar(50),
course_description varchar(100),
credits int
);

alter table students add column grade varchar(2);
alter table students modify column phone_number varchar(15);

insert into students 
(student_id, first_name, last_name, email, phone_number, dob) 
values 
(1, 'Ravi', 'Kumar', 'ravi@gmail.com', 6667733322, '2022-07-07'), 
(2, 'Rajesh', 'Narwal', 'rajesh@gmail.com', 73214242874, '2001-02-21'), 
(3, 'Som', 'Sekhar', 'somu@gmail.com', 7621648272, '2002-09-01');
insert into courses 
(course_id, course_name, course_description, credits) 
values 
(101, 'B.Tech', 'CSE', 5), 
(102, 'B.Tech', 'ECE', 4), 
(103, 'B.Tech', 'EEE', 6), 
(104, 'B.Tech', 'Mech', 4), 
(105, 'B.Tech', 'Civil', 7);

select first_name, last_name, email from students;

drop table students;
drop database school_management;
