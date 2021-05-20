CREATE database Payroll_Service;
show databases;
use Payroll_Service;
CREATE table Employee_Payroll (
ID          int NOT Null auto_increment Primary key,
Name        varchar(50) Not Null,
Salary      double Not Null,
Start_Date  date Not Null );
Select * From employee_payroll;
Insert into employee_payroll ( Name, Salary, Start_Date) values 
( 'Himanshu Kaushik', '50000.0', '2020-10-1'),
( 'Naman Varshney', '50000.0', '2020-01-31'),
( 'Robert Pattinson', '20000.0', '2020-01-01'),
( 'Jay Yadav', '19000.0', '2020-03-10'),
( 'Steve Jobs', '78000.0', '2020-03-15'),
( 'Catherina', '47000.0', '2020-03-20'),
( 'Elena', '85000.0', '2020-04-05');
Select * From employee_payroll;   
Select salary from employee_payroll where Name = 'Himanshu Kaushik'; 
Select Name from employee_payroll where Start_Date between Cast( '2020-03-10' as date) and date(now());     
Alter table employee_payroll  add Gender varchar(1) after Name;   
Update employee_payroll set Gender = 'M' where Name = 'Himanshu Kaushik' or Name = 'Jay Yadav' or Name = 'Naman Varshney' or Name = 'Steve Jobs' or Name = 'Robert Pattinson';   
Update employee_payroll set Gender = 'F' where Name = 'Catherina' or Name = 'Elena';     
Select Sum(Salary) From employee_payroll where Gender = 'F' group by Gender;  
Select Avg(Salary) From employee_payroll where Gender = 'F' group by Gender;
Select Min(Salary) From employee_payroll where Gender = 'M' group by Gender;   
Select Max(Salary) From employee_payroll where Gender = 'M' group by Gender;
Select Count(Salary) From employee_payroll where Gender = 'M' group by Gender;
Select Count(Gender) From employee_payroll;
Select Count(Gender) From employee_payroll where Gender = 'M';
Alter table employee_payroll  add PhoneNumber varchar(10) after Gender; 
Alter table employee_payroll  add Address varchar(45) after PhoneNumber;
Alter table employee_payroll  add Department varchar(45) Not Null after Address;  
Update employee_payroll set Department = 'IT' where Name = 'Himanshu Kaushik' or Name = 'Naman Varshney';
Update employee_payroll set Department = 'HR' where Name = 'Jay Yadav' or Name = 'Robert Pattinson';
Update employee_payroll set Department = 'Finance' where Name = 'Steve Jobs' or Name = 'Catherine';
Update employee_payroll set Department = 'Marketing' where Name = 'Elena';
Alter table employee_payroll add BasicPay double after Salary;
Alter table employee_payroll add Deductions double after BasicPay;
Alter table employee_payroll add TaxablePay double after Deductions;
Alter table employee_payroll add IncomeTax double after TaxablePay;
Alter table employee_payroll add NetPay double after IncomeTax; 
Update employee_payroll set Address = 'Default';
Update employee_payroll set PhoneNumber = 'Null';
Update employee_payroll set BasicPay = '0.0';
Update employee_payroll set Deductions = '0.0';
Update employee_payroll set TaxablePay = '0.0';
Update employee_payroll set IncomeTax = '0.0';
Update employee_payroll set NetPay = '0.0';
Select * From employee_payroll;