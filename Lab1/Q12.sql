mysql> CREATE DATABASE harkiratdbms33;
Query OK, 1 row affected

mysql> USE harkiratdbms33;
Database changed

mysql> CREATE TABLE countries (
    -> country_id INT AUTO_INCREMENT PRIMARY KEY,
    -> country_name VARCHAR(40),
    -> region_id INT
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO countries (country_name, region_id)
    -> VALUES
    -> ('Pakistan', 1),
    -> ('China', 2),
    -> ('United Kingdom', 3),
    -> ('Japan', 4);
Query OK, 4 rows affected
mysql> SELECT * FROM countries;
+------------+----------------+-----------+
| country_id | country_name   | region_id |
+------------+----------------+-----------+
|          1 | Pakistan       |         1 |
|          2 | China          |         2 |
|          3 | United Kingdom |         3 |
|          4 | Japan          |         4 |
+------------+----------------+-----------+
4 rows in set
