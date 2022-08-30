CREATE TABLE Employees
(emp_id	int,
	emp_name	varchar(15),
	Gender	char(1),
	job_name	varchar(20),
	manager_id	int,
	hire_date	Datetime,
	salary	Decimal(10,2),
	commission	Decimal(7,2),
	dep_id	int,
	PassportNumber	Varchar(20)
)


CREATE TABLE TelephoneDetails	
(   ID	Int,
	Emp_ID	int,
	TelephoneNumber	Varchar(14)
)

CREATE TABLE department
(
    dep_id  Int ,
    dep_name    Varchar(20) ,
    dep_location    Varchar(15)
)


drop table department3

drop table Employees3

drop table TelephoneDetails3

create table Slab	
(
	Slab_ID	int	,
	min_sal	int	Not Null,
	max_sal	int	Not Null,
	[Desc]	Varchar(50)	Not Null
)


insert into department(dep_id,dep_name,dep_location) values (1001,'FINANCE','Sydney')

select * from department
insert into Department values (2001, 'AUDIT',  'MELBOURNE'), (3001, 'MARKETING',   'PERTH'),(4001, 'PRODUCTION',   'BRISBANE')

insert into department
select 2002,'HR','INDIA'

UPDATE department SET dep_id='abc',dep_location='xyz'

DELETE from department

Insert into Slab Select 1,800,1300,'Lower'
Insert into Slab Select 2,1301,1500,'middle'
Insert into Slab Select 3,1501,2100,'upperMiddle'
Insert into Slab Select 4,2101,3100,'High'
Insert into Slab Select 5,3101,9999,'UpperHigh'


SELECT * from Slab

delete from Slab

DELETE from Slab WHERE Slab_ID=2

select * from Employees

Insert into Employees Select 68319 ,'KAYLING','M','PRESIDENT',0,'11/18/1991',6000,NULL,1001,NULL
Insert into Employees Select 66928 ,'BLAZE','M','MANAGER',68319,'5/1/1991',2750,NULL,3001,NULL
Insert into Employees Select 67832 ,'CLARE','F','MANAGER',68319,'6/9/1991',2550,NULL,1001,NULL
Insert into Employees Select 65646 ,'JONAS','M','MANAGER',68319,'4/2/1991',2957,NULL,2001,NULL
Insert into Employees Select 64989 ,'ADELYN','M','SALESMAN',66928,'2/20/1991',1700,400,3001,NULL
Insert into Employees Select 65271 ,'WADE','M','SALESMAN',66928,'2/22/1991',1350,600,3001,NULL
Insert into Employees Select 66564 ,'MADDEN','M','SALESMAN',66928,'9/28/1991',1350,1500,3001,NULL
Insert into Employees Select 68454 ,'TUCKER','M','SALESMAN',66928,'9/8/1991',1600,NULL,3001,NULL
Insert into Employees Select 68736 ,'ADNRES','M','CLERK',67858,'5/23/1997',1200,NULL,2001,NULL
Insert into Employees Select 69000 ,'JULIUS','M','CLERK',66928,'12/3/1991',1050,NULL,3001,NULL
Insert into Employees Select 69324 ,'MARKER','M','CLERK',67832,'1/23/1992',1400,NULL,1001,NULL
Insert into Employees Select 67858 ,'SCARLET','F','ANALYST',65646,'4/19/1997',3100,NULL,2001,NULL
Insert into Employees Select 69062 ,'FRANK','M','ANALYST',65646,'12/3/1991',3100,NULL,2001,NULL
Insert into Employees Select 63679 ,'SANDRINE','F','CLERK',69062,'12/18/1990',900,NULL,2001,NULL

select * from TelephoneDetails

Insert into TelephoneDetails Select 5001,68319,1234
Insert into TelephoneDetails Select 5002,66928,4321
Insert into TelephoneDetails Select 5003,67832,1345
Insert into TelephoneDetails Select 5004,65646,8790
Insert into TelephoneDetails Select 5005,64989,4567
Insert into TelephoneDetails Select 5006,64989,4444
Insert into TelephoneDetails Select 5007,65271,8734
Insert into TelephoneDetails Select 5008,66564,2345
Insert into TelephoneDetails Select 5009,68454,6789
Insert into TelephoneDetails Select 5010,68736,8762
Insert into TelephoneDetails Select 5011,69000,3344
Insert into TelephoneDetails Select 5012,69324,3345
Insert into TelephoneDetails Select 5013,67858,8769
Insert into TelephoneDetails Select 5014,69062,5555
Insert into TelephoneDetails Select 5015,63679,9908


select * from Employees as e

SELECT * from Employees AS e WHERE dep_id=1001

select job_name,sum(salary) from Employees group by job_name

select job_name,count(*) from Employees as e group by job_name

select job_name,count(*) from Employees as e group by job_name having COUNT(*) >  3

select * from Employees as e order by emp_name DESC

select * from TelephoneDetails as t

SELECT * from department

SELECT * from Slab

select * from TelephoneDetails as t order by Emp_ID
SELECT Slab_ID,sum(min_sal) as salary from Slab GROUP by Slab_ID

drop table persons

CREATE TABLE [dbo].[Persons](
	[ID] [int] PRIMARY key,
	[LastName] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[Age] [int] NULL
) ON [PRIMARY]
GO

select * from Persons


create table Orders(
	OrderID int,
	OrderNumber int,
	PersonId int
)

