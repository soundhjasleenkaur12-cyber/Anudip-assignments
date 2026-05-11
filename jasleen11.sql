mysql> CREATE DATABASE aggrigation;
mysql> INSERT INTO PRODUCTS VALUES('P105','sofa','furniture',10000,11000,13);
Query OK, 1 row affected (0.10 sec)

mysql> use aggrigation;
Database changed
mysql> create table PRODUCTS(PRODUCTS_id VARCHAR(10) NOT NULL PRIMARY KEY ,PRODUCTS_name VARCHAR(10) not null,category VARCHAR(20) NOT NULL, SELLIN_PRICE DOUBLE(12,2)NOT NULL, ORIGINAL_PRICE DOUBLE(12,2) NOT NULL,STOCK INT NOT NULL);
Query OK, 0 rows affected, 2 warnings (0.10 sec)

mysql> INSERT INTO PRODUCTS VALUES(P101,'chair','furniture',6000,5000,12);
ERROR 1054 (42S22): Unknown column 'P101' in 'field list'
mysql> INSERT INTO PRODUCTS VALUES('P101','chair','furniture',6000,5000,12);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO PRODUCTS VALUES('P102','Table','furniture',7000,8000,12);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO PRODUCTS VALUES('P103','bed','furniture',8000,9000,12);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO PRODUCTS VALUES('P104','studytable','furniture',9000,10000,13);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO PRODUCTS VALUES('P105','sofa','furniture',10000,11000,13);
Query OK, 1 row affected (0.01 sec)

mysql> select * from PRODUCTS;
+-------------+---------------+-----------+--------------+----------------+-------+
| PRODUCTS_id | PRODUCTS_name | category  | SELLIN_PRICE | ORIGINAL_PRICE | STOCK |
+-------------+---------------+-----------+--------------+----------------+-------+
| P101        | chair         | furniture |      6000.00 |        5000.00 |    12 |
| P102        | Table         | furniture |      7000.00 |        8000.00 |    12 |
| P103        | bed           | furniture |      8000.00 |        9000.00 |    12 |
| P104        | studytable    | furniture |      9000.00 |       10000.00 |    13 |
| P105        | sofa          | furniture |     10000.00 |       11000.00 |    13 |
+-------------+---------------+-----------+--------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> SELECT SUM(selling_price) from product;
ERROR 1146 (42S02): Table 'aggrigation.product' doesn't exist
mysql> SELECT SUM(sellin_price) from products;
+-------------------+
| SUM(sellin_price) |
+-------------------+
|          40000.00 |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT AVG (sellin_price) from products;
+--------------------+
| AVG (sellin_price) |
+--------------------+
|        8000.000000 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT (*) from products;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) from products' at line 1
mysql> SELECT COUNT(*) from products;
+----------+
| COUNT(*) |
+----------+
|        5 |
+----------+
1 row in set (0.03 sec)

mysql> SELECT MAX (sellin_price) from products;
ERROR 1630 (42000): FUNCTION aggrigation.MAX does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql> SELECT MAX(sTOCK) from products;
+------------+
| MAX(sTOCK) |
+------------+
|         13 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(sTOCK) from products;
+------------+
| MIN(sTOCK) |
+------------+
|         12 |
+------------+
1 row in set (0.00 sec)

mysql> select * from PRODUCTS ORDER BY STOCK;
+-------------+---------------+-----------+--------------+----------------+-------+
| PRODUCTS_id | PRODUCTS_name | category  | SELLIN_PRICE | ORIGINAL_PRICE | STOCK |
+-------------+---------------+-----------+--------------+----------------+-------+
| P101        | chair         | furniture |      6000.00 |        5000.00 |    12 |
| P102        | Table         | furniture |      7000.00 |        8000.00 |    12 |
| P103        | bed           | furniture |      8000.00 |        9000.00 |    12 |
| P104        | studytable    | furniture |      9000.00 |       10000.00 |    13 |
| P105        | sofa          | furniture |     10000.00 |       11000.00 |    13 |
+-------------+---------------+-----------+--------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from PRODUCTS ORDER BY STOCK DESC;
+-------------+---------------+-----------+--------------+----------------+-------+
| PRODUCTS_id | PRODUCTS_name | category  | SELLIN_PRICE | ORIGINAL_PRICE | STOCK |
+-------------+---------------+-----------+--------------+----------------+-------+
| P104        | studytable    | furniture |      9000.00 |       10000.00 |    13 |
| P105        | sofa          | furniture |     10000.00 |       11000.00 |    13 |
| P101        | chair         | furniture |      6000.00 |        5000.00 |    12 |
| P102        | Table         | furniture |      7000.00 |        8000.00 |    12 |
| P103        | bed           | furniture |      8000.00 |        9000.00 |    12 |
+-------------+---------------+-----------+--------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from PRODUCTS ORDER BY STOCK DESC LIMIT 3;
+-------------+---------------+-----------+--------------+----------------+-------+
| PRODUCTS_id | PRODUCTS_name | category  | SELLIN_PRICE | ORIGINAL_PRICE | STOCK |
+-------------+---------------+-----------+--------------+----------------+-------+
| P104        | studytable    | furniture |      9000.00 |       10000.00 |    13 |
| P105        | sofa          | furniture |     10000.00 |       11000.00 |    13 |
| P101        | chair         | furniture |      6000.00 |        5000.00 |    12 |
+-------------+---------------+-----------+--------------+----------------+-------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE EMPLOYEE(employee_id int not null, employee_name varchar(50) not null,salary int  not null,department varchar(20) not null);
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO EMPLOYEE VALUES('E101','JASLEEN','80000','IT');
ERROR 1366 (HY000): Incorrect integer value: 'E101' for column 'employee_id' at row 1
mysql> INSERT INTO EMPLOYEE VALUES(E101,'JASLEEN','80000','IT');
ERROR 1054 (42S22): Unknown column 'E101' in 'field list'
mysql> INSERT INTO EMPLOYEE VALUES(1001,'JASLEEN','80000','IT');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO EMPLOYEE VALUES(1002,'ISHA','70000','CS');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO EMPLOYEE VALUES(1003,'BHAKTI','90000','LAW');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO EMPLOYEE VALUES(1004,'DIMPAL','50000','HR');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO EMPLOYEE VALUES(1005,'JASSI','500000','BIOCHEM');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM employee;
+-------------+---------------+--------+------------+
| employee_id | employee_name | salary | department |
+-------------+---------------+--------+------------+
|        1001 | JASLEEN       |  80000 | IT         |
|        1002 | ISHA          |  70000 | CS         |
|        1003 | BHAKTI        |  90000 | LAW        |
|        1004 | DIMPAL        |  50000 | HR         |
|        1005 | JASSI         | 500000 | BIOCHEM    |
+-------------+---------------+--------+------------+
5 rows in set (0.00 sec)

