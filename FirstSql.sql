Create Database Company 

Use Company

CREATE TABLE Employees (Id int,Name nvarchar(50),SurName nvarchar(50),Position 

nvarchar(50),Salary decimal(18,2))
Drop Table Employees

Insert Into Employees 
Values
(1,'Murad','Hagverdiyev','FrontEnd',700),
(2,'Maqsud','Seferov','Ozude bilmir',100),
(3,'Onur','Ismayilov','BackEnd',1000),
(4,'Vusal','Aliyev','FullStack',1500),
(5,'Eltac','Melikmmedov','React developer',2200),
(6,'Vusal','Imanov','Design',1600)

Select (sum(Salary)/MAX(Id)) From Employees	
Select * From Employees Where Salary > (Select sum(Salary)/MAX(Id) From Employees)

Select * From Employees Where Salary = (Select Min(Salary) From Employees) Or Salary = (Select MAX(Salary) From Employees)