alter table Orders add order1 int

alter table Orders alter column order1 VARCHAR(100)

alter table Orders drop COLUMN order1

sp_help Orders
sp_rename 'Orders' ,'NewOrders'

select * from NewOrders


-- Write a query in SQL to display all the information of the employees.

select * from Employees

-- Write a query in SQL to find the salaries of all employees.

select emp_id,emp_name,salary from Employees

-- Write a query in SQL to display the unique designations for the employees.

select distinct job_name from Employees

-- Write a query in SQL to list the emp_name and salary is increased by 15% and expressed as no.of Dollars.

select emp_name, concat(salary*1.15/79.51,' $')  as "salary in Dollars" from Employees

SELECT emp_name, salary,concat((salary+salary*0.15)/79.16,' $') as "salary(No. of Dollars)" FROM Employees;

--Write a query in SQL to produce the output of employees name and job name as a fromat of "Employee & Job".

select concat(emp_name,' is ',job_name) as "Employee & Job" from Employees

--Write a query in SQL to produce the output of employees as follows.
--Employee
--JONAS(manager).

select concat(emp_name,'(',job_name,')') as "Employee" from Employees

SELECT * from Persons

sp_help Persons

alter table Persons alter column age INT NOT NULL

drop table Persons

create table persons
(
    ID int UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age INT,
    CONSTRAINT XYZ UNIQUE(ID)
)

sp_help persons

alter table persons add CONSTRAINT UK_person_ID UNIQUE(ID)
alter table persons drop CONSTRAINT UQ__persons__3214EC26150FA538

create table persons
(
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age INT,
    CONSTRAINT XYZ UNIQUE(ID)
)



CREATE TABLE department
(
    dep_id  Int ,
    dep_name    Varchar(20) ,
    dep_location    Varchar(15)
)


alter table department alter column dep_id INT NOT NULL
alter table department add UNIQUE(dep_name)
alter table department add PRIMARY key(dep_id)

create table persons
(
    ID int PRIMARY KEY,
    LastName varchar(255) UNIQUE,
    FirstName varchar(255) NOT NULL,
	Gender char(1) check (Gender in ('M','F')),
    Age INT CHECK (Age <= 18)
    CONSTRAINT XYZ UNIQUE(ID)
)

drop table persons

CREATE TABLE PERSONS
(
    ID INT PRIMARY KEY,
    LastName VARCHAR(255) UNIQUE,
    FirstName VARCHAR(255) NOT NULL,
    Gender char(1),
    Age INT,
    CONSTRAINT chk_age CHECK (age <= 18)
);
alter table Persons add check (gender IN ('M','F'))
alter table persons add CONSTRAINT chk_XYZ CHECK (age >= 18)

drop table PERSONS
CREATE TABLE persons
(
    ID INT PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Gender char(1),
    Age INT,
);
alter table persons add DEFAULT 'M' for FirstName
alter table persons add CONSTRAINT df_age DEFAULT 12 for age
alter table persons drop CONSTRAINT df_age

DROP table Orders
CREATE TABLE Orders
(
    OrderID int Primary Key,
    OrderNumber int NOT NULL,
    PersonID INT FOREIGN KEY REFERENCES Persons(ID)
)

CREATE TABLE [dbo].[Persons](
	[ID] [int] PRIMARY key,
	[LastName] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[Age] [int] NULL
) ON [PRIMARY]
GO

drop table Orders
create table Orders
(
    OrderID int PRIMARY key,
    OrderNumber int NOT NULL,
    PersonID INT,
    CONSTRAINT FK_Orders_PersonID FOREIGN KEY (PersonID) REFERENCES Persons(ID)
)

ALTER TABLE ORDERS ADD FOREIGN KEY (PersonID) REFERENCES Persons(ID)

create table Orders(
    OrdersID int IDENTITY PRIMARY Key,
    OrderNumber INT NOT NULL,
    PersonID INT
)
select * from Orders AS o
INSERT INTO Orders
(
    OrderNumber,
    PersonId
)
VALUES
(
    220,
    33
)

create table New_Table (
    ID int IDENTITY PRIMARY key,
    FD int null,
    SD int null,
    TD as FD + SD
)

insert into New_Table
(
    FD,
    SD
)
Values
(
    80,
    90
)

select * from New_Table

select *, salary+1000 as "Increased salary" from Employees

select *, salary/1000 as "Increased salary" from Employees

select *, salary%1000 as "Increased salary" from Employees

select *, salary-1000 as "Increased salary" from Employees

select * from Employees where salary BETWEEN 1000 and 3000
select * from Employees as e where e.job_name = 'Salesman' or e.salary = 1000
select * from Employees as e where e.salary IN (1700,1350)

select * from Employees as e where e.commission is not Null

select * from Employees as e where emp_name like 'a%'

select * from Employees as e where emp_name like '%r%'

if exists (select * from Employees as e where emp_name like '%a%') then 'abc'

select * from Employees as e where exists (select * from department)

create table DEPT (
    id int, name varchar (10), [address] varchar(10)
)
delete from dept

insert into dept 
select 1,'xxx','yyy'

if exists (select * from sys.objects as o where o.name = 'Dept')
drop table DEPT;


SELECT * from #TempEmployee from Employee as e

SELECT * from #TempEmployee


