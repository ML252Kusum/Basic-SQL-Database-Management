# Basic-SQL-Database-Management
# Introduction

This repository provides an overview of basic database management using SQL (Structured Query Language). The concepts and examples included here are designed to help beginners understand fundamental database operations, such as creating, reading, updating, and deleting (CRUD) data in a relational database. Whether you're new to SQL or need a refresher, this guide will help you get started.

# Prerequisites
Before diving into the examples, you should have a basic understanding of the following concepts:

SQL: Familiarity with basic SQL syntax and commands.
Relational Databases: Understanding of tables, rows, columns, and relationships between tables.
SQL Database Management System (DBMS): Installation of a DBMS such as MySQL, PostgreSQL, or SQLite.

# Getting Started
1. Setting Up the Database

Install a DBMS:
You can use any relational database management system like MySQL, PostgreSQL, or SQLite. Installation instructions vary depending on the system, so follow the relevant documentation.

Connect to the Database:
Use the DBMS command-line interface or a GUI tool like MySQL Workbench, pgAdmin, or DB Browser for SQLite to connect to your database.

# 2. Create Database:

Query: CREATE DATABASE basic_db_management;

This Query will creates tha new database of the named "basic_db_management"

# 3. Creating Tables :

CREATING CUSTOMERS TABLE:

Query: CREATE TABLE CUSTOMERS (customer_id int primary key,customer_name varchar(30),country varchar(20));

HENCE CUSTOMERS TABLE IS CREATED YOU CAN SEE YOUR TABLE BY USING FOLLOWING QUERY::

select*from customers;  #This query is used to see our table, initially as data is not given so our table's rows shows null values.

Similarly you can create more tables as per your needs!!

# 4. Inserting Data:

Query: INSERT INTO CUSTOMERS(customer_id,customer_name,country) VALUES(1,"John Doe","USA"),(2,"Janne Smith","UK"),
(3,"Steve Jobs","USA"),(4,"Mary Clark","Canada");

Similary you can add more rows!!

# 5. Updating Data:

SUPPOSE YOU  WANT TO UPDATE COUNTRY COLUMN  OF THE CUSTOMERS TABLE:

LETS UPDATE COUNTRY OF THE CUSTOMERS TABLE

QUERY: UPDATE CUSTOMERS SET country="United Kingdom" where customer_id=2;

HENCE YOUR RECORDE GETS UPDATED SUCCESSFULLY!!

# 6. Deleting Data:

Lets delete customer_id = 4 from customers table:

QUERY: DELETE FROM  CUSTOMERS WHERE customer_id=4; 

HENCE DELETED SUCCESSFULLY!!!

# 7. ALTERING TABLE STRUCTURE::

ADDING NEW COLUMN INTO CUSTOMERS TABLE;

QUERY: ALTER TABLE CUSTOMERS ADD Email varchar(30);

HENCE NEW COLUMN GETS ADDED INTO CUSTOMERS TABLE SUCCESSFULLY!!

# 3. MODIFYING AN EXISTING COLUMN;

LETS MODIFY THE COUNTRY COLUMN OF THE CUSTOMERS TABLE;

QUERY: ALTER TABLE CUSTOMERS MODIFY COLUMN  country varchar(50);

HENCE COUNTRY COLUMN MODIFIED SUCCESSFULLY!!

# 7. Droping a Table:

YOU CAN ALSO DROP AN EXISTING TABLE, SO LETS DROP THE CUSTOMERS TABLE 

QUERY: DROP TABLE CUSTOMERS;

HENCE YOUR CUSTOMERS TABLE GETS DROPPED SUCCESSFULLY!!

# HENCE IN THIS WAY YOU CAN PERFORM A BASIC DATABASE MANAGEMENT USING SQL.

# Contributing
Contributions are welcome! If you find any issues or want to add new examples, please feel free to open an issue or submit a pull request.

OWNER: KUSUM
EMAIL: KUSUMY252@GAMIL.COM

THANKYOU! FOR CHECKING OUT THIS REPOSITORY.HAPPY CODING!!



