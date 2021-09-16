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
--UC4 Retrieve Data
select * from employee_payroll
--UC5 Selective Data Retrieval
select * from employee_payroll where Name='Ankit'
select Salary from employee_payroll where startDate BETWEEN Cast('2021-03-20' as Date) and GetDate();
--UC6 Add Gender to Employee
Alter table employee_payroll
add Gender char(1)
Update employee_payroll 
set Gender='M' where name='Ankit' or name='Karan'
Update employee_payroll 
set Gender='F' where name='Riya'
select * from employee_payroll

--UC7 Find Sum ,Average , Minimum and Maximum Salary
Alter Table employee_payroll
Alter Column Salary money

Select SUM(Salary) from employee_payroll Where Gender='M' Group by Gender
Select SUM(Salary) from employee_payroll Where Gender='F' Group by Gender

Select AVG(Salary) from employee_payroll Where Gender='M' Group by Gender
Select AVG(Salary) from employee_payroll Where Gender='F' Group by Gender

Select MAX(Salary) from employee_payroll Where Gender='M' Group BY Gender
Select MAX(Salary) from employee_payroll Where Gender='F' Group BY Gender

Select MIN(Salary) from employee_payroll Where Gender='M' Group BY Gender
Select MIN(Salary) from employee_payroll Where Gender='F' Group BY Gender

Select COUNT(Salary) from employee_payroll Where Gender='M' Group BY Gender
Select COUNT(Salary) from employee_payroll Where Gender='F' Group BY Gender

--UC8-Expanding employee_payroll database

Alter table employee_payroll
add EmployeeDepartment varchar(200) not null default 'Not Provided'

Alter table employee_payroll
add EmployeePhoneNumber BigInt not null default '0'

Alter table employee_payroll
add Address varchar(200) not null default 'Not Value Added';

-- UC9 Add Basic Pay,Deduction,Taxable pay, Income Pay , Netpay 
Alter table employee_payroll
add BasicPay float,Deduction float,TaxablePay float, IncomeTax float,NetPay float;
Select * from employee_payroll

--UC10 Add Terissa row

INSERT INTO employee_payroll(Name,StartDate,Gender,EmployeeDepartment,Address,EmployeePhoneNumber,BasicPay,Deduction,TaxablePay,IncomeTax,NetPay)
VALUES('Terissa','2021-05-20','F','Computer','Bihar,IN','7834562345',40000,5000,0,0,35000)

INSERT INTO employee_payroll(Name,StartDate,Gender,EmployeeDepartment,Address,EmployeePhoneNumber,BasicPay,Deduction,TaxablePay,IncomeTax,NetPay)
VALUES('Terissa','2021-06-20','F','Files','Maharashtra,IN','8764536278',50000,5000,0,0,45000)

SELECT *FROM employee_payroll WHERE Name='Terissa';