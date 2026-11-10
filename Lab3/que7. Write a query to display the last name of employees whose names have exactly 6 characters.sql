mysql> create database harkiratdbms33;
Query OK, 1 row affected

mysql> use harkiratdbms33;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name)
    -> values
    -> (101,'Akash','Jain'),
    -> (102,'Arjun','Gupta'),
    -> (103,'Arni','Patel'),
    -> (104,'harkirat','Sharma'),
    -> (105,'Abhilasha','Thakur'),
    -> (106,'Rakesh','Singh');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select last_name
    -> from employees
    -> where length(last_name) = 6;
+-----------+
| last_name |
+-----------+
| Jain     |
| Gupta    |
| Sharma    |
+-----------+
3 rows in set
