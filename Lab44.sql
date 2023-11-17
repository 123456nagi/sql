Assignment:1


mysql> CREATE DATABASE Persondb;
Query OK, 1 row affected (0.07 sec)

mysql> USE Persondb;
Database changed
mysql> CREATE TABLE Person (
    -> PersonID INT(5) PRIMARY KEY,
    -> FirstName VARCHAR(50) NOT NULL,
    -> LastName VARCHAR(50) NOT NULL,
    -> Age INT(5)
    -> );
Query OK, 0 rows affected, 2 warnings (0.07 sec)

mysql> CREATE TABLE Employee (
    -> emp_id INT(5) PRIMARY KEY,
    -> first_name VARCHAR(50) NOT NULL,
    -> last_name VARCHAR(50) NOT NULL,
    -> age INT(5)
    -> );
Query OK, 0 rows affected, 2 warnings (0.02 sec)

mysql> INSERT INTO Person(PersonID,FirstName,LastName,Age)VALUES('1','Naga','Surya','23'),
    -> ('2','Dhamodara','Nagesh','22'),
    -> ('3','Lanka','Pavan','23'),
    -> ('4','Behara','Madhav','23'),
    -> ('5','Ram','Charan','23');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Employee(emp_id,first_name,last_name,age)VALUES('11','Virat','Kohli','35');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Employee(emp_id,first_name,last_name,age)VALUES('12','Behara','Jayaram','24'),
    -> ('13','Sai','Kiran','25'),
    -> ('14','Savukari','Praveen','25'),
    -> ('15','Raj','Kumar','24');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from Person
    -> UNION
    -> select * from Employee;
+----------+-----------+----------+------+
| PersonID | FirstName | LastName | Age  |
+----------+-----------+----------+------+
|        1 | Naga      | Surya    |   23 |
|        2 | Dhamodara | Nagesh   |   22 |
|        3 | Lanka     | Pavan    |   23 |
|        4 | Behara    | Madhav   |   23 |
|        5 | Ram       | Charan   |   23 |
|       11 | Virat     | Kohli    |   35 |
|       12 | Behara    | Jayaram  |   24 |
|       13 | Sai       | Kiran    |   25 |
|       14 | Savukari  | Praveen  |   25 |
|       15 | Raj       | Kumar    |   24 |
+----------+-----------+----------+------+
10 rows in set (0.01 sec)

mysql>