mysql> select department, salary,count(*) from employee group by department, salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| IT         |  80000 |        1 |
| CS         |  70000 |        1 |
| LAW        |  90000 |        1 |
| HR         |  50000 |        1 |
| BIOCHEM    | 500000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)
mysql> SELECT department, SUM(salary) AS total_salary
    -> FROM employee
    -> GROUP BY department
    -> HAVING SUM(salary) > 80000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| LAW        |        90000 |
| BIOCHEM    |       500000 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary  from employee group by department having sum(salary) > 80000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| LAW        |        90000 |
| BIOCHEM    |       500000 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department, count(*) as employee from employee group by department having count(*) > 1003;
Empty set (0.00 sec)

mysql> SELECT * FROM employee;
+-------------+---------------+--------+------------+
| employee_id | employee_name | salary | department |
+-------------+---------------+--------+------------+
|        1001 | JASLEEN       |  80000 | IT         |
|        1002 | ISHA          |  70000 | CS         |
|        1003 | BHAKTI        |  90000 | LAW        |
|        1004 | DIMPAL        |  50000 | HR         |
|        1005 | JASSI         | 500000 | BIOCHEM    |
+-------------+---------------+--------+------------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| IT         |              1 |
| CS         |              1 |
| LAW        |              1 |
| HR         |              1 |
| BIOCHEM    |              1 |
+------------+----------------+
5 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |        80000 |
| CS         |        70000 |
| LAW        |        90000 |
| HR         |        50000 |
| BIOCHEM    |       500000 |
+------------+--------------+
5 rows in set (0.00 sec)

mysql> select department, avg(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |   80000.0000 |
| CS         |   70000.0000 |
| LAW        |   90000.0000 |
| HR         |   50000.0000 |
| BIOCHEM    |  500000.0000 |
+------------+--------------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee group by department having count(*) > 1;
Empty set (0.00 sec)

mysql> INSERT INTO employee VALUES(1006,'RAHUL',60000,'IT');
Query OK, 1 row affected (0.03 sec)

mysql> SELECT department, COUNT(*) AS total_employee
    -> FROM employee
    -> GROUP BY department
    -> HAVING COUNT(*) > 1;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| IT         |              2 |
+------------+----------------+
1 row in set (0.00 sec)

mysql> select department, sum(salary) as total_salary  from employee group by department having sum(salary) > 80000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |       140000 |
| LAW        |        90000 |
| BIOCHEM    |       500000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary  from employee group by department having sum(salary) > 500000;
Empty set (0.00 sec)

mysql> select department, sum(salary) as total_salary  from employee group by department having sum(salary) > 50000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |       140000 |
| CS         |        70000 |
| LAW        |        90000 |
| BIOCHEM    |       500000 |
+------------+--------------+
4 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary  from employee group by department having sum(salary) > 20000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |       140000 |
| CS         |        70000 |
| LAW        |        90000 |
| HR         |        50000 |
| BIOCHEM    |       500000 |
+------------+--------------+
5 rows in set (0.00 sec)

mysql> select department, avg(salary) as total_salary  from employee group by department having avg(salary) > 20000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |   70000.0000 |
| CS         |   70000.0000 |
| LAW        |   90000.0000 |
| HR         |   50000.0000 |
| BIOCHEM    |  500000.0000 |
+------------+--------------+
5 rows in set (0.00 sec)
