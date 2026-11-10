mysql> create database harkiratdbms38;
Query OK, 1 row affected

mysql> use harkiratdbms38;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,salary)
    -> values
    -> (101,'Akash','Jain',30000),
    -> (102,'Arjun','Gupta',40000),
    -> (103,'Arni','Pathak',35000),
    -> (104,'harkirat','saluja',50000),
    -> (105,'Abhilasha','Thakur',45000);
Query OK, 5 rows affected
Records: 5  Duplicates: 0  Warnings: 0

mysql> select max(salary) - min(salary) as 'Salary Difference'
    -> from employees;
+------------------+
| Salary Difference |
+------------------+
|         20000.00 |
+------------------+
1 row in set
