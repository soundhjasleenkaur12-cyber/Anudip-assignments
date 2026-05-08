mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
8 rows in set (0.05 sec)

mysql> use ecommerce;
Database changed
mysql> select * from customer;
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name   | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C014        | sweety | bandra  | abc@gmail.com | 123 bandra west  | 1234567890 |  124563 |       0 |       |
| C015        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| c102        | dimpal | airoli  | abc@gmail.com | 134 airoli       | 123456790  |    1356 |       0 |       |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
4 rows in set (0.01 sec)

mysql> update customer set phoneno = '9983345679' where customer_id = 'C001';
Query OK, 0 rows affected (0.01 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * From customer;
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name   | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C014        | sweety | bandra  | abc@gmail.com | 123 bandra west  | 1234567890 |  124563 |       0 |       |
| C015        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| c102        | dimpal | airoli  | abc@gmail.com | 134 airoli       | 123456790  |    1356 |       0 |       |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
4 rows in set (0.00 sec)

mysql> update customer set phoneno = '9983345679' where customer_id = 'C014';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * From customer;
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name   | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C014        | sweety | bandra  | abc@gmail.com | 123 bandra west  | 9983345679 |  124563 |       0 |       |
| C015        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| c102        | dimpal | airoli  | abc@gmail.com | 134 airoli       | 123456790  |    1356 |       0 |       |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
4 rows in set (0.00 sec)


mysql> select * from customer where  name LIKE '%al';
+-------------+--------+--------+---------------+------------+-----------+---------+---------+-------+
| customer_id | name   | city   | email         | address    | phoneno   | pincode | bill_no | state |
+-------------+--------+--------+---------------+------------+-----------+---------+---------+-------+
| c102        | dimpal | airoli | abc@gmail.com | 134 airoli | 123456790 |    1356 |       0 |       |
+-------------+--------+--------+---------------+------------+-----------+---------+---------+-------+
1 row in set (0.00 sec)

mysql> select * from customer where name LIKE 's_____';
+-------------+--------+--------+---------------+-----------------+------------+---------+---------+-------+
| customer_id | name   | city   | email         | address         | phoneno    | pincode | bill_no | state |
+-------------+--------+--------+---------------+-----------------+------------+---------+---------+-------+
| C014        | sweety | bandra | abc@gmail.com | 123 bandra west | 9983345679 |  124563 |       0 |       |
+-------------+--------+--------+---------------+-----------------+------------+---------+---------+-------+
1 row in set (0.00 sec)

mysql> select * from customer where name LIKE 'i___';
+-------------+------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C015        | isha | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
+-------------+------+---------+---------------+------------------+------------+---------+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from customer where name LIKE 'i_h%';
+-------------+------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C015        | isha | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
+-------------+------+---------+---------------+------------------+------------+---------+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from customer where  name LIKE '%sw';
Empty set (0.00 sec)

mysql> select * from customer where  name LIKE 'sw%';
+-------------+--------+--------+---------------+-----------------+------------+---------+---------+-------+
| customer_id | name   | city   | email         | address         | phoneno    | pincode | bill_no | state |
+-------------+--------+--------+---------------+-----------------+------------+---------+---------+-------+
| C014        | sweety | bandra | abc@gmail.com | 123 bandra west | 9983345679 |  124563 |       0 |       |
+-------------+--------+--------+---------------+-----------------+------------+---------+---------+-------+
1 row in set (0.00 sec)

mysql> select * from customer where  name LIKE '%ee%';
+-------------+--------+--------+---------------+-----------------+------------+---------+---------+-------+
| customer_id | name   | city   | email         | address         | phoneno    | pincode | bill_no | state |
+-------------+--------+--------+---------------+-----------------+------------+---------+---------+-------+
| C014        | sweety | bandra | abc@gmail.com | 123 bandra west | 9983345679 |  124563 |       0 |       |
+-------------+--------+--------+---------------+-----------------+------------+---------+---------+-------+
1 row in set (0.00 sec)

mysql>  insert into customer (Customer_id, name, city, email, address, phoneno, pincode,bill_no,state)values('C103', 'harshal', 'airoli', 'harshal@gmail.com', 'sector9','9372621064', '400052','2','navi mumbai'),('C104', 'parth', 'punji', 'parth@gmail.com', 'sector2','9372678124', '400053','3','goa'),('C105', 'silpa', 'rampur', 'shilpa@gmail.com', '34 shimla','9372621784', '400054','4','shimla')
    -> ;
ERROR 1406 (22001): Data too long for column 'state' at row 1
mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(15)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phoneno     | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
| bill_no     | int          | NO   |     | NULL    |       |
| state       | varchar(10)  | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
9 rows in set (0.01 sec)

mysql>  insert into customer (Customer_id, name, city, email, address, phoneno, pincode,bill_no,state)values('C103', 'harshal', 'airoli', 'harshal@gmail.com', 'sector9','9372621064', '400052','2','navimum'),('C104', 'parth', 'punji', 'parth@gmail.com', 'sector2','9372678124', '400053','3','goa'),('C105', 'silpa', 'rampur', 'shilpa@gmail.com', '34 shimla','9372621784', '400054','4','shimla');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------+---------+-------------------+------------------+------------+---------+---------+---------+
| customer_id | name    | city    | email             | address          | phoneno    | pincode | bill_no | state   |
+-------------+---------+---------+-------------------+------------------+------------+---------+---------+---------+
| C013        | isha    | chembur | abc@gmail.com     | 123 chembur west | 1234567890 |    1245 |       0 |         |
| C014        | sweety  | bandra  | abc@gmail.com     | 123 bandra west  | 9983345679 |  124563 |       0 |         |
| C015        | isha    | chembur | abc@gmail.com     | 123 chembur west | 1234567890 |    1245 |       0 |         |
| c102        | dimpal  | airoli  | abc@gmail.com     | 134 airoli       | 123456790  |    1356 |       0 |         |
| C103        | harshal | airoli  | harshal@gmail.com | sector9          | 9372621064 |  400052 |       2 | navimum |
| C104        | parth   | punji   | parth@gmail.com   | sector2          | 9372678124 |  400053 |       3 | goa     |
| C105        | silpa   | rampur  | shilpa@gmail.com  | 34 shimla        | 9372621784 |  400054 |       4 | shimla  |
+-------------+---------+---------+-------------------+------------------+------------+---------+---------+---------+
7 rows in set (0.00 sec)

mysql> select * from customer LIMIT 3;
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name   | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C014        | sweety | bandra  | abc@gmail.com | 123 bandra west  | 9983345679 |  124563 |       0 |       |
| C015        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from customer LIMIT 2;
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name   | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C014        | sweety | bandra  | abc@gmail.com | 123 bandra west  | 9983345679 |  124563 |       0 |       |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
2 rows in set (0.00 sec)

mysql> select DISTINCT city from customer;
+---------+
| city    |
+---------+
| chembur |
| bandra  |
| airoli  |
| punji   |
| rampur  |
+---------+
5 rows in set (0.00 sec)

mysql> select DISTINCT name from customer;
+---------+
| name    |
+---------+
| isha    |
| sweety  |
| dimpal  |
| harshal |
| parth   |
| silpa   |
+---------+
6 rows in set (0.00 sec)

mysql> select * from customer WHERE name = 'isha' AND bill_no='0';
+-------------+------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C015        | isha | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
+-------------+------+---------+---------------+------------------+------------+---------+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from customer WHERE name = 'isha' AND bill_no > 4;
Empty set (0.00 sec)

mysql> select * from customer WHERE name = 'isha' AND bill_no > 2;
Empty set (0.00 sec)

mysql> select * from customer WHERE bill_no >3;
+-------------+-------+--------+------------------+-----------+------------+---------+---------+--------+
| customer_id | name  | city   | email            | address   | phoneno    | pincode | bill_no | state  |
+-------------+-------+--------+------------------+-----------+------------+---------+---------+--------+
| C105        | silpa | rampur | shilpa@gmail.com | 34 shimla | 9372621784 |  400054 |       4 | shimla |
+-------------+-------+--------+------------------+-----------+------------+---------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from customer WHERE customer_id BETWEEN 'C013'AND 'C102';
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name   | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C014        | sweety | bandra  | abc@gmail.com | 123 bandra west  | 9983345679 |  124563 |       0 |       |
| C015        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| c102        | dimpal | airoli  | abc@gmail.com | 134 airoli       | 123456790  |    1356 |       0 |       |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+