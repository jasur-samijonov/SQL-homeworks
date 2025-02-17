create database homework3
use homework3

--Create table
CREATE TABLE [dbo].[TestMultipleZero]
(
    [A] [int] NULL,
    [B] [int] NULL,
    [C] [int] NULL,
    [D] [int] NULL
)
GO
 
--Insert Data
INSERT INTO [dbo].[TestMultipleZero](A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0)
	select * from TestMultipleZero
	where not (A=0 and B=0 and C=0 and D=0)                            ----Puzzle 1


	CREATE TABLE TESTDuplicateCount ( 
    ID INT,
    EmpName VARCHAR(100),
    EmpDate DATETIME
) 
--Insert Data 
INSERT INTO TESTDuplicateCount(ID,EmpName,EmpDate) 
VALUES
(1,'Pawan','2014-01-05'),
(2,'Pawan','2014-03-05'), 
(3,'Pawan','2014-02-05'), 
(4,'Manisha','2014-07-05'), 
(5,'Sharlee','2014-09-05'), 
(6,'Barry','2014-02-05'), 
(7,'Jyoti','2014-04-05'), 
(8,'Jyoti','2014-05-05')

select EmpName, count(EmpName) as 'DupCount' from TESTDuplicateCount

group by EmpName
having count(EmpName)>1                                                ---------Puzzle 2

declare @number int = 6; 
declare @temp int = 0;
declare @n int = 1;

while @n < @number
begin
    if @number % @n = 0
        set @temp = @temp + @n;
    
    set @n = @n + 1;
end

if @temp = @number
    print  'Perfect number';
else
    print 'Not perfect number';                                   -------Task3



