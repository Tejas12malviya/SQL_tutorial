Select * from student;

--having caluse

select class,count(class) as total_section from student
group by class
having count(class)>1
order by class DESC;

 
update student
set class=8
where std_id=6;

select * from student where marks is null;
select * from student where marks is not null;

select * from student
where class in (10,12)
order by class,marks ;

--concatinate of two column

select *,(name+address) as full_name from student;


--percentage wild card

select * from student where name like '%am%';


-- CASE function -> works like if-else statement.

Select *, case(class) 
when 10 then 'higher class'
when 12 then 'higher secondary class'
else 'lower class'
end as schooling
from student;


