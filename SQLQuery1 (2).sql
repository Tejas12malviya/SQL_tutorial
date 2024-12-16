
-- Create new database and delete it 

CREATE database student;
DROP database student;


-- Create new table

CREATE database School;
USE School
CREATE table student(
std_id int primary key,
name varchar(50),
address varchar(100),
class int,
marks int
)


--Insertion of values in created table

insert into student
(std_id,name,address,class,marks)
values
(1,'Kamlesh','Bhopal',10,58),
(2,'Ramesh','Indore',9,76),
(3,'Rashik','Rewa',12,95),
(4,'Deepak','Bhopal',12,91),
(5,'Shivam','Bhopal',10,86);

select* from student;


-- where clause  --> use for conditonal statement

select * from student
where marks>85;


-- And,Or,Not operator

select * from student
where class=10 and marks>80;

select* from student
where class=10 or class=12;

select * from student as high_class
where class !< 10;

