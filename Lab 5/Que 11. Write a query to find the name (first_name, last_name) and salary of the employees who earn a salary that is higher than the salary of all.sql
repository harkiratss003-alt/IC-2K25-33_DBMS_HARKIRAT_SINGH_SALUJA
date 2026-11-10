mysql> CREATE DATABASE harkiratdbms33;
Query OK, 1 row affected

mysql> USE harkiratdbms33;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> job_id VARCHAR(20),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Arnav', 'takhur', 'IT_PROG', 30000),
    -> (102, 'Abhilaha', 'Tiwari', 'SH_CLERK', 25000),
    -> (103, 'Arni', 'Pathak', 'SH_CLERK', 28000),
    -> (104, 'harkirat', 'saluja', 'IT_PROG', 50000),
    -> (105, 'Lokesh', 'nidar', 'SA_REP', 35000),
    -> (106, 'Charan', 'Sharma', 'IT_PROG', 40000),
    -> (107, 'Pranjal', 'Patel', 'SH_CLERK', 22000);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > ALL (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE job_id = 'SH_CLERK'
    -> )
    -> ORDER BY salary ASC;
