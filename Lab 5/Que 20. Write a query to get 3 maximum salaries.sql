mysql> CREATE DATABASE harkiratdbms68;
Query OK, 1 row affected

mysql> USE harkiratdbms68;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO employees VALUES
    -> (1, 'Arnav', 25000),
    -> (2, 'Akan', 35000),
    -> (3, 'rman', 45000),
    -> (4, 'harkirat', 40000),
    -> (5, 'Lux', 35000),
    -> (6, 'Dariv', 50000);
Query OK, 6 rows affected
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary DESC
    -> LIMIT 3;
+----------+
| salary   |
+----------+
| 50000.00 |
| 45000.00 |
| 40000.00 |
+----------+
3 rows in set
