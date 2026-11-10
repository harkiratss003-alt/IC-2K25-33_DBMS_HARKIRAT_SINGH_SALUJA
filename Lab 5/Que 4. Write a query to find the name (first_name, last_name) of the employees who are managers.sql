mysql> CREATE DATABASE harkiratdbms33;
Query OK, 1 row affected

mysql> USE harkiratdbms33;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> manager_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (100, 'ritu', 'sing', NULL),
    -> (101, 'reena', 'rhhar', 100),
    -> (102, 'rex', 'Djen', 100),
    -> (103, 'Alex', 'hold', 102),
    -> (104, 'Bruce', 'nentt', 103),
    -> (105, 'David', 'gogins', 103),
    -> (106, 'ritta', 'roy', 101);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE employee_id IN (
    ->     SELECT DISTINCT manager_id
    ->     FROM employees
    ->     WHERE manager_id IS NOT NULL
    -> );