select * from Employees
select * into #TempEmployee from Employees as e
select * from #TempEmployee
select * into ##Temp from employees as e
select * from ##Temp

select * into #emp from Employees as e
 select  * from Employees as e
 UNION 
 SELECT  * from #emp

 select emp_id, emp_name, 0 as sal from Employees as e
 UNION ALL
 select emp_id,emp_name,salary from #emp


select * from dept
 select  emp_id from Employees as e
 UNION all
 SELECT  id FROM Dept

 DECLARE @Varvalue INT;
 set @Varvalue=1234
 PRINT @Varvalue


BEGIN
 if @Varvalue = 1234
 BEGIN
 PRINT 'Value is 1234'
 END
 ELSE if @Varvalue=5678
 BEGIN
 PRINT 'Value is 5678'
 END
 ELSE
 BEGIN
 PRINT 'Wrong value'
 END

 END


DECLARE @Count INT;
set @Count = 1
WHILE @Count < 10
BEGIN 
PRINT @Count 
set @Count = @Count+1
END

DECLARE @Count1 INT;
set @Count1 = 1
WHILE @Count1 < 10
BEGIN 
PRINT @Count1 
set @Count1 = @Count1+1

if @Count1>5
BREAK
ELSE
CONTINUE

END

select *,case when gender='M' then 'Male'
when e.gender = 'F' then 'Female'
else 'wrong Data'
END
from Employees as e
DECLARE @cnt Int 

DECLARE @cnt1 int =0
xyz:
if @cnt1 < 10
BEGIN
PRINT @cnt1
set @cnt1=@cnt1+1
END
if @cnt1 < 10
GOTO
xyz


SELECT *, 

CASE WHEN gender = 'M' THEN 'Male' 
 WHEN e.Gender = 'F' THEN 'Female'
		ELSE 'Wrong Data'
		End
FROM Employee AS e

 SELECT CASE WHEN e.Gender = 'M' THEN 'male'
		WHEN e.Gender = 'F' THEN 'Female'
		ELSE 'Wrong data'
		END AS FullFormOfGender,
			 * FROM Employee AS e
 
 SELECT CASE WHEN e.commission IS NULL THEN (SELECT Emp_Name FROM Employee AS e2 WHERE e2.emp_id = 63679)
 WHEN e.commission IS NOT NULL THEN (SELECT Emp_Name FROM Employee AS e2 WHERE e2.emp_id = 64989)
 END AS Dt,

SELECT * from employees

 

 --Assignments
 
--7. Write a query in SQL to list the employees with Hire date in the format like February 22, 1991. 
select emp_id,emp_name,date_format(hire_date,'%M,%d,%Y') "Hire Date" from employees;

--8. Write a query in SQL to count the no. of characters of Emp name with out considering the spaces for each name. 
select emp_name, length(emp_name) "No of Characters" from employees;

--9. Write a query in SQL to list the emp_id,salary, and commission of all the employees. 
select emp_id,salary,commission from employees;

--10. Write a query in SQL to display the unique department with jobs.
select distinct (dep_id),job_name from employees;

--11. Write a query in SQL to list the employees who does not belong to department 20. 
select emp_id,emp_name,dep_id from employees
where dep_id!=20;

--12. Write a query in SQL to list the employees who joined before 1991. 
select emp_id,emp_name,dep_id, hire_date from employees where hire_date<'1991-01-01';

--13. Write a query in SQL to display the average salaries of all the employees who works as ANALYST.
select  avg(salary)"Average salary" from Employees where job_name='ANALYST';

--14. Write a query in SQL to display the details of the employee BLAZE. 
 select * from employees where emp_name='BLAZE';

--15. Write a query in SQL to display all the details of the employees whose commission is more than their salary.

--16. Write a query in SQL to list the employees whose salary is more than 3000 after giving 25% increment.
select emp_id,emp_name,round(Salary*1.25,2) "Incremented Salary" from employees where Salary*1.25>3000;

--17. Write a query in SQL to list the name of the employees, those having six characters to their name.
select emp_id,emp_name from employees where length(emp_name)=6;


--18. Write a query in SQL to list the employees who joined in the month January. 
SELECT emp_name,hire_date from Employees where datename(month, dateadd(month,0, hire_date))=‘January’;


--19. Write a query in SQL to list the name of employees and their manager separated by the string 'works for'.  
select emp_id,manager_id,CONCAT(emp_name,' works for ',manager_id) as 'employee and Manager' from Employees

--20. Write a query in SQL to list all the employees whose designation is CLERK.
select emp_id,emp_name from employees where job_name='CLERK';

--21. Write a query in SQL to list the employees whose experience is more than 27 years. 
select emp_id,emp_name, hire_date from employees where floor(Datediff(curdate(),hire_date)/365)>10;


--22. Write a query in SQL to list the employees whose salaries are less than 3500.
select emp_id,emp_name,Salary from employees where Salary<3500;

--23. Write a query in SQL to list the name, job_name, and salary of any employee whose designation is ANALYST.  
select emp_name,job_name,salary from Employees where job_name='ANALYST'

--24. Write a query in SQL to list the employees who have joined in the year 1991. 
select emp_id,emp_name,hire_date from Employees where hire_date='1991';

--25. Write a query in SQL to list the name, id, hire_date, and salary of all the employees joined before 1 apr 91.  
select emp_id,emp_name,hire_date,salary from Employees where hire_date<'1991-04-01';

