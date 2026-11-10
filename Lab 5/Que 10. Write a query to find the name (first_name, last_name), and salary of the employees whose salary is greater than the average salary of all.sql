mysql> CREATE DATABASE harkiratdbms54;
Query OK, 1 row affected

mysql> USE harkiratdbms54;
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
    -> (101, 'kasry', 'Yadav', 30000, 10),
    -> (102, 'Ravna', 'Tiwari', 43000, 10),
    -> (103, 'Anjni', 'Pathak', 27000, 20),
    -> (104, 'harkirat', 'saluja', 50000, 30),
    -> (105, 'Roka', 'Patidar', 48000, 20),
    -> (106, 'Kanak', 'Sharma', 35000, 30);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> );
