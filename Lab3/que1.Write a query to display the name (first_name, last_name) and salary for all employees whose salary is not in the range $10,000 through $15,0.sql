mysql> create database harkiratdbms19;
Query OK, 1 row affected

mysql> use harkiratdbms19;
Database changed

mysql> create table employees (employee_id int primary key,first_name varchar(30),last_name varchar(30),salary decimal(10,2) );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,salary)values(101,'Akash','Jain',9000),(102,'Arjun','Gupta',12000),(103,'Arni','Pathak',15000),(104,'harkirat','saluja',18000),(105,'Abhilasha','Thakur',25000);
Query OK, 5 rows affected
Records: 5  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,salary
    -> from employees
    -> where salary not between 10000 and 15000;
+------------+-------------+----------+
| first_name | last_name   | salary   |
+------------+-------------+----------+
| Akash      | Jain        |  9000.00 |
| harkirat   | saluja      | 18000.00 |
| Abhilasha  | Thakur     | 25000.00 |
+------------+-------------+----------+
3 rows in set