--26. Write a query in SQL to list the employee name, and job_name who are not working under a manager.
SELECT emp_name,job_name from Employees where manager_id =0

--27. Write a query in SQL to list all the employees joined on 1st may 91.
select * from employees where hire_date='1991-05-01'

--28. Write a query in SQL to list the id, name, salry, and experiences of all the employees working for the manger 68319. 
select emp_id,emp_name,Salary,floor(datediff(CURRENT_DATE(),hire_date)/365) "Experience(Years)" from Employees where manager_id=68319

--29. Write a query in SQL to list the id, name, salary, and experience of all the employees who earn more than 100 as daily salary.  
select emp_id,emp_name,Salary, Salary/30 "Daily Salary",floor(datediff(curdate(),hiredate)/365) "Experience(Years)" from Employees where Salary/30 > 100;

--30. Write a query in SQL to list the employees who are retiring after 31-Dec-99 after completion of 8 years of service period. 
select emp_id,emp_name,floor(datediff('1989-12-31',hire_date)/365) 'Service' from Employees floor(datediff('1989-12-31',hire_date)/365)=8;

--31. Write a query in SQL to list those employees whose salary is an odd value.
SELECT * FROM Employees WHERE salary%2!=0

-- 32. Write a query in SQL to list those employees whose salary contain only 3 digits.
SELECT * FROM Employees WHERE salary<1000

-- 33. Write a query in SQL to list the employees who joined in the month of APRIL.
SELECT * FROM Employees WHERE hire_date LIKE '%-04-%'

-- 34. Write a query in SQL to list the employees those who joined in company before 19th of the month.
SELECT * FROM Employees WHERE hire_date like '%-%-19'

-- 35. List the employees who are SALESMAN and gathered an experience which month portion is more than 10.
select emp_id,emp_name,job_name,floor(DATEDIFF(YEAR,GETDATE(),hire_date)/365) ' Experience(Years) '  from Employees where floor(datediff(curdate(),hire_date)/365)>10 and job_name =‘SALESMAN’;

-- 36. Write a query in SQL to list the employees of department id 3001 or 1001 joined in the year 1991.
SELECT * FROM Employees WHERE dep_id in (1001,3001);

-- 37. Write a query in SQL to list the employees of department id 3001 or 1001 joined in the year 1991.
select emp_id,emp_name,dep_id,hire_date  from Employees where dep_id in (3001,1001) and hire_date like ’1991-%’;

-- 38. Write a query in SQL to list all the employees of designation CLERK in department no 2001.
SELECT * FROM Employees WHERE job_name=‘CLERK’ and dep_id=2001;

-- 39. Write a query in SQL to list the ID, name, salary, and job_name of the employees for -
--  1. Annual salary is below 34000 but receiving some commission which should not be more than the salary,
SELECT emp_id,job_name, salary ,salary*12  ” Annual Salary” FROM Employees WHERE salary*12<34000 and commission <= salary;

--  2. And designation is SALESMAN and working for department 3001.
SELECT * FROM Employees WHERE job_name=‘SALESMAN’ and dep_id=3001;

-- 40. Write a query in SQL to list the employees who are either CLERK or MANAGER.
SELECT * FROM Employees WHERE job_name=‘CLERK’ or job_name=‘MANAGER’;

-- 41. Write a query in SQL to list the employees who joined in any year except the month February.
SELECT * FROM Employees WHERE hire_date!=‘%-02-%’;

-- 42. Write a query in SQL to list the employees who joined in the year 91.
SELECT emp_id,emp_name,hire_date FROM Employees WHERE hire_date =‘1991 %’;

-- 43. Write a query in SQL to list the employees who joined in the month of June in 1991.
select emp_id,emp_name,hire_date from Employees where hire_date like ‘1991-06%’;

-- 44. Write a query in SQL to list the employees whose annual salary is within the range 24000 and 50000.
SELECT * FROM Employees WHERE salary*12>=24000 and salary*12<=50000;

-- 45. Write a query in SQL to list the employees who have joined on the following dates 1st May,20th Feb, and 03rd Dec in the year 1991.
select emp_id,emp_name,hire_date from Employees where hire_date in (‘1991-05-01’,‘1991-02-20’,‘1991-12-03’);

-- 46. Write a query in SQL to list the employees working under the managers 63679,68319,66564,69000.
SELECT * FROM Employees WHERE manager_id in (63679,68319,66564,69000);

-- 47. Write a query in SQL to list the employees who joined after the month JUNE in the year 1991.
SELECT * FROM Employees WHERE hire_date > ‘1991-06-30’;

-- 48. Write a query in SQL to list the employees who joined in 90's.
select emp_id,emp_name,hire_date from Employees where hire_date between ‘1990-01-01’ and ‘1999-12-31’;

-- 49. Write a query in SQL to list the managers of department 1001 or 2001.
SELECT * FROM Employees WHERE job_name=‘MANAGER’ and dep_id in (1001,2001);

-- 50. Write a query in SQL to list the employees, joined in the month FEBRUARY with a salary range between 1001 to 2000.
select emp_id,emp_name,salary,hire_date from Employees where hire_date like ‘%-02-%’ and salary between 1001 and 2000;

-- 51. Write a query in SQL to list all the employees who joined before or after 1991.
select emp_id,emp_name,hire_date from Employees where hire_date < ‘1991-01-01’ or hire_date >‘1991-12-31’;

