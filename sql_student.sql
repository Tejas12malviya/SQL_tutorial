CREATE DATABASE college;
USE college;
SELECT * FROM student;

Create table teacher(
id INT,
name varchar(50),
subject varchar (25),
salary INT );

INSERT into teacher
values
(23,'Tejas','Maths',50000),
(47,'Kratika','English',60000),
(18,'Shivani','Chemistry',45000),
(9,'Rashik','Social Studies',70000);

Select * from teacher;

Alter Table teacher
modify id INT primary key;

Select name,salary from teacher
where salary>55000;

Alter table teacher
rename Column salary to ctc;

Update teacher
set ctc=(ctc+ 0.25*ctc);

set SQL_SAFE_UPDATES=0;

alter table teacher
add column city varchar(50) default 'Gurgaon'; 

Select * from student
where marks>75;

select distinct city from student;

select city, max(marks) from student
group by city;

alter table student
drop column grade;

select avg(marks)
from student;

alter table student
add column grade varchar(1) ;

update  student
set grade='O'
where marks>=90;

update  student
set grade='A'
where marks between 80 and 90;

update  student
set grade='B'
where marks between 70 and 80;

update  student
set grade='F'
where marks <=60;

select * from student
where city like "%e";

select * from student
where marks between 80 and 99;

select * from teacher;


update teacher 
set city = 'Delhi'
where id=18 ;

SHOW VARIABLES LIKE 'datadir';
