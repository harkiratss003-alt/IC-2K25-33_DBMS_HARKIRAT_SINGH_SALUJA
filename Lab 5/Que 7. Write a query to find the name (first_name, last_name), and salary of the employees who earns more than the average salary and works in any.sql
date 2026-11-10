mysql> CREATE DATABASE harkiratdbms33;
Query OK, 1 row affected

mysql> USE harkiratdbms33;
Database changed

mysql> CREATE TABLE departments (
    -> department_id INT PRIMARY KEY,
    -> department_name VARCHAR(50)
    -> );
Query OK, 0 rows affected

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2),
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO departments VALUES
    -> (10, 'IT'),
    -> (20, 'Sales'),
    -> (30, 'IT Support');
Query OK, 3 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Vidhushi', 'dravad', 35000, 10),
    -> (102, 'Arvind', 'Tiwari', 60000, 10),
    -> (103, 'Arni', 'Pathak', 43000, 20),
    -> (104, 'harkirat', 'saluja', 67000, 30),
    -> (105, 'kavya', 'Parpana', 25000, 20),
    -> (106, 'hemanki', 'Sharma', 45000, 10);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> )
    -> AND department_id IN (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE department_name LIKE 'IT%'
    -> );