-- 52. Write a query in SQL to list the employees along with department name.
SELECT emp_name , dep_name FROM Employees e , department d WHERE e.dep_id=d.dep_id;

-- 53. Write a query in SQL to list the name, job name, annual salary, department id, department name and grade of the employees who earn 60000 in a year or not working as an ANALYST.
SELECT emp_name,job_name,salary*12 “Annual Salary”, dep_name  FROM Employees e, department d WHERE salary*12 =60000 or job_name != ‘ANALYST’ and e.dep_id=d.dep_id
select e.emp_name,e.job_name,e.salary*12 “Annual Salary”,d.dep_id,d.dep_name from Employees e join department d on e.dep_id=d.dep_id  where e.salary*12=60000 or e.job_name!=‘ANALYST’;

-- 54. Write a query in SQL to list the name, job name, manager id, salary, manager name, manager’s salary for those employees whose salary is greater than the salary of their managers.
select e.emp_name,e.job_name,e.manager_id “Manager ID”,e.salary “EMP SAL”,m.emp_name “Manager Name”,m.salary “Manager SAL”  
from Employees e join Employees m on e.manager_id=m.emp_id where e.salary>m.salary;

-- 55. Write a query in SQL to list the employees name, department, salary and commission. For those whose salary is between 2000 and 5000 while location is PERTH.
select e.emp_name,d.dep_name,e.salary,e.commission,d.dep_location  from Employees e join department d on e.dep_id=d.dep_id  where e.salary between 2000 and 5000 and d.dep_location=‘PERTH’;

-- 57. Write a query in SQL to list the employees whose manager name is JONAS.
select e.emp_name, m.emp_name “Manager Name” from Employees e join Employees m  on e.manager_id=m.emp_id where m.emp_name like ‘JONAS’;

-- 59. Write a query in SQL to list the employees who are working either MANAGER or ANALYST with a salary range between 2000 to 5000 without any commission.
select e.emp_name,e.job_name,e.salary  from Employees e  where job_name in (‘MANAGER’,‘ANALYST’) and e.salary between 2000 and 5000;

-- 60. Write a query in SQL to list the id, name, salary, and location of the employees working at PERTH,or MELBOURNE with an experience over 10 years.
select e.emp_id,e.emp_name,e.salary,d.dep_location,floor(datediff(curdate(),e.hire_date)/365) “Experience”  
from Employees e inner join department d on e.dep_id = d.dep_id where d.dep_location in (‘PERTH’,‘MELBOURNE’) and floor(datediff(curdate(),e.hire_date)/365)>=10;

-- 61. Write a query in SQL to list the employees along with their location who belongs to SYDNEY, MELBOURNE with a salary range between 2000 and 5000 and joined in 1991.
select e.emp_name,d.dep_location,e.salary,e.hire_date from Employees e inner join department d WHERE d.dep_location in (“SYDNEY”,‘MELBOURNE’) and e.salary between 2000 and 5000 and hire_date like (’1991-%’);

-- 63. Write a query in SQL to list the employees who are senior to their own manager.
select e.emp_name,m.emp_name “MANAGER”,e.hire_date “EMP Hire date”, m.hire_date “MGR Hire date”  from Employees e inner join Employees m  on e.manager_id=m.emp_id  where e.hire_date < m.hire_date;

-- 65. Write a query in SQL to list the employees in department PRODUCTION or AUDIT who joined after 1991 and they are not MARKER or ADELYN to their name.
select e.emp_name, d.dep_name,e.hire_date  from Employees e inner join department d on e.dep_id=d.dep_id WHERE d.dep_name in (‘PRODUCTION’,‘AUDIT’) and e.hire_date >‘1991-12-31’ and e.emp_name not in (‘MARKER’,‘ADELYN’);

-- 66. Write a query in SQL to list the employees in the ascending order of their salaries.
 select * from Employees order by salary;

-- 67. Write a query in SQL to list the details of the employees in ascending order to the department_id and descending order to the jobs
select  emp_name,dep_id, job_name from Employees order by dep_id,job_name desc;

-- 68. Write a query in SQL to display all the unique job in descending order.
select distinct(job_name) “Unique Job”  from Employees  order by job_name desc;

-- 69. Write a query in SQL to list the id, name, monthly salary, daily salary of all the employees in the ascending order of their annual salary.
select emp_id,emp_name,salary,round((salary/30),2) “DAILY SAL”,salary*12 “ANNUAL_SAL”  from Employees  order by ANNUAL_SAL;

-- 70. Write a query in SQL to list the employees in descending order who are either ‘CLERK’ or ‘ANALYST’.
select emp_name,job_name  from Employees  where job_name in (‘CLERK’,‘ANALYST’) order by emp_name desc;

-- 71. Write a query in SQL to display the location of CLARE.
select e.emp_name,d.dep_location from Employees e inner join department d on e.dep_id=d.dep_id where e.emp_name=‘CLARE’;

-- 72. Write a query in SQL to list the employees in ascending order of seniority who joined on 1-MAY-91,or 3-DEC-91, or 19-JAN-90.
select emp_name,hire_date from Employees  where hire_date in (‘1991-05-01’,‘1991-12-03’,‘1990-01-19’) order by hire_date;

-- 73. Write a query in SQL to list the employees who are drawing the salary less than 1000 and sort the output in ascending order on salary.
select emp_name,salary from Employees where salary<1000  order by salary;

