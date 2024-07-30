create database Rev;
use Rev;

create table task2(
firstName varchar(40),
lastName varchar(40),
email varchar(50),
salary int
);

insert into task2 
(firstName, lastName, email, salary) 
values 
('balaji', 'dande', 'balaji@gmail.com', 35000), 
('Rajesh', 'Kumar', 'rajesh@gmail.com', 25000), 
('Anil', 'kumble', 'anil@gmail.com', 45000), 
('Virat', 'Kohli', 'virat@gmail.com', 75000), 
('Sachin', 'Reenu', 'sachin@gmail.com', 15000);

-- select top 3 employees with highest employees
select firstName, lastName, salary from task2 order by salary desc limit 3;
-- select top 3 employees with lowest salaries
select firstName, lastName, salary from task2 order by salary asc limit 3;
-- employee with second highest salary
select firstName, lastName, salary from task2 order by salary desc limit 1 offset 1;
-- employee with second lowest salary
select firstName, lastName, salary from task2 order by salary asc limit 1 offset 1;
-- employee with 3rd hihest salary
select firstName, lastName, salary from task2 order by salary desc limit 1 offset 2;
-- employee with 3rd lowest salary
select firstName, lastName, salary from task2 order by salary asc limit 1 offset 2;
-- using between
select firstName, lastName, email, salary 
from task2 
where salary between 25000 and 80000 
order by firstName desc limit 3;
