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
    -> (101,'Akash','Yadav','Programmer'),
    -> (102,'Arjun','Gupta','Manager'),
    -> (103,'Arni','Pathak','Accountant'),
    -> (104,'harkirat','saluja','Programmer'),
    -> (105,'Abhilasha','Thakur','Manager'),
    -> (106,'Rakesh','Sharma','Salesman');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select count(distinct job) as 'Number of Jobs'
    -> from employees;
+----------------+
| Number of Jobs |
+----------------+
|              4 |
+----------------+
1 row in set
