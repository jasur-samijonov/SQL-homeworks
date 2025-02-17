create database homework2
use  homework2

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

CREATE TABLE orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10,2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002);

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

CREATE TABLE nobel_win (
    year INT,
    subject VARCHAR(50),
    winner VARCHAR(100),
    country VARCHAR(50),
    category VARCHAR(50)
);

INSERT INTO nobel_win (year, subject, winner, country, category) VALUES
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
(1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');


CREATE TABLE item_mast (
    pro_id INT PRIMARY KEY,
    pro_name VARCHAR(50),
    pro_price DECIMAL(10,2),
    pro_com INT
);

INSERT INTO item_mast (pro_id, pro_name, pro_price, pro_com) VALUES
(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board', 450.00, 16),
(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107, 'CD drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12);

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

-------------------PART 1 --------------------------------------------
---Task 1
select * from salesman

---Task 2
select  'This is SQL Exercise, Practice and Solution'

---Task 3
select 1,2,3

---Task 4
select 10+15

---Task 5
select 1+2+3*4

---Task 6
select name, comission from salesman

---Task 7
select ord_date, salesman_id, ord_no, purch_amt from orders

---Task 8
select distinct salesman_id from orders

---Task 9
select name, city from salesman
where city='Paris'

----Task 10
select * from customer
where grade=200

---Task 11
select ord_no, ord_date, purch_amt from orders
where salesman_id=5001

---Task 12
select year,subject,winner from nobel_win
where year=1970

---Task 13
select winner from nobel_win
where subject = 'Literature'
and year=1971

---Task 14
select year,subject from nobel_win
where winner='Dennis Gabor'

---Task 15
select winner from nobel_win
where subject = 'Physics'
and year>=1950

---Task 16 
select year,subject,winner,country from nobel_win
where subject = 'Chemistry'
and year between 1965 and 1975

---Task 17 
select * from nobel_win
where winner in('Menachem Begin','Yitzhak Rabin') and year>1972

---Task 18
select * from nobel_win
where winner like 'Louis%'

---Task 19
select * from nobel_win
where subject='Physics' and year=1970
union (select * from nobel_win where subject='Economics' and year=1971)

---Task 20
select * from nobel_win
where year=1970 and subject not in ('Physiology','Economics')

---Task 21
select * from nobel_win
where subject='Physiology' and year<1971
union (select * from nobel_win
where subject='Peace' and year>1974)

---Task 22
select * from nobel_win
where winner='Johannes Georg Bednorz'

---Task 23
select * from nobel_win
where subject not like 'P%'
order by year desc, winner asc

---Task 24
select * from nobel_win
where year=1970
order by
case when subject in ('Chemistry', 'Economics') then 1
else 0
end,
subject asc

---Task 25
select * from item_mast
where pro_price between 200 and 600

---Task 26
select avg(pro_price) as 'avg_price' from item_mast 
where pro_com=16

---Task 27
select pro_name as 'Item Name', pro_price as 'Price in Rs' from item_mast

---Task 28
select pro_name,pro_price from item_mast
where pro_price>=250
order by pro_price desc,pro_name

---Task 29
select avg(pro_price) as 'avg_price', pro_com from item_mast
group by pro_com

---Task 30
select pro_name,pro_price from item_mast
where pro_price=(select min(pro_price) from item_mast)

---Task 31
select distinct emp_lname from emp_details

---Task 32
select * from emp_details
where EMP_LNAME='Snares'

---Task 33
select * from emp_details
where EMP_DEPT=57


-------------------------------------Part 2 --------------------------------------
---Task1
select * from customer
where grade>100

---Task 2 
select * from customer
where city='New York' and grade>100

---Task 3 
select * from customer
where city='New York' or grade>100

---Task 4
select * from customer
where city='New York' or not grade>100

---Task 5
select * from customer
where not (city='New York' or grade>100)

---Task 6 
select * from orders
where not ((ord_date='2012-09-10' and salesman_id>5005) or purch_amt>1000)

---Task 7 
select * from salesman
where comission >0.10 and comission<0.12

---Task 8
select * from orders
where purch_amt<200 or not (ord_date>='2012-02-10' and customer_id<3009)

---Task 9
select * from orders
where not ((ord_date='2012-08-17' or customer_id>3005) and purch_amt<1000)

---Task 10
select ord_no, purch_amt, (purch_amt/6000*100) as 'achieved',((6000-purch_amt)/6000*100) as 'unachieved' from orders
where purch_amt/6000*100>50

---Task 11
select * from emp_details
where EMP_LNAME in ('Dosni', 'Mardy')

---Task 12
select * from emp_details
where EMP_DEPT in(47,63)

-----------------------------Part 4 -----------------------------------------------------

----Task 1
select salesman_id, name, city,'%' as '%', comission*100 as 'percent' from salesman

----Task 2
select 'For', ord_date, 'there are', count(ord_date) as 'count', 'orders' from orders
group by ord_date


---Task 3
select * from orders
order by ord_no

---Task 4
select * from orders
order by ord_date desc

---Task 5
select * from orders
order by ord_date desc,purch_amt desc

---Task 6
select cust_name, city, grade from customer
order by customer_id

---Task 7
select salesman_id, ord_date, max(purch_amt) as 'max' from orders
group by salesman_id, ord_date
order by salesman_id

---Task 8
select cust_name, city, grade from customer
order by 3 desc

---Task 9
select customer_id, count(distinct ord_no) as 'count', max(purch_amt) as 'max' from orders
group by customer_id
order by 2 desc

---Task 10
select ord_date, sum(purch_amt) as 'sum', sum(purch_amt)*0.15 as'comission' from orders
group by ord_date
order by ord_date
