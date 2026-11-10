mysql> create database harkiratdbms21;
Query OK, 1 row affected

mysql> use harkiratdbms21;
Database changed

mysql> create table employees (employee_id int primary key,first_name varchar(30),last_name varchar(30),salary decimal(10,2),department_id int);
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,salary,department_id)
    -> values(101,'Akash','Jain',9000,30),(102,'Arjun','Gupta',12000,30),(103,'Arni','Pathak',18000,100),(104,'harkirat','saluja',14000,30),(105,'Abhilasha','Thakur',25000,50),(106,'Rakesh','Sharma',20000,100);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,salary
    -> from employees
    -> where salary not between 10000 and 15000
    -> and department_id in (30,100);
+------------+-------------+----------+
| first_name | last_name   | salary   |
+------------+-------------+----------+
| Akash       | Jain       |  9000.00 |
| Arni       | Pathak      | 18000.00 |
| Rakesh      | Sharma      | 20000.00 |
+------------+-------------+----------+
3 rows in set
