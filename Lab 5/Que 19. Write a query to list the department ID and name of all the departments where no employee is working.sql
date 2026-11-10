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
    -> employee_name VARCHAR(50),
    -> department_id INT,
    -> FOREIGN KEY (department_id)
    -> REFERENCES departments(department_id)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO departments VALUES
    -> (10, 'IT'),
    -> (20, 'HR'),
    -> (30, 'Finance'),
    -> (40, 'Marketing'),
    -> (50, 'Sales');
Query OK, 5 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Akanay', 10),
    -> (102, 'jayesh', 20),
    -> (103, 'Arni', 10),
    -> (104, 'harkirat', 30);
Query OK, 4 rows affected
mysql> SELECT d.department_id, d.department_name
    -> FROM departments d
    -> WHERE NOT EXISTS (
    ->     SELECT 1
    ->     FROM employees e
    ->     WHERE e.department_id = d.department_id
    -> );
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|            40 | Marketing       |
|            50 | Sales           |
+---------------+-----------------+
2 rows in set
