mysql> create database harkiratdbms44;
Query OK, 1 row affected

mysql> use harkiratdbms44;
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
    -> (101,'Akash','Jain',10,30000),
    -> (102,'Arjun','Gupta',10,40000),
    -> (103,'Arni','Pathak',10,35000),
    -> (104,'harkirat','saluja',10,50000),
    -> (105,'Abhilasha','Thakur',10,45000),
    -> (106,'Rahul','Sharma',10,25000),
    -> (107,'Ritu','Verma',10,32000),
    -> (108,'Atharv','Gupta',10,38000),
    -> (109,'Naven','Patel',10,42000),
    -> (110,'Rakesh','Joshi',10,36000),
    -> (111,'Krish','Mehta',10,39000),
    -> (112,'Puneet','Singh',20,28000),
    -> (113,'Viabhav','Jain',20,35000);
Query OK, 13 rows affected
Records: 13  Duplicates: 0  Warnings: 0

mysql> select department_id, avg(salary) as 'Average Salary'
    -> from employees
    -> group by department_id
    -> having count(*) > 10;
+---------------+----------------+
| department_id | Average Salary |
+---------------+----------------+
|            10 |    37416.6667  |
+---------------+----------------+
1 row in set
