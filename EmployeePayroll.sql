--UC1 Creating Database
create database payroll_service
use payroll_service

--UC2 Creating Table
Create Table employee_payroll (
Id int not null identity (1,1)primary key,
Name varchar(20),
Salary varchar(20),
StartDate varchar(20)
)
--UC3 Create Employee Payroll Data
insert into employee_payroll (Name,Salary,StartDate)values ('Ankit','50000','26-08-2021')
insert into employee_payroll (Name,Salary,StartDate)values ('Karan','30000','26-08-2021')
insert into employee_payroll (Name,Salary,StartDate)values ('Riya','45000','26-08-2021')
