mysql> create database harkiratdbms35;
Query OK, 1 row affected

mysql> use harkiratdbms35;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> department_id int,
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,department_id,salary)
    -> values
    -> (101,'Akash','Jain',90,30000),
    -> (102,'Arjun','Gupta',90,40000),
    -> (103,'Arni','Pathak',50,35000),
    -> (104,'harkirat','saluja',90,50000),
    -> (105,'Abhilasha','Thakur',90,45000),
    -> (106,'Rakesh','Sharma',60,25000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select avg(salary) as 'Average Salary',
    -> count(*) as 'Number of Employees'
    -> from employees
    -> where department_id = 90;
+----------------+---------------------+
| Average Salary | Number of Employees |
+----------------+---------------------+
|    41250.000000|                   4 |
+----------------+---------------------+
1 row in set
