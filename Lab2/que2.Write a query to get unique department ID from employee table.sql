mysql> create database harkiratdbms33;
Query OK, 1 row affected (0.01 sec)

mysql> use harkiratdbms33;
Database changed

mysql> create table employees (first_name varchar(30),last_name varchar(30),department_id int);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(first_name,last_name,department_id)
    -> values('Akshay','verma',10),('Arjun','rathor',20),('Arni','Patvari',10),('harkirat','saluja',30),('jaydeep','singh',20);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select distinct department_id from employees;
+---------------+
| department_id |
+---------------+
|            10 |
|            20 |
|            30 |
+---------------+
3 rows in set (0.00 sec)

mysql>
