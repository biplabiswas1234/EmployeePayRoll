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
insert into EmployeeTable values('Binita','Kolkata',4500,'12-06-2022');

select * from Employeetable

select salary from EmployeeTable where Name = 'Biplab'; 
select salary from EmployeeTable where StartDate between '10-06-2022' and '12-06-2022';

alter table EmployeeTable
add Gender varchar(1)
update EmployeeTable set Gender = 'M';
update EmployeeTable set Gender = 'F' where Name = 'Billu'

select sum(Salary) as SumOfSalaryFemale from EmployeeTable where Gender = 'F' Group by Gender;
select sum(Salary) as SumOfSalaryMale from EmployeeTable where Gender = 'M' Group by Gender;
select avg(Salary) as AveOfSalaryFemale from EmployeeTable where Gender = 'F' Group by Gender;
select avg(Salary) as AveOfSalaryMale from EmployeeTable where Gender = 'M' Group by Gender;
select min(Salary) as MinOfSalaryFemale from EmployeeTable where Gender = 'F' Group by Gender;
select min(Salary) as MinOfSalaryMale from EmployeeTable where Gender = 'M' Group by Gender;
select max(Salary) as MaxOfSalaryFemale from EmployeeTable where Gender = 'F' Group by Gender;
select max(Salary) as MaxOfSalaryMale from EmployeeTable where Gender = 'M' Group by Gender;
select count(Salary) as CountOfSalaryFemale from EmployeeTable where Gender = 'F' Group by Gender;
select count(Salary) asCountOfSalaryMale from EmployeeTable where Gender = 'M' Group by Gender;