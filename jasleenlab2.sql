Lab 1: Database Schema: Consider a simple database with one tables: BankAccount BankAccount

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignment1.sql" Provide comments above each query to indicate the task number and the query's purpose

ANSWER:
mysql> use bank;
Database changed
1)mysql> create table bankacount(account_id varchar(10)primary key not null,acoount_holder_name varchar(100),account_balance double(10,3));
Query OK, 0 rows affected, 1 warning (0.29 sec)

mysql> desc bank;
ERROR 1146 (42S02): Table 'bank.bank' doesn't exist
mysql> desc bankacount;
+---------------------+--------------+------+-----+---------+-------+
| Field               | Type         | Null | Key | Default | Extra |
+---------------------+--------------+------+-----+---------+-------+
| account_id          | varchar(10)  | NO   | PRI | NULL    |       |
| acoount_holder_name | varchar(100) | YES  |     | NULL    |       |
| account_balance     | double(10,3) | YES  |     | NULL    |       |
+---------------------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

2)mysql> INSERT into bankacount(account_id,acoount_holder_name,account_balance) VALUES ('C101','khushi','10000.00'),('C102','dimpal','20000.00'),('C103','jasleen','300000.0'),('104','joseph','40000.00');
Query OK, 4 rows affected (0.05 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from bankacount;
+------------+---------------------+-----------------+
| account_id | acoount_holder_name | account_balance |
+------------+---------------------+-----------------+
| 104        | joseph              |       40000.000 |
| C101       | khushi              |       10000.000 |
| C102       | dimpal              |       20000.000 |
| C103       | jasleen             |      300000.000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)



3)mysql> select account_holder_name,account_balance from bankaccount WHERE account_balance > 30000;

+---------------------+-----------------+
| acoount_holder_name | account_balance |
+---------------------+-----------------+
| joseph              |       40000.000 |
| jasleen             |      300000.000 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

4)UPDATE bankacount SET account_balance ='70000' where account_id ='C101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bankacount;
+------------+---------------------+-----------------+
| account_id | acoount_holder_name | account_balance |
+------------+---------------------+-----------------+
| 104        | joseph              |       40000.000 |
| C101       | khushi              |       70000.000 |
| C102       | dimpal              |       20000.000 |
| C103       | jasleen             |      300000.000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)