-- 74. Write a query in SQL to list the details of the employees in ascending order on the salary.
select * from Employees  order by salary;

-- 75. Write a query in SQL to list the employees in ascending order on job name and descending order on employee id.
select emp_id,emp_name,job_name from Employees order by job_name,emp_id desc;

-- 76. Write a query in SQL to list the unique jobs of department 2001 and 3001 in descending order.
select distinct(job_name) “Unique Jobs”,dep_id from Employees  where dep_id in (2001,3001) order by dep_id desc;

-- 77. Write a query in SQL to list all the employees except PRESIDENT and MANAGER in ascending order of salaries.
select emp_name,job_name,salary from Employees where job_name not in (‘PRESIDENT’,‘MANAGER’)  order by salary;

-- 78. Write a query in SQL to list the employees in ascending order of the salary whose annual salary is below 25000.
select emp_name,salary,salary*12 “ANNUAL_SAL” from Employees  where salary*12<25000 order by salary;

-- 79. Write a query in SQL to list the employee id, name, annual salary, daily salary of all the employees in the ascending order of annual salary who works as a SALESMAN.
select emp_id,emp_name,salary*12 “Annual Sal”,round((salary/30),2) “Daily Sal”,job_name from Employees where job_name=‘SALESMAN’  order by salary*12;


80. Write a query in SQL to list the employee id, name, hire_date, current date and experience of the employees in ascending order on their experiences.
select emp_id,emp_name,hire_date,curdate() "Current Date",
floor(datediff(curdate(),hiredate)/365) "Experience" from employees order by 5;

81. Write a query in SQL to list the employees in ascending order of designations of those, joined after the second half of 1991.
select emp_name,hire_date from employees where hire_date>'1991-12-31' order by job_name

82. Write a query in SQL to list the total information of employees table along with department, and location of all the employees working under FINANCE and AUDIT in the ascending department no. 
select * from employees e inner join department d on e.dep_id=d.dep_id where d.dep_name in ('FINANCE','AUDIT') order by d.dep_id;

87. Write a query in SQL to list the details of the employees along with the details of their departments. 
select * from employees e inner join department d on e.dep_id=d.dep_id;

88. Write a query in SQL to list the employees who are senior to their own MANAGERS. 
select e.emp_name,m.emp_name "MANAGER",e.hire_date "EMP Hire date", m.hire_date "MGR Hire date" from employees e inner join employees m on e.manager_id=m.emp_id
where e.hiredate<m.hiredate;

89. Write a query in SQL to list the employee id, name, salary, and department id of the employees in ascending order of salary who works in the department 1001. 
select e.emp_id,e.emp_name,e.salary,e.dep_id from employees e where e.dep_id=10 order by salary;

90. Write a query in SQL to find the highest salary from all the employees.  
select emp_name,max(salary) "Highest Salary" from employees;

91. Write a query in SQL to find the average salary and average total remuneration(salary and commission) for each type of job.
select round((avg(Salary)),2) "AVG SAL",round(avg(salary+ifnull(comm,0)),2) "Total Renumeration",job_name from employees group by job_name;

92. Write a query in SQL to find the total annual salary distributed against each job.
select Salary*12 "ANNUAL_SAL", job_name from employees group by job_name;

93. Write a query in SQL to list the employee id, name, department id, location of all the employees.
select e.emp_id,e.emp_name,d.dep_id,d.dep_location from employees e inner join department d on e.dep_id=d.dep_id;

94. Write a query in SQL to list the employee id, name, location, department of all the departments 1001 and 2001. 
select e.emp_id,e.emp_name,d.dep_location,d.dep_name,e.dep_id from employees e inner join department d on e.dep_id=d.dep_id where e.dep_id in (1001,2001);

96. Write a query in SQL to list the manager no and the number of employees working for those managers in ascending order on manager id. 
select distinct ifnull(manager_id,"No Manager") "MGR ID",count(*) "No. of Employees" from employees group by manager_id order by manager_id;

97. Write a query in SQL to display the number of employee for each job in each department.
select job_name, count(*) "No. of Employees", dep_id from employees group by dep_id;

--98. Write a query in SQL to list the department where at least two employees are working. 
select dep_id ,count(*) "No. of Employees" from employees group by dep_id having count(*)>=2;


--101. Write a query in SQL to list the no. of employees in each department where the no. is less than 4.
select dep_id,count(*) from employees
group by dep_id
having count(*)<4;

--102. Write a query in SQL to list the name of departments where atleast 2 employees are working in that department. 
select d.dep_name,count(*) from employees e, department d where e.dep_id=d.dep_id
 group by d.dep_name
 having count(*)>=2;

--103. Write a query in SQL to check whether all the employees numbers are indeed unique.
select emp_id,count(*) from employees group by emp_id;

--104. Write a query in SQL to list the no. of employees and average salary within each department for each job name.  
select count(*),round((avg(salary)),2) "AVG SAL",dep_id,job_name from employees group by job_name;

--105. Write a query in SQL to list the names of those employees starting with 'A' and with six characters in length. 
select emp_name from employees where emp_name like 'A%' and length(emp_name)=6;

--106. Write a query in SQL to list the employees whose name is six characters in length and third character must be 'R'
select * from employees where len(emp_name)=6 and emp_name like '__R%';

