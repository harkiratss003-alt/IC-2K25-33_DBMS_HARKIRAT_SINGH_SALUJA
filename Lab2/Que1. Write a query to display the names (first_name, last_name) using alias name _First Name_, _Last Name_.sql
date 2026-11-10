mysql> use harkiratdbms33;
Database changed

mysql> create table employees (first_name varchar(30),last_name varchar(30));
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(first_name,last_name)
    -> values('Akshay','verma'),('Arjun','rawat'),('Arni','Patwari'),('harkirat','saluja'),('Radha','rathor');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select first_name as `First Name`, last_name as `Last Name` from employees;
+------------+-------------+
| First Name | Last Name   |
+------------+-------------+
| Akshay     | verma       |
| Arjun      | rawat       |
| Arni       | Patwari     |
| harkirat   | saluja      |
| Radha      | rathor      |
+------------+-------------+
5 rows in set (0.00 sec)

mysql>
