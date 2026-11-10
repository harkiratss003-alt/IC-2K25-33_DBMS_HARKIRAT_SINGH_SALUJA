mysql> CREATE DATABASE harkiratdbms61;
Query OK, 1 row affected

mysql> USE harkiratdbms61;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Akarak', 'Wadawa', 50000),
    -> (102, 'elina', 'roy', 45000),
    -> (103, 'Aneet', 'Padda', 40000),
    -> (104, 'harkirat', 'saluja', 35000),
    -> (105, 'Lashman', 'hidar', 30000),
    -> (106, 'Rakul', 'Singh', 25000);
Query OK, 6 rows affected

mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary ASC
    -> LIMIT 1 OFFSET 3;
