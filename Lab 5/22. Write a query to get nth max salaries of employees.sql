mysql> CREATE DATABASE harkiratdbms33;
Query OK, 1 row affected

mysql> USE harkiratdbms33;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO employees VALUES
    -> (1, 'Akash', 25000),
    -> (2, 'Arun', 30000),
    -> (3, 'Avni', 45000),
    -> (4, 'harkirat', 40000),
    -> (5, 'Lakshita', 35000),
    -> (6, 'Ram', 50000);
Query OK, 6 rows affected
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary DESC
    -> LIMIT 1 OFFSET 2;
+----------+
| salary   |
+----------+
| 40000.00 |
+----------+
1 row in set
