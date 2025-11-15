Create Database Company;
use Company;
create table employees(
id int primary key,
name varchar(50),
department varchar(20),
salary Decimal(10,2),
expirence int
);
insert into employees(id,name,department,salary,expirence) 
values
(1,"Alice","HR",50000,5),
(2,"Bob","Engineer",70000,8),
(3,"Charlie","Engineer",60000,3),
(4,"David","HR",45000,1),
(5,"Eve","Marketing",55000,4);
select*from Employees;

Alter table employees change expirence expierence int;



select*from Employees;


---- 1ST qUSTION---

select id,name,expirence,
if(expirence>=5,"Senior","Junior")as expirence_lavel
from employees;


--- 2ND QUESTION---

select id, name, department,salary,
if (department="engineering",salary*0.10,salary*0.05)as Bonus
from employees;

---- 3RD QUESTION

select id,name,salary,expierence,
if(salary>(select Avg(salary) from employees),
"above salary","Below Salary") as salarylavel from employees;


--- 4th Question---

select id,name,salary,expierence,
if (expierence>=5 and salary>50000,"Elegible","Not Elegible")as PromotionElegiblity
from employees;

create table employees1(
emp_id int primary key,
name varchar(50),
department varchar(30),
salary int,
expierence int,
grnder varchar(10)
);

alter table employees1 change grnder gender varchar(10);

INSERT into employees1 Values
(1,"Alice","HR",40000,3,"Female"),
(2,"Bob","Finance",60000,6,"Male"),
(3,"Charlie","IT",55000,4,"Male"),
(4,"David","IT",80000,10,"Male"),
(5,"Eva","Finane",45000,2,"Female"),
(6,"Frank","HR",50000,7,"Male"),
(7,"Grace","IT",30000,1,"Female"),
(8,"Halen","Finance",70000,9,"Female"),
(9,"Ian","HR",65000,8,"Male"),
(10,"Juli","IT",48000,3,"Female");         

select*from employees1;
select name,salary,gender,
case
when salary>70000 Then "High"
when salary between 40000 and 70000 then "Medium"
else "low"
end as salary_lavel
from employees1;                                                                                                                                                                                                                                                                                                                                                            	`	`	```````````````````````````	`

