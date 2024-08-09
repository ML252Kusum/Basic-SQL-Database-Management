# CREATING DATABASE
CREATE DATABASE CUSTOMETR_DETAILS;
# HENCE DATABASE CREATED SUCCESSFULLY!!

# USE CUSTOMER_DETAILS DATABASE FOR FURTHER QUERIES
use CUSTOMETR_DETAILS;

# STEP 1: CREATING CUSTOMERS AND ORDERS TABLE INTO CUSTOMETR_DETAILS DATABASE

# CREATING CUSTOMERS TABLE
create table customers(customer_id int primary key,customer_name varchar(30),country varchar(20));
# HENCE CUSTOMERS TABLE IS CREATED WE CAN SEE OUR TABLE BY USING FOLLOWING QUERY::
select*from customers;  #This query is used to see our table, initially as data is not given so our table's rows shows null values.

# CREATING ORDERS TABLE
create table orders(order_id int primary key,customer_id int,order_date date,
foreign key(customer_id) references customers(customer_id));
# HENCE OUR ORDERS TABLE IS CREATED WE CAN SEE OUR TABLE BY USING FOLLOWING QUERY:
select* from orders;

# STEP 2: INSERTING DATA INTO CUSTOMERS AND OREDRS TABLE

# INSERTING DATA INTO CUSTOMERS TABLE
insert into customers(customer_id,customer_name,country) values(1,"John Doe","USA"),(2,"Janne Smith","UK"),
(3,"Steve Jobs","USA"),(4,"Mary Clark","Canada");
# HENCE DATA INTO CUSTOMERS TABLE GETS INSERTED SUCCESSFULLY, WE CAN SEE THAT DATA BY USING FOLLOWING QUERY::
select* from customers;

# INSERTING DATA INTO ORDERS TABLE
insert into orders(order_id,customer_id,order_date) values (101,1,"2023-01-10"),(102,3,"2023-01-15"),
(103,4,"2023-01-20"),(104,2,"2023-02-10");
# HENCE DATA INTO ORDERS TABLE GETS INSERTED SUCCESSFULLY, WE CAN SEE THAT DATA BY USING FOLLOWING QUERY::
select*from orders;

# STEP 3: UPDATING RECORS
# SUPPOSE WE WANT TO UPDATE COUNTRY OF THE CUSTOMER AND AN ORDER DATE;;

# LETS UPDATE COUNTRY OF THE CUSTOMER
update customers set country="United Kingdom" where customer_id=2;
# HENCE OUR RECORDE GETS UPDATED SUCCESSFULLY!!

# LETS UPDATE ORDER DATE
update orders set order_date='2023-02-15' where order_id=101;
# HENCE OUR RECORDE GETS UPDATED SUCCESSFULLY!!

# STEP 4: ADDITIONAL MANAGEMENT TAST IN DATABASE::
# 1. DELETING RECORDS::
# LETS DELETING ONE ROW FROM CUSTOMERS TABLE;

delete from customers where customer_id=4; # Error occurs 
# Note we cannot delete customer_id directly because it is a foregin key constraint of the orders table, so to delete this customer_id = 4, 
#first we have to delete customer_id = 4 from orders table, after that we can delete it from customers table as well..
# Lets delete customer_id = 4 from orders table first;;;
delete from orders where customer_id=4; # Error not occurs
# HENCE DELETED SUCCESSFULLY!!!

# NOW WE CAN DELETE CUSTOMER_ID = 4 FROM CUSTOMERS TABLE AS WELL::
delete from customers where customer_id=4; # HENCE DELETED SUCCESSFULLY!!
select* from customers; # USING THIS QUERY WE CAN SEE OUR RESULTS OR TABLE

# 2. ALTERING TABLE STRUCTURE::
# ADDING NEW COLUMN INTO CUSTOMERS TABLE;

alter table customers add Email varchar(30);
# HENCE NEW COLUMN GETS ADDED INTO CUSTOMERS TABLE SUCCESSFULLY!!

# 3. MODIFYING AN EXISTING COLUMN;
#LETS MODIFY THE COUNTRY COLUMN OF THE CUSTOMERS TABLE;

alter table customers modify column country varchar(50);
# HENCE COUNTRY COLUMN MODIFIED SUCCESSFULLY!!

# 4. DROPING TABLES
# WE CAN ALSO DROP AN EXISTING TABLE, SO LETS DROP THE OREDRS TABLE 

drop table orders;
# HENCE OUR ORDERS TABLE GETS DROPPED SUCCESSFULLY!!

# HENCE IN THIS WAY WE CAN PERFORM A BASIC DATABASE MANAGEMENT USING SQL.
