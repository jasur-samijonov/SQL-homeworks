use W3Resource
---Task 1
select sum(purch_amt) as 'sum' from [Inventory].[Orders]

---Task 2
select avg(purch_amt) as 'avg' from [Inventory].[Orders]

---Task 3
select count(distinct salesman_id ) as 'count' from  [Inventory].[Orders]

---Task 4
select count(*) as 'count' from  [Inventory].[Customer]

---Task 5
select count(all grade) from [Inventory].[Customer]

---Task 6
select Max(purch_amt) as 'max' from [Inventory].[Orders]

---Task 7
select min(purch_amt) as 'min' from [Inventory].[Orders]

---Task 8 
select city, max(grade) as 'max' from [Inventory].[Customer]
group by city

---Task 9
select customer_id,max(purch_amt) as 'max' from [Inventory].[Orders]
group by customer_id

---Task 10 
select CUSTOMER_ID, ord_date,max(purch_amt) as 'max' from [Inventory].[Orders]
group by customer_id,ord_date

---Task 11
select salesman_id, max(purch_amt) as 'max' from [Inventory].[Orders]
group by salesman_id, ord_date
having ord_date='2012-08-17'

---Task 12
select CUSTOMER_ID, ord_date,max(purch_amt) as 'max' from [Inventory].[Orders]
group by customer_id,ord_date
having max(purch_amt)>2000

---Task 13
select CUSTOMER_ID, ord_date,max(purch_amt) as 'max' from [Inventory].[Orders]
group by customer_id,ord_date
having max(purch_amt) between 2000 and 6000

---Task 14
select CUSTOMER_ID, ord_date,max(purch_amt) as 'max' from [Inventory].[Orders]
group by customer_id,ord_date
having max(purch_amt) in (2000, 3000, 5760, 6000)

---Task 15
select customer_id,max(purch_amt) as 'max' from [Inventory].[Orders]
group by customer_id
having customer_id between 3002 and 3007

---Task 16
select customer_id,max(purch_amt) as 'max' from [Inventory].[Orders]
group by customer_id
having customer_id between 3002 and 3007 and max(purch_amt)>1000

---Task 17
select salesman_id, max(purch_amt) as 'max' from [Inventory].[Orders]
group by salesman_id
having salesman_id between 5003 and 5008

---Task 18
select count(ord_date ) as 'count' from  [Inventory].[Orders]
group by ord_date
having ord_date='2012-08-17'

---Task 19
select count(*) as 'count' from [Inventory].[salesman]

---Task 20
select ord_date, salesman_id, count(ord_date) as 'count' from [Inventory].[Orders]
group by ord_date,salesman_id

---Task 21
select avg(pro_price) as 'avg price' from [dbo].[item_mast]

---Task 22
select count(*) as 'count' from [dbo].[item_mast]
where pro_price>=350

---Task 23
select avg(pro_price) as 'avg price', pro_com from [dbo].[item_mast]
group by pro_com

---Task 24
select sum(dep_location) from [Employee].[emp_department]

---Task 25
select emp_dept, count(emp_dept) as 'count' from [dbo].[emp_details]
group by emp_dept