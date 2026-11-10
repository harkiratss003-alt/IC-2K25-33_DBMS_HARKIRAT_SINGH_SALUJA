mysql> CREATE DATABASE harkiratdbms60;
Query OK, 1 row affected

mysql> USE harkiratdbms60;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'jay', 'karnavat', 50000),
    -> (102, 'tharn', 'Khothari', 47000),
    -> (103, 'Arni', 'Rawat', 40000),
    -> (104, 'harkirat', 'saluja', 35000),
    -> (105, 'Thara', 'kamta', 31000),
    -> (106, 'Ranal', 'Gori', 26000);
Query OK, 6 rows affected

mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary DESC
    -> LIMIT 1 OFFSET 4;
