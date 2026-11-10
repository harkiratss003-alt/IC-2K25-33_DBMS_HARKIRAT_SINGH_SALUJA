mysql> create database harkiratdbms16;
Query OK, 1 row affected (0.01 sec)

mysql> use harkiratdbms16;
Database changed

mysql> create table employees (
    -> employee_id int,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(employee_id,first_name,last_name,salary)
    -> values
    -> (101,'Akash','Jain',30000),
    -> (102,'Arjun','Gupta',40000),
    -> (103,'Arni','Pathak',35000),
    -> (104,'harkirat','saluja',50000),
    -> (105,'Abhilasha','Thakur',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select concat(first_name,' ',last_name) as `Employee Name`,
    -> length(concat(first_name,' ',last_name)) as `Name Length`
    -> from employees;
+-----------------+-------------+
| Employee Name   | Name Length |
+-----------------+-------------+
| Akash Jain      |          10 |
| Arjun Gupta     |          11 |
| Arni Pathak     |          10 |
| harkirat saluja |        16 |
| Abhilasha Thakur   |          12 |
+-----------------+-------------+
5 rows in set (0.00 sec)

mysql>
