mysql> CREATE DATABASE harkiratdbms56;
Query OK, 1 row affected

mysql> USE harkiratdbms56;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> manager_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Ankush', 'Verma', NULL),
    -> (102, 'Arjun', 'Ritha', 101),
    -> (103, 'Arni', 'Pathak', 101),
    -> (104, 'harkirat', 'saluja', 102),
    -> (105, 'Rinku', 'Pandey', 102),
    -> (106, 'Rathna', 'verma', 103);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE employee_id NOT IN (
    ->     SELECT DISTINCT manager_id
    ->     FROM employees
    ->     WHERE manager_id IS NOT NULL
    -> );
