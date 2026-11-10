mysql> create database harkiratdbms33;
Query OK, 1 row affected

mysql> use harkiratdbms33;
Database changed

mysql> create table employees (employee_id int primary key,first_name varchar(30),last_name varchar(30),department_id int);
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,department_id)values(101,'Akash','Jain',30),(102,'Arjun','Gupta',20),(103,'Arni','Pathak',100),(104,'harkirat','saluja',30),(105,'Abhilasha','Thakur',50),(106,'Rakesh','Sharma',100);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,department_id
    -> from employees
    -> where department_id in (30,100)
    -> order by department_id asc;
+------------+-------------+---------------+
| first_name | last_name   | department_id |
+------------+-------------+---------------+
| Akash      | Jain       |            30 |
| harkirat    | saluja      |            30 |
| Arni       | Pathak      |           100 |
| Rakesh      | Sharma      |           100 |
+------------+-------------+---------------+
4 rows in set
