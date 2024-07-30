create database Emp;
use Emp;

create table Employees(
employeeID int,
firstName varchar(50) not null,
lastName varchar(50) not null,
email varchar(100) not null,
salary int not null,
departmentID int,
primary key (employeeID)
);

-- Ex-1 
alter table Employees 
add constraint chk_salary check (salary > 0);
-- Ex-2
alter table Employees 
add foreign key (departmentID) references Departments(departmentID);
-- Ex-3
alter table Employees 
add unique (email);

create table Departments(
departmentID int primary key,
departmentName varchar(50) not null
);
-- Ex-4 As primary key is alredy defined
alter table Departments 
add primary key (departmentID);

-- Ex-8
delete from Departments where departmentID = 1;

create table Projects(
projectID int primary key,
projectName varchar(100) not null,
departmentID int,
foreign key (departmentID) references Departments(departmentID)
);

-- Ex-5
alter table Projects 
add constraint fk_project foreign key (departmentID) references Departments(departmentID);

insert into Departments 
(departmentID, departmentName) 
values 
(1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');

insert into Employees 
(employeeID, firstName, lastName, email, salary, departmentID)
values 
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 1),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 2),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3);

-- Ex-6
insert into Employees 
(employeeID, firstName, lastName, email, salary, departmentID) 
values 
(8, 'Balaji', 'Dande', 'balaji@gmail.com', 80000, 6); 


-- Ex-7
insert into Employees 
(employeeID, firstName, lastName, email, salary, departmentID) 
values 
(7, 'Ravi', 'Kumar', 'john.doe@company.com', 50000, 2);

insert into Projects 
(projectID, projectName, departmentID) 
values 
(1, 'Project A', 1),
(2, 'Project B', 2),
(3, 'Project C', 3),
(4, 'Project D', 4),
(5, 'Project E', 5);

update Employees 
set departmentID = 6 
where employeeID = 1;

select * from Employees;

