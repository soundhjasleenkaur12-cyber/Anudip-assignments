mysql> use ecommerce
Database changed

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(5)   | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phoneno     | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.08 sec)


mysql> select * from customer;
Empty set (0.03 sec)


mysql> insert into customer(customer_id,name,city,email,address,phoneno,pincode) values('c101','jasleen','mumbai','abc@gmail.com','mulund colony west','1234567890','123456');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------+--------+---------------+--------------------+------------+---------+
| customer_id | name    | city   | email         | address            | phoneno    | pincode |
+-------------+---------+--------+---------------+--------------------+------------+---------+
| c101        | jasleen | mumbai | abc@gmail.com | mulund colony west | 1234567890 |  123456 |
+-------------+---------+--------+---------------+--------------------+------------+---------+
1 row in set (0.00 sec)

mysql> select customer_id,name from customer;
+-------------+---------+
| customer_id | name    |
+-------------+---------+
| c101        | jasleen |
+-------------+---------+
1 row in set (0.00 sec)

mysql> insert into customer values('c102','dimpal','airoli','abc@gmail.com','134 airoli','123456790','1356');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('C013','isha','chembur','abc@gmail.com','123 chembur west','1234567890','1245');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('C015','isha','chembur','abc@gmail.com','123 chembur west','1234567890','1245'),('C014','sweety','bandra','abc@gmail.com','123 bandra west','1234567890','124563');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(5)   | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phoneno     | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer modify customer_id varchar(10)not null ;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> dsec customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'dsec customer' at line 1
mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phoneno     | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer add bill_no int not null;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phoneno     | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
| bill_no     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table customer add state varchar(10) not null;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phoneno     | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
| bill_no     | int          | NO   |     | NULL    |       |
| state       | varchar(10)  | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
9 rows in set (0.00 sec)


mysql> alter table customer modify customer_id varchar(10)not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phoneno     | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
| bill_no     | int          | NO   |     | NULL    |       |
| state       | varchar(10)  | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> alter table customer modify customer_id varchar(15)not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
9 rows in set (0.00 sec)

mysql> create table demo(id varchar (5) not null primary key, name varchar(20) not null);
Query OK, 0 rows affected (0.07 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)


mysql> delete from customer where customer_id = 'c101';
Query OK, 1 row affected (0.02 sec)

mysql> select *  from customer;
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| customer_id | name   | city    | email         | address          | phoneno    | pincode | bill_no | state |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
| C013        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| C014        | sweety | bandra  | abc@gmail.com | 123 bandra west  | 1234567890 |  124563 |       0 |       |
| C015        | isha   | chembur | abc@gmail.com | 123 chembur west | 1234567890 |    1245 |       0 |       |
| c102        | dimpal | airoli  | abc@gmail.com | 134 airoli       | 123456790  |    1356 |       0 |       |
+-------------+--------+---------+---------------+------------------+------------+---------+---------+-------+
4 rows in set (0.00 sec)

mysql> select * from demo ;
Empty set (0.00 sec)

mysql> truncate table orders ;
Query OK, 0 rows affected (0.14 sec)


mysql> insert into demo values('c101','jasleen');
Query OK, 1 row affected (0.01 sec)

mysql> select * from demo;
+------+---------+
| id   | name    |
+------+---------+
| c101 | jasleen |
+------+---------+
1 row in set (0.00 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> drop table orders;
Query OK, 0 rows affected (0.08 sec)