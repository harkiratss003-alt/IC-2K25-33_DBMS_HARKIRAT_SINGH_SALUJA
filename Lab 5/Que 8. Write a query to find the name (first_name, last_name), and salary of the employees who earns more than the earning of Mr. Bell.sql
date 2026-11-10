mysql> CREATE DATABASE harkiratdbms33;
Query OK, 1 row affected

mysql> USE harkiratdbms33;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Akray', 'vadav', 40000),
    -> (102, 'radhan', 'trarku', 46000),
    -> (103, 'Arni', 'Pathak', 75000),
    -> (104, 'harkirat', 'saluja', 80000),
    -> (105, 'ramu', 'rathor', 43000),
    -> (106, 'Ramesh', 'Sharma', 45000);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE last_name = 'Bell'
    -> );
