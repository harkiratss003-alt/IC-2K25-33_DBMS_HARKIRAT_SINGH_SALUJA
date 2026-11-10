mysql> CREATE DATABASE harkiratdbms33;
Query OK, 1 row affected

mysql> USE harkiratdbms33;
Database changed

mysql> CREATE TABLE locations (
    -> location_id INT PRIMARY KEY,
    -> country_id VARCHAR(2)
    -> );
Query OK, 0 rows affected

mysql> CREATE TABLE departments (
    -> department_id INT PRIMARY KEY,
    -> department_name VARCHAR(50),
    -> location_id INT
    -> );
Query OK, 0 rows affected

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> manager_id INT,
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO locations VALUES
    -> (1000, 'CI'),
    -> (2000, 'US'),
    -> (3000, 'IN');
Query OK, 3 rows affected

mysql> INSERT INTO departments VALUES
    -> (10, 'Administration', 1000),
    -> (20, 'Marketing', 2000),
    -> (30, 'IT', 1000),
    -> (40, 'Sales', 3000);
Query OK, 4 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Alex', 'Hold', 100, 30),
    -> (102, 'Bruce', 'VAN', 101, 30),
    -> (103, 'David', 'GOGENS', 101, 30),
    -> (104, 'krily', 'berg', NULL, 10),
    -> (105, 'kano', 'rin', NULL, 10),
    -> (106, 'Jako', 'Smot', 105, 40),
    -> (107, 'Sarah', 'kie', 101, 20);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE manager_id IS NOT NULL
    -> AND department_id IN (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE location_id IN (
    ->         SELECT location_id
    ->         FROM locations
    ->         WHERE country_id = 'US'
    ->     )
    -> );
