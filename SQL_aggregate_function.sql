-- Aggregate function  ->(COUNT,SUM,MIN,MAX,AVG)
 
 USE School
 select *from student;

 Insert into student values (6,'Rohan','Indore',9,null);


 --COUNT Function -> Returns total number of rows 

 Select count(*) as total_count from student; -- Returns total number of row in the table.
 Select count(marks) as marks_column from student; -- Returns number of rows present in marks column excluding null values.
 Select COUNT(distinct class) as number_of_class from student;

 
 --SUM Function -> Returns sum of values inside the given column.
 
 Select SUM(marks) from student as total_marks;


 --MAX,MIN Function -> Return maximum and minmum values.

 Select MAX(marks) as maximum_marks,MIN(marks) as minimum_marks from student;

 --AVG Function

 Select AVG(marks) as avg_marks from student;