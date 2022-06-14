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

insert into EmployeeTable values('Biplab','Mumbai',3000,'10-06-2022');
insert into EmployeeTable values('Bipan','Delhi',3500,'11-06-2022');
insert into EmployeeTable values('Bikash','Mumbai',4000,'12-06-2022');
insert into EmployeeTable values('Billu','Kolkata',4500,'06-13-2022');
select * from Employeetable