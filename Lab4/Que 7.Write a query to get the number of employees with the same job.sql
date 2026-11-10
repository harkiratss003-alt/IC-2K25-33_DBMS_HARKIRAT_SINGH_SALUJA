mysql> create database harkiratdbms37;
Query OK, 1 row affected

mysql> use harkiratdbms37;
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
    -> (103,'Arni','Pathak','Programmer'),
    -> (104,'harkirat','saluja','Manager'),
    -> (105,'Abhilasha','Thakur','Programmer'),
    -> (106,'Rakesh','Sharma','Accountant');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select job, count(*) as 'Number of Employees'
    -> from employees
    -> group by job;
+------------+---------------------+
| job        | Number of Employees |
+------------+---------------------+
| Programmer |                   3 |
| Manager    |                   2 |
| Accountant |                   1 |
+------------+---------------------+
3 rows in set
