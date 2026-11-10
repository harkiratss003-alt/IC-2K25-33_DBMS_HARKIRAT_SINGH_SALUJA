mysql> CREATE DATABASE harkiratdbms53;
Query OK, 1 row affected

mysql> USE harkiratdbms53;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2),
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Anakay', 'Yadav', 33000, 10),
    -> (102, 'Randhan', 'Tiwari', 40000, 10),
    -> (103, 'Ajnini', 'Pathak', 29000, 20),
    -> (104, 'harkirat', 'saluja', 28000, 30),
    -> (105, 'Lakshy', 'Rajk', 45000, 20),
    -> (106, 'Ram', 'Sharma', 37000, 30);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary = (
    ->     SELECT MIN(salary)
    ->     FROM employees
    -> );
