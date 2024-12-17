-- BUILT-IN FUNCTION

--conversion function
Select CAST('98' as int) as cast_conversion -- here str '98' is converted into integer using cast function
select CONVERT(int,'123') as convert_conversion;

--logical function
select CHOOSE(3,'Test','Rest','Zest','Pest') as chhose_function -- here index=3 is called which tells that we have to have to call 3rd element,, indexing is called from 1
select IIF(1>10,'True','False') as iif_function;

--Math function
Select ABS(-45) as abs_function,RAND() as rand_function,EXP(-2) as exp_function,
ROUND(2.456789,2) as round_function,FLOOR(4.789) as floor_function,
CEILING(4.235) as ceiling_function,SIGN(-45) as sign_function,SQRT(64) as square_root,
SQUARE(9) as square_function,POWER(5,3) as power_function;

--Date and time function  
select SYSDATETIME() as current_dt,DATEPART(Year,SYSDATETIME()) as current_year,DATEDIFF(day,'11/15/2001',SYSDATETIME()) as birth_days,DATEADD(MONTH,6,'10/22/2024') as future_dt;
