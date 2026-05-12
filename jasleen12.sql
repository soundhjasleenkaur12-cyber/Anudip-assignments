mysql> create database joins;
Query OK, 1 row affected (0.10 sec)

mysql>
mysql> use joins;
Database changed
mysql> create table department(dept_id int(10) primary key not null, dept_name varchar(30) not null);
Query OK, 0 rows affected, 1 warning (0.28 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.04 sec)

mysql> insert into department values(1,'hr'),(2,'IT'),(3,'finance'),(4,'marketing');
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | hr        |
|       2 | IT        |
|       3 | finance   |
|       4 | marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> create table employee (emp_id int primary key not null, emp_name varchar (20)not null, dept_id int, foreign key (dept_id) references department(dept_id) );
Query OK, 0 rows affected (0.12 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| dept_id  | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(1,'jasleen', 1),(2,'dimpal',2),(3,'isha',1),(4,'shilpa',null),(5,'parth',4);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | jasleen  |       1 |
|      2 | dimpal   |       2 |
|      3 | isha     |       1 |
|      4 | shilpa   |    NULL |
|      5 | parth    |       4 |
+--------+----------+---------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | hr        |
|       2 | IT        |
|       3 | finance   |
|       4 | marketing |
+---------+-----------+
4 rows in set (0.00 sec)


mysql> select emp_name,dept_name from employee inner join department on employee.dept_id=department.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| jasleen  | hr        |
| isha     | hr        |
+----------+-----------+
2 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee left join department on employee.dept_id=department.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| jasleen  | hr        |
| dimpal   | NULL      |
| isha     | hr        |
| shilpa   | NULL      |
| parth    | NULL      |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee right join department on employee.dept_id=department.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| isha     | hr        |
| jasleen  | hr        |
| NULL     | IT        |
| NULL     | finance   |
| NULL     | marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee full join department;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| jasleen  | marketing |
| jasleen  | finance   |
| jasleen  | IT        |
| jasleen  | hr        |
| dimpal   | marketing |
| dimpal   | finance   |
| dimpal   | IT        |
| dimpal   | hr        |
| isha     | marketing |
| isha     | finance   |
| isha     | IT        |
| isha     | hr        |
| shilpa   | marketing |
| shilpa   | finance   |
| shilpa   | IT        |
| shilpa   | hr        |
| parth    | marketing |
| parth    | finance   |
| parth    | IT        |
| parth    | hr        |
+----------+-----------+
20 rows in set, 1 warning (0.00 sec)

mysql> select emp_name,dept_name from employee cross join department;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| jasleen  | marketing |
| jasleen  | finance   |
| jasleen  | IT        |
| jasleen  | hr        |
| dimpal   | marketing |
| dimpal   | finance   |
| dimpal   | IT        |
| dimpal   | hr        |
| isha     | marketing |
| isha     | finance   |
| isha     | IT        |
| isha     | hr        |
| shilpa   | marketing |
| shilpa   | finance   |
| shilpa   | IT        |
| shilpa   | hr        |
| parth    | marketing |
| parth    | finance   |
| parth    | IT        |
| parth    | hr        |
+----------+-----------+
20 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee self join department;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| jasleen  | marketing |
| jasleen  | finance   |
| jasleen  | IT        |
| jasleen  | hr        |
| dimpal   | marketing |
| dimpal   | finance   |
| dimpal   | IT        |
| dimpal   | hr        |
| isha     | marketing |
| isha     | finance   |
| isha     | IT        |
| isha     | hr        |
| shilpa   | marketing |
| shilpa   | finance   |
| shilpa   | IT        |
| shilpa   | hr        |
| parth    | marketing |
| parth    | finance   |
| parth    | IT        |
| parth    | hr        |
+----------+-----------+
20 rows in set (0.00 sec)



mysql> create database store_procedure_example;
Query OK, 1 row affected (0.02 sec)
mysql> use store_procedure_example;
Database changed
mysql> create table employee (id int primary key not null ,name varchar(20)not null, dept varchar (20) not null, salary int );
Query OK, 0 rows affected (0.08 sec)

mysql> desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| dept   | varchar(20) | NO   |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert employee values(1,'JASLEEN','HR',10000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+----+---------+------+--------+
| id | name    | dept | salary |
+----+---------+------+--------+
|  1 | JASLEEN | HR   |  10000 |
+----+---------+------+--------+
1 row in set (0.00 sec)


mysql> CREATE PROCEDURE GetEmployees()
    -> BEGIN
    ->     SELECT * FROM Employee;
    -> END //
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> DELIMITER ;
mysql> DELIMITER //



mysql> DELIMITER ;

mysql> CREATE PROCEDURE GetEmployee()
    -> BEGIN
    ->     SELECT * FROM Employee;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> CALL GetEmployee();
+----+---------+------+--------+
| id | name    | dept | salary |
+----+---------+------+--------+
|  1 | JASLEEN | HR   |  10000 |
+----+---------+------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployeeByDept(
    ->     IN dept_name VARCHAR(50)
    -> )
    -> BEGIN
    ->     SELECT *
    ->     FROM Employee
    ->     WHERE Department = dept_name;
    -> END //
Query OK, 0 rows affected (0.01 sec)


mysql> DELIMITER ;

 
mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, depart, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.02 sec)
mysql> DELIMITER ;

mysql> DESC Employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| dept   | varchar(20) | NO   |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, department, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //

mysql> DROP PROCEDURE AddEmployee;
Query OK, 0 rows affected (0.06 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, dept, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> DELIMITER ;

mysql> CALL AddEmployee(101, 'rahul', 'HR', 50000);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM Employee;
+-----+---------+------+--------+
| id  | name    | dept | salary |
+-----+---------+------+--------+
|   1 | JASLEEN | HR   |  10000 |
| 101 | rahul   | HR   |  50000 |
+-----+---------+------+--------+
2 rows in set (0.00 sec)
    

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeCount(OUT total INT)
    -> BEGIN
    ->     SELECT COUNT(*) INTO total
    ->     FROM Employee;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> DELIMITER ;
mysql> CALL GetEmployeeCount(@total);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      2 |
+--------+
1 row in set (0.00 sec)

