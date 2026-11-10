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
    -> (1,'rex',' jadson',15000),
    -> (2,'william','Hold',9000),
    -> (3,'Kimberely','andrew',7000),
    -> (4,'RK ','Smith',9000),
    -> (5,'sathi','ruln',7100),
    -> (6,'Rani','rajhna',17000),
    -> (7,'rita','singh',25000);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE last_name = 'Bull'
    -> );
