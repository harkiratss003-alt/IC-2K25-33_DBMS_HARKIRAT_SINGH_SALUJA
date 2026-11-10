mysql> CREATE DATABASE harkiratdbms33;
Query OK, 1 row affected

mysql> USE harkiratdbms33;
Database changed

mysql> CREATE TABLE countries (
    -> country_id VARCHAR(2) PRIMARY KEY,
    -> country_name VARCHAR(40),
    -> region_id DECIMAL(10,0)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO countries
    -> VALUES ('IN', 'India', 1),
    ->        ('PK', 'Pakistan', 2),
    ->        ('CI', 'China', 3);
Query OK, 3 rows affected

mysql> SELECT * FROM countries;
+------------+----------------+-----------+
| country_id | country_name   | region_id |
+------------+----------------+-----------+
| IN         | India          |         1 |
| PK         | Pakistan        |         2 |
| CI         | China          |         3 |
+------------+----------------+-----------+
3 rows in set
