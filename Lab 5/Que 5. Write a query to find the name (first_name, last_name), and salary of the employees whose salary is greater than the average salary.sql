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
    -> (101, 'Ajay', 'radka', 32000),
    -> (102, 'Akash', 'Tiwari', 45000),
    -> (103, 'Arni', 'Pathak', 35000),
    -> (104, 'harkirat', 'saluja', 50000),
    -> (105, 'linda', 'roy', 45000),
    -> (106, 'Ram', 'verma', 27000);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> );
