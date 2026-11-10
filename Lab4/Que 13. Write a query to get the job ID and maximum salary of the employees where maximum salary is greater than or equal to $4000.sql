mysql> create database harkiratdbms43;
Query OK, 1 row affected

mysql> use harkiratdbms43;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job_id varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,job_id,salary)
    -> values
    -> (101,'Akash','Jain','Programmer',3000),
    -> (102,'Arjun','Gupta','Manager',5000),
    -> (103,'Arni','Pathak','Accountant',3500),
    -> (104,'harkirat','saluja','Manager',6000),
    -> (105,'Abhilasha','Thakur','Accountant',4500),
    -> (106,'Rakesh','Sharma','Programmer',4000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select job_id, max(salary) as 'Maximum Salary'
    -> from employees
    -> group by job_id
    -> having max(salary) >= 4000;
+------------+----------------+
| job_id     | Maximum Salary |
+------------+----------------+
| Manager    |        6000.00 |
| Accountant |        4500.00 |
| Programmer |        4000.00 |
+------------+----------------+
3 rows in set
