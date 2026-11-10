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
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO departments VALUES
    -> (10, 'Administration'),
    -> (20, 'Marketing'),
    -> (60, 'IT'),
    -> (90, 'Manager');
Query OK, 4 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Alex', 'nold', 60),
    -> (102, 'Bruce', 'van', 60),
    -> (103, 'kaven', 'Austin', 60),
    -> (104, 'kris', 'berg', 10),
    -> (105, 'ritu', 'sing', 90),
    -> (106, 'rex', 'kadani', 90);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE department_id = (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE department_name = 'IT'
    -> );
