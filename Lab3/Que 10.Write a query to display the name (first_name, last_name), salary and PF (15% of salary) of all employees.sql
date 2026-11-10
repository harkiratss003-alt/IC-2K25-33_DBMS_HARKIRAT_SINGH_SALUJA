mysql> create database harkiratdbms29;
Query OK, 1 row affected

mysql> use harkiratdbms29;
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

mysql> select first_name,last_name,salary,salary*15/100 as PF
    -> from employees;
+------------+-------------+----------+---------+
| first_name | last_name   | salary   | PF      |
+------------+-------------+----------+---------+
| Akash       | Jain       | 30000.00 | 4500.00 |
| Arjun       | Gupta      | 40000.00 | 6000.00 |
| Arni       | Pathak      | 35000.00 | 5250.00 |
| harkirat      | saluja | 50000.00 | 7500.00 |
| Abhilasha      | Thakur     | 45000.00 | 6750.00 |
+------------+-------------+----------+---------+
5 rows in set
