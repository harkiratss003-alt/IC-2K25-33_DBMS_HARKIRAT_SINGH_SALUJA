mysql> create database harkiratdbms33;
Query OK, 1 row affected (0.01 sec)

mysql> use harkiratdbms33;
Database changed

mysql> create table employees (first_name varchar(30),last_name varchar(30),salary decimal(10,2));
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(first_name,last_name,salary)
    -> values('Akshat','rawat',30000),('Arjun','kahor',40000),('Arni','jain',35000),('harkirat','saluja',50000),('Bhawat','Pathak',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select first_name, last_name, salary, salary * 15 / 100 as PF
      from employees;
+------------+-------------+----------+---------+
| first_name | last_name   | salary   | PF      |
+------------+-------------+----------+---------+
| Akshat     | rawat       | 30000.00 | 4500.00 |
| Arjun      | kahor       | 40000.00 | 6000.00 |
| Arni       | jain        | 35000.00 | 5250.00 |
| harkirat   | saluja      | 50000.00 | 7500.00 |
| Bhawat     | Pathak      | 45000.00 | 6750.00 |
+------------+-------------+----------+---------+
5 rows in set (0.00 sec)

mysql>
