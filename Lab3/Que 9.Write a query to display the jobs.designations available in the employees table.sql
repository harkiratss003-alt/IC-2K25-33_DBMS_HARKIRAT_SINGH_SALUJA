mysql> create database harkiratdbms33;
Query OK, 1 row affected

mysql> use harkiratdbms33;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,job)
    -> values
    -> (101,'Akash','Jain','Programmer'),
    -> (102,'Arjun','Gupta','Manager'),
    -> (103,'Arni','Pathak','Accountant'),
    -> (104,'harkirat','saluja','Programmer'),
    -> (105,'Abhilasha','Thakur','Manager'),
    -> (106,'Rakesh','Sharma','Salesman');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select distinct job
    -> from employees;
+------------+
| job        |
+------------+
| Programmer |
| Manager    |
| Accountant |
| Salesman   |
+------------+
4 rows in set
