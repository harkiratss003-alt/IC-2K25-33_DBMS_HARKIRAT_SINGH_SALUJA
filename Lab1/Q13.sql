mysql> CREATE DATABASE harkiratdbms33;
Query OK, 1 row affected

mysql> USE harkiratdbms33;
Database changed

mysql> CREATE TABLE countries (
    -> country_id VARCHAR(2),
    -> country_name VARCHAR(40),
    -> region_id INT,
    -> UNIQUE (country_id, region_id)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO countries VALUES
    -> ('AG', 'Afganistan', 1),
    -> ('CI', 'China', 2),
    -> ('UK', 'United Kingdom', 3),
    -> ('PK', 'Paistan', 4);

Query OK, 4 rows affected
mysql> SELECT * FROM countries;
+------------+----------------+-----------+
| country_id | country_name   | region_id |
+------------+----------------+-----------+
| AG         | Afganistan     |         1 |
| CI         | China          |         2 |
| UK         | United Kingdom |         3 |
| PK         | Paistan        |         4 |
+------------+----------------+-----------+
4 rows in set
