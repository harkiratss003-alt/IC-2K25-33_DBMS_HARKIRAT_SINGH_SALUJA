mysql> create database harkiratdbms26;
Query OK, 1 row affected

mysql> use harkiratdbms26;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name)
    -> values
    -> (101,'Akash','Mehta'),
    -> (102,'Arjun','Verma'),
    -> (103,'Arni','Patel'),
    -> (104,'harkirat','Sharma'),
    -> (105,'Abhilasha','Thakur'),
    -> (106,'Rakesh','Meena');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select last_name
    -> from employees
    -> where last_name like '__e%';
+-----------+
| last_name |
+-----------+
| Mehta     |
| Thakur    |
| Meena     |
+-----------+
3 rows in set
