create table salesman(
salesman_id int, name varchar(20), city varchar(20),comission decimal(2,2))
select * from salesman
insert into salesman values
(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12)

select * from salesman                               ---- Task1,2
where city IN ('Paris','Rome')

select * from salesman
where not city IN ('Paris','Rome')                   ----- Task 3


create table customer (
    customer_id int primary key,
    cust_name varchar(50),
    city varchar(50),
    grade int,
    salesman_id int
);

insert into customer (customer_id, cust_name, city, grade, salesman_id) values
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);

select *
from customer
where customer_id IN (3007, 3008, 3009);                  -----Task 4

select *
from salesman
where comission BETWEEN 0.12 AND 0.14;                   ----- Task 5

create table orders (
    ord_no int primary key,
    purch_amt decimal(10,2),
    ord_date date,
    customer_id int,
    salesman_id int
);
insert into orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) values
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);

select* from orders
where purch_amt between 500 and 4000 and not purch_amt in(948.50,1983.43)            --- Task 6

select * from salesman          
where name between 'A' and 'L'                                             ------Task 7


select * from salesman          
where not name between 'A' and 'L'                                      ----Task8


select* from customer
where cust_name like 'B%'                                            ----Task9

select* from customer
where cust_name like '%n'                                            ---Task 10

select * from salesman
where name like 'N__l%'                                              ---Task11


create table testtable (
    col1 varchar(255)
);

insert into testtable (col1) values
('A001/DJ-402\44_/100/2015'),
('A001_\DJ-402\44_/100/2015'),
('A001_DJ-402-2014-2015'),
('A002_DJ-401-2014-2015'),
('A001/DJ_401'),
('A001/DJ_402\44'),
('A001/DJ_402\44\2015'),
('A001/DJ-402%45\2015/200'),
('A001/DJ_402\45\2015%100'),
('A001/DJ_402%45\2015/300'),
('A001/DJ-402\44');

select * from testtable
where col1 like '%\_%' escape '\'                         ----Task 12


select * from testtable
where col1 not like '%\_%' escape '\'                      ----Task 13

select * from testtable
where col1 like '%/%'                                       ----Task 14

select * from testtable
where col1 not like '%/%'                                 ----Task 15

select * from testtable
where col1 like '%\_/%' escape '\'                        ---Task 16

select * from testtable
where col1 not like '%\_/%' escape '\'                    ---Task 17

select * from testtable
where col1 like '%\%%' escape '\'                          ---Task 18

select * from testtable
where col1 not like '%\%%' escape '\'                          ---Task 19

select * from customer
where grade is null                                         ----Task 20

select * from customer
where not grade is null                                     ---Task 21


CREATE TABLE emp_details (
    EMP_IDNO INT PRIMARY KEY,
    EMP_FNAME VARCHAR(50),
    EMP_LNAME VARCHAR(50),
    EMP_DEPT INT
);

INSERT INTO emp_details (EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT) VALUES
(127323, 'Michale', 'Robbin', 57),
(526689, 'Carlos', 'Snares', 63),
(843795, 'Enric', 'Dosio', 57),
(328717, 'Jhon', 'Snares', 63),
(444527, 'Joseph', 'Dosni', 47),
(659831, 'Zanifer', 'Emily', 47),
(847674, 'Kuleswar', 'Sitaraman', 57),
(748681, 'Henrey', 'Gabriel', 47),
(555935, 'Alex', 'Manuel', 57),
(539569, 'George', 'Mardy', 27),
(733843, 'Mario', 'Saule', 63),
(631548, 'Alan', 'Snappy', 27),
(839139, 'Maria', 'Foster', 57);

select * from emp_details
where EMP_LNAME like 'D%'                                                    ----Task 22
