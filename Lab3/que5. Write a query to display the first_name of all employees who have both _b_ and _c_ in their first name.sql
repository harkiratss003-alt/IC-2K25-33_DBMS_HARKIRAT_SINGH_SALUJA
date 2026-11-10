mysql> create database harkiratdbms;
Query OK, 1 row affected

mysql> use harkiratdbms;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name)
    -> values
    -> (201,'iggiq','Jain'),
    -> (202,'pjfwn','Gupta'),
    -> (203,'Akash','Pathak'),
    -> (204,'Bobby','Sharma'),
    -> (205,'Alice','Thakur'),
    -> (206,'ohoij','Verma');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select first_name
    -> from employees
    -> where first_name like '%b%'
    -> and first_name like '%c%';
+------------+
| first_name |
+------------+
| iggiq      |
| pjfwn      |
| ohoij      |
+------------+
3 rows in set
