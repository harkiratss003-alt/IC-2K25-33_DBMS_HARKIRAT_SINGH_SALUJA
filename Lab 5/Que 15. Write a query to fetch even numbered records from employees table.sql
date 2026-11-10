mysql> CREATE DATABASE harkiratdbms59;
Query OK, 1 row affected

mysql> USE harkiratdbms59;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (1, 'Abhilasha', 'thakur', 30000),
    -> (2, 'Arvindo', 'vidi', 40000),
    -> (3, 'Arni', 'Jain', 35000),
    -> (4, 'harkirat', 'saluja', 50000),
    -> (5, 'Masi', 'tiwari', 45000),
    -> (6, 'Ram', 'Sharma', 25000);
Query OK, 6 rows affected

mysql> SELECT *
    -> FROM employees
    -> WHERE MOD(employee_id, 2) = 0;
