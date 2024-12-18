SHOW DATABASES;

create table student1 like student;
insert into student1 select * from student;
select* from student1;
create trigger name 
before insert on student 
for each row
set new.marks=new.marks+5 ;

select grade,
count(CASE
when 'O' then 1
when 'A' then 2
when 'B' then 3
else 4
END) as count_grade
from student
group by grade;

select *,
CASE
when marks>75 then '1st_division'
when marks>50 then '2nd_division'
when marks>33 then '3rd_division'
else 'Fail'
END as Division
from student;

