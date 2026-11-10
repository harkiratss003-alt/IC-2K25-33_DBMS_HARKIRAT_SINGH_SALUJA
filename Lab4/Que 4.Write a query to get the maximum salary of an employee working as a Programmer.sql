mysql> create database harkiratdbms34;
Query OK, 1 row affected

mysql> use harkiratdbms34;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,job,salary)
    -> values
    -> (101,'Akash','Jain','Programmer',30000),
    -> (102,'Arjun','Gupta','Manager',45000),
    -> (103,'Arni','Pathak','Programmer',40000),
    -> (104,'harkirat','saluja','Programmer',50000),
    -> (105,'Abhilasha','Thakur','Accountant',35000),
    -> (106,'Rakesh','Sharma','Programmer',45000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select max(salary) as 'Maximum Salary'
    -> from employees
    -> where job = 'Programmer';
+----------------+
| Maximum Salary |
+----------------+
|       50000.00 |
+----------------+
1 row in set
