mysql> create database harkiratdbms33;
Query OK, 1 row affected

mysql> use harkiratdbms33;
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
    -> (101,'Akash','Jain','Programmer',30000),
    -> (102,'Arjun','Gupta','Manager',40000),
    -> (103,'Arni','Pathak','Accountant',35000),
    -> (104,'harkirat','saluja','Manager',50000),
    -> (105,'Abhilasha','Thakur','Accountant',45000),
    -> (106,'Rakesh','Sharma','Programmer',40000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select job_id, avg(salary) as 'Average Salary'
    -> from employees
    -> where job_id <> 'Programmer'
    -> group by job_id;
+------------+----------------+
| job_id     | Average Salary |
+------------+----------------+
| Manager    |    45000.0000  |
| Accountant |    40000.0000  |
+------------+----------------+
2 rows in set
