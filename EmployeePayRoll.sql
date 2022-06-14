create database EmpPayRollService;
use EmpPayRollService; 
create table EmployeeTable
(
ID int identity(1,1) primary key,
Name varchar(10) not null,
Address varchar(10),
Salary int,
StartDate date
)