mysql> use studentmanagementsystem;
Database changed
mysql> create table student(stu_id int primary key not null, first_name varchar(30) not null, last_name varchar(30) not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| stu_id     | int         | NO   | PRI | NULL    |       |
| first_name | varchar(30) | NO   |     | NULL    |       |
| last_name  | varchar(30) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> insert into student values(1, 'pranjal', 'nannaware');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values(2, 'pranav', 'pawar');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(3, 'pran', 'pawar');
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+--------+------------+-----------+
| stu_id | first_name | last_name |
+--------+------------+-----------+
|      1 | pranjal    | nannaware |
|      2 | pranav     | pawar     |
|      3 | pran       | pawar     |
+--------+------------+-----------+
3 rows in set (0.00 sec)

mysql> create table course(course_id int primary key not null, name varchar(30) );
Query OK, 0 rows affected (0.03 sec)

mysql> desc course;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| course_id | int         | NO   | PRI | NULL    |       |
| name      | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into course values(101, 'DPBA');
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(102, 'python');
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(103, 'data science');
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(104, 'ML');
Query OK, 1 row affected (0.01 sec)

mysql> select * from course;
+-----------+--------------+
| course_id | name         |
+-----------+--------------+
|       101 | DPBA         |
|       102 | python       |
|       103 | data science |
|       104 | ML           |
+-----------+--------------+
4 rows in set (0.00 sec)

mysql> create table enrollment(enroll_id int primary key not null, stu_id int, course_id int,foreign key(stu_id) references student(stu_id), foreign key(course_id) references course(course_id));
Query OK, 0 rows affected (0.07 sec)

mysql> desc enrollment;
+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| enroll_id | int  | NO   | PRI | NULL    |       |
| stu_id    | int  | YES  | MUL | NULL    |       |
| course_id | int  | YES  | MUL | NULL    |       |
+-----------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into enrollment values(1001, 2, 101);
Query OK, 1 row affected (0.01 sec)

mysql> insert into enrollment values(1002, 1, 102);
Query OK, 1 row affected (0.01 sec)

mysql> insert into enrollment values(1003, 3, 103);
Query OK, 1 row affected (0.01 sec)

mysql> insert into enrollment values(1004, 3, 104);
Query OK, 1 row affected (0.01 sec)

mysql> select * from enrollment;
+-----------+--------+-----------+
| enroll_id | stu_id | course_id |
+-----------+--------+-----------+
|      1001 |      2 |       101 |
|      1002 |      1 |       102 |
|      1003 |      3 |       103 |
|      1004 |      3 |       104 |
+-----------+--------+-----------+
4 rows in set (0.00 sec)

QUERY: INNER JOIN->

mysql> SELECT Student.Stu_Id,Student.First_Name,Student.Last_Name,Course.Name FROM Enrollment INNER JOIN Student ON Enrollment.Stu_id = Student.Stu_Id INNER JOIN Course ON Enrollment.Course_ID = Course.Course_Id;
+--------+------------+-----------+--------------+
| Stu_Id | First_Name | Last_Name | Name         |
+--------+------------+-----------+--------------+
|      1 | pranjal    | nannaware | python       |
|      2 | pranav     | pawar     | DPBA         |
|      3 | pran       | pawar     | data science |
|      3 | pran       | pawar     | ML           |
+--------+------------+-----------+--------------+
4 rows in set (0.00 sec)

mysql>



