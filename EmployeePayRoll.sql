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

alter table EmployeeTable 
add Phone varchar(15), Department varchar(100) ;

update EmployeeTable set Department = 'Marketing';
update EmployeeTable set Department = 'HR' where Name='Biplab';
update EmployeeTable set Department = 'Manager' where Name  in ('Billu','Binita');
update EmployeeTable set Phone = 954979057 where Name = 'Biplab';
update EmployeeTable set Phone = 7002523967 where Name = 'Bipan';
update EmployeeTable set Phone = 9658456325 where Name = 'Bikash';
update EmployeeTable set Phone = 9568456213 where Name = 'Billu';
update EmployeeTable set Phone = 9568456215 where Name = 'Binita';

select * from Employeetable

alter table EmployeeTable
add BasicPay int, Deduction int, TaxablePay int, IncomeTax int, NetPay int

Insert into EmployeeTable (Name, BasicPay, StartDate, Gender)
values('Terrisa', 4555, '2022-03-04', 'F')
Update EmployeeTable set Department = 'Sales' where Name = 'Terrisa'
Insert into EmployeeTable (Name, Department) values ('Terrisa', 'Marketing')