--107. Write a query in SQL to list the name of the employee of six characters long and starting with 'A' and ending with 'N'. 
select emp_name from employees where len(emp_name)=5 and emp_name like ('A%N');


--108. Write a query in SQL to list the employees who joined in the month of which second character is 'a'.
select emp_name, monthname(hire_date) as "Joined Month" from employees where monthname(hire_date) like '_A%';

--109. Write a query in SQL to list the employees whose names containing the character set 'AR' together. 
select emp_name from employees where emp_name like '%AR%';

--110. Write a query in SQL to list the employees those who joined in 90's. 
select emp_name, hire_date from employees where hire_date between '1990-01-01' and '1990-12-31';









--joins
select e.emp_id.e.emp_name,d.dep_name from employees as e INNER join department as d on e.dep_id=d.dep_id

select e.emp_id.e.emp_name,d.dep_name from employees as e left join DATEPART as d on e.dep_id=d.id

select e.emp_id.e.emp_name,d.dep_name from employees as e INNER join DATEPART as d on e.dep_id=d.id


SELECT * FROM Employee AS e

SELECT * FROM department AS d

SELECT * FROM slab AS s

EMPID, Empname DeptName

Select E.emp_id,e.emp_name,D.dep_name FROM Employees AS e 
INNER JOIN department AS d ON e.dep_id = d.dep_id

-- 
-- 
 
Select E.emp_id,e.emp_name,D.dep_name FROM Employees AS e 
LEFT JOIN department AS d ON e.dep_id = d.dep_id

Select E.emp_id,e.emp_name,D.dep_name FROM department AS d 
right JOIN Employees AS e ON d.dep_id = e.dep_id


Select E.emp_id,e.emp_name,D.dep_name FROM Department AS e 
RIGHT JOIN Employees A

update employees set dep_ID = Null where emp_ID in (68319,
66928,
67832)

select * from employees

SELECT E.emp_id,e.emp_name,D.dep_name FROM Employees AS e
RIGHT JOIN department AS d ON e.dep_id = d.dep_id

SELECT E.emp_id,e.emp_name,D.dep_name FROM Employees AS e
full OUTER JOIN department AS d ON e.dep_id = d.dep_id

select man.emp_name ManName, emp.emp_name EmpName from Employees as emp 
inner join Employees as man on man.emp_id=emp.manager_id


CREATE TABLE Students
(
	ID INT ,
	Student_Name VARCHAR(10)
	
)

CREATE TABLE SUBJECTS
(ID INT,Subject_Name VARCHAR(100))

INSERT INTO Students
SELECT 2,'Ganesh'

INSERT INTO Students
SELECT 2,'Avinash'

INSERT INTO SUBJECTS
(
	ID,
	Subject_Name
)
VALUES
(
	1,
	'Maths'
)

INSERT INTO SUBJECTS
(
	ID,
	Subject_Name
)
VALUES
(
	2,
	'Science'
)

INSERT INTO SUBJECTS
(
	ID,
	Subject_Name
)
VALUES
(
	2,
	'English'
)

SELECT * FROM Students AS s
SELECT * FROM SUBJECTS AS s

SELECT * FROM Students AS s
cross join SUBJECTS AS s2

select dep_ID,sum(Salary) from employees as e group by e.dep_id

select count(emp_id),dep_ID from employees as e group by dep_id

select COUNT(e.emp_id) as empcnt, d.dep_name from Employees as E
inner join department as d on e.dep_id=d.dep_id
GROUP by d.dep_name

select min(hire_date),dep_id,e.emp_id from employees as e 
GROUP by e.dep_id,e.emp_id

select convert (int,round(avg(Salary),0)) as sal from Employees

--STRING FUNCTIONS

select left(emp_name, 2), right (job_name, 3), * from employees as e
select CHARINDEX(‘satish’, ‘a’)

select CHARINDEX(‘K’, emp_name), * from employee as e

select CHAR(65)
select len(rima)
select len(emp_name) lengthofEmpName, * from employee as e
select lower (‘saurabh’)
select PATINDEX(‘%rld%’,’Hello World’)
select replace (rima,1,‘ss’)
elect replace (job_name, ‘ger’, ‘xyz’) from employee as e
select job_name + ‘’ + REPLICATE(job_name, len(emp_name)), len(emp_name) from employee as e

SELECT DATEDIFF(day,'01-Jan-2020',GETDATE())

SELECT DATEDIFF(YEAR,'01-Jan-2020',GETDATE())
SELECT DATEDIFF(day,'01-Jan-2020',GETDATE())
SELECT DATEDIFF(YEAR,hire_date, GETDATE()),* FROM Employee AS e



SELECT DATEDIFF(YEAR,hire_date,GETDATE())

SELECT DATEDIFF(YEAR,hire_date,GETDATE()),* FROM Employee AS e

SELECT DATEADD(MONTH,2,GETDATE())


SELECT DATEADD(YEAR,1,GETDATE())

SELECT DATEADD(MONTH,1,Hire_date),* FROM Employee AS e

SELECT DATEADD(YEAR,1,hire_date),* FROM Employee AS e


create SCHEMA sat;

create schema payroll;
create SCHEMA HR;
create table HR.table1
(id int,name varchar(10))

SELECT * from rimadb.dbo.Employees AS e
SELECT * FROM rimadb..Employees
SELECT * FROM rimadb.hr.table1 AS t
CREATE SYNONYM SYN_EMP for rimadb.dbo.Employees
SELECT * FROM SYN_EMP
SELECT * INTO Emp_rima From Employees AS e
DELETE FROM Emp_rima WHERE emp_id IN (65271,64646)

SELECT  * FROM sys.objects AS o WHERE TYPE='U'

CREATE VIEW vw_employees
AS
SELECT e.emp_name,e.Gender,d.dep_name  FROM Employees AS e
Inner JOIN department AS d ON e.dep_id=d.dep_id

select * from vw_employees;


CREATE VIEW def
AS
SELECT * FROM department;
SELECT * FROM def;
ALTER TAble department ADD pqr varchar(10)
SELECT * FROM department AS d


select * from Employees where dep_id IN
(select dep_id FROM department AS d)
SELECT * from employees as e where salary = (select min(e2.salary) from employees as e2)


select * from employees as e where salary IN (
    select min(salary) from Employees e1 where e.dep_id = e1.dep_id
    GROUP BY e1.dep_id
)

select * from employees as e where e.dep_id IN
(
    select d.dep_id from department as d where d.dep_id = e.dep_id
)
select * from employees ORDER by dep_id

SELECT (SELECT COUNT(*) FROM department ) AS cntdept , * FROM Employees AS e

--columner query
SELECT(SELECT DISTINCT emp_id from Employees AS e2 WHERE e.emp_id=e2.emp_id) ,
* FROM Employees AS e where e.emp_id IN
(SELECT DISTINCT emp_id FROM Employees AS e2 WHERE e.emp_id=e2.emp_id)


create proc pr_employees
AS
BEGIN
select * from employees as e;
END

exec pr_employees

create proc pr_Calc(@FirstValue int,@SecondValue int)
as 
BEGIN
select @FirstValue+@SecondValue;
END

exec pr_Calc 2,3;

create proc emp_details
as 
BEGIN
select emp_id,emp_name,gender,salary
from Employees
where job_name='manager';
END

exec emp_details

create PROCEDURE emp_pro(@job_name VARCHAR(20))
AS
BEGIN
    SELECT emp_id, emp_name, Case when gender = 'M' then 'Male' when Gender = 'F' then 'Female' END as gender, datediff(year, hire_date, GETDATE()) as yoe,  salary * 12 as salary from Employees
where dep_id is not null;
END

emp_pro 'salesman'

Create Function fn__getData (@EMPID int)
Returns INT
AS
BEGIN
DECLARe @varReturnValue INT;
SELECT @varReturnValue = DATEDIFF(YEAR,e.hire_date,GETDATE()) FROM EMployees AS e
WHERE e.emp_id=@EMPID;
RETURN @varReturnValue;
END
CREATE FUNCTION fn_getDataFromDate(@dtHireDate Datetime)
RETURNS INT
AS
BEGIN
DECLARE @varReturnValue INT;
SELECT @varReturnValue =DATEDIFF(YEAR,@dtHireDate,GETDATE());
RETURN @varReturnValue;
END
SELECT dbo.fn__getdata(e.emp_id) AS yearsoFExp,  * FROM Employees AS e
SELECT dbo.fn_getDataFromDate('01-Jan-2019')
SELECT dbo.fn_getDataFromDate(hire_date), * From EMployees AS e

CREATE FUNCTION fn_getDataFromDate (@Hire_date Datetime)
RETURNS int
AS
BEGIN
    DECLARE @varReturnValue INT;
    SELECT @varReturnValue = DATEDIFF(YEAR,@dtHireDate,GETDATE());
    RETURN @varReturnValue;
END
 SELECT dbo.fn_getDataFromDate(e.hire_date) AS yearsOFEx

Create function Initcap (@mystring VARCHAR(50))
RETURN varchar(50)
AS
BEGIN
DECLARE @val VARCHAR(50);
set @val = (select upper(left(@mystring,1)) + lower(substring(@mystring,2,datalength(@mystring)-1)))
RETURN @val;
END;
SELECT
upper(left(@mystring,1)) + lower(SUBSTRING(‘Hello’,2,5))
select upper (left(‘hello’,1))
lower(substring(@mystring,2,datalength(@mystring)-1))
select dbo.initCap(‘hello world’)

CREATE Trigger tr_Employees ON Employees
AFTER INSERT,UPDATE ,delete
AS
BEGIN
INSERT INTO employee_tr
SELECT * FROM INSERTED;
INSERT INTO employee_tr
SELECT * FROM DELETED;
DECLARE @Comm INT,
SELECT @Comm=commission FROM INSERTED
IF @Comm = 100
BEGIN
UPDATE Employees SET commission=commission + 10 WHERE emp_id=
(SELECT emp_id FROM INSERTED)
END
END


CREATE Trigger tr_Employees ON Employees
AFTER INSERT,UPDATE ,delete
AS
BEGIN
INSERT INTO employee_tr
SELECT * FROM INSERTED;
INSERT INTO employee_tr
SELECT * FROM DELETED;
DECLARE @Comm INT;
SELECT @Comm=commission FROM INSERTED
IF @Comm = 100
BEGIN
UPDATE Employees SET commission=commission + 10 WHERE emp_id=
(SELECT emp_id FROM inserted)
END
END

DECLARE @xyz VARCHAR
SET @xyz='rima'
SELECT @xyz
SELECT CONVERT(VARCHAR,'rima')