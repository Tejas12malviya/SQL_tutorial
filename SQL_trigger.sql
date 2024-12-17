-- Trigger command

-- before insert



CREATE TRIGGER new_marks
on student
instead of insert
as begin
insert into student(std_id,name,address,class,marks,lname) 
select std_id,name,address,class,marks+5,lname
from inserted;
end;

insert into student 
values (8,'Ishan','Indore',10,84,'Sharma');

select * from student;

drop trigger new_marks;



-- after insert

create trigger after_trigger
on student
after insert
as begin
update student
set marks=marks+12
where std_id in(select std_id from inserted)
end;

insert into student(std_id,name,address,class,marks,lname)
values (9,'Ayush','Delhi',11,75,'Soni'),
(10,'Ritesh','Raipur',7,69,'Mehera');

select* from student;

drop trigger after_trigger;