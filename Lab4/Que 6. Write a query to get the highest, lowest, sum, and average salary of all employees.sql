mysql> create database harkiratdbms36;
Query OK, 1 row affected

mysql> use harkiratdbms36;
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

mysql> select max(salary) as 'Highest Salary',
    -> min(salary) as 'Lowest Salary',
    -> sum(salary) as 'Total Salary',
    -> avg(salary) as 'Average Salary'
    -> from employees;
+----------------+---------------+--------------+----------------+
| Highest Salary | Lowest Salary | Total Salary | Average Salary |
+----------------+---------------+--------------+----------------+
|       50000.00 |      30000.00 |    200000.00 |    40000.0000  |
+----------------+---------------+--------------+----------------+
1 row in set
