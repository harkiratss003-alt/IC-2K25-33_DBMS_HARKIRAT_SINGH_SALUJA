mysql> CREATE DATABASE harkiratdbms66;
Query OK, 1 row affected

mysql> USE harkiratdbms66;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO employees VALUES
    -> (1, 'Ishika', 20000),
    -> (2, 'Janvi', 22000),
    -> (3, 'Arni', 24000),
    -> (4, 'harkirat', 26000),
    -> (5, 'Lav', 28000),
    -> (6, 'Rahul', 30000),
    -> (7, 'Priyal', 32000),
    -> (8, 'Rohan', 34000),
    -> (9, 'kush', 36000),
    -> (10, 'Aman', 38000),
    -> (11, 'Aneet', 40000),
    -> (12, 'Pushpa', 42000);
Query OK, 12 rows affected
mysql> SELECT *
    -> FROM employees
    -> ORDER BY employee_id DESC
    -> LIMIT 10;
+-------------+---------------+----------+
| employee_id | employee_name | salary   |
+-------------+---------------+----------+
|          12 | Pushpa        | 42000.00 |
|          11 | Aneet         | 40000.00 |
|          10 | Aman          | 38000.00 |
|           9 | kush          | 36000.00 |
|           8 | Rohan         | 34000.00 |
|           7 | Priyal        | 32000.00 |
|           6 | Rahul         | 30000.00 |
|           5 | Lav           | 28000.00 |
|           4 | harkirat      | 26000.00 |
|           3 | Arni          | 24000.00 |
+-------------+---------------+----------+
10 rows in set
