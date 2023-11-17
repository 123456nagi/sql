TASK-1:

mysql> USE StudentManagementSystem2;
Database changed
mysql> select * from Student;
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                     | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
|         1 | Dhamodara | Nagesh   | 2001-05-10  | Male   | nageshdhamodar3@gmail.com | 8340995017 |
|         2 | Lanka     | Pavan    | 2000-09-14  | Male   | pavan@gmail.com           | 6304401234 |
|         3 | Behara    | Jayram   | 2000-09-15  | Male   | jayram@gmail.com          | 8884885714 |
|         4 | Patro     | Madhav   | 1999-10-16  | Male   | madhav@gmail.com          | 9903588901 |
|         5 | Patruni   | Praveen  | 2000-11-06  | Male   | praveen@gmail.com         | 9903577901 |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
5 rows in set (0.01 sec)

mysql> UPDATE Student
    -> SET Email = 'lankapavan123@gmail.com'
    -> WHERE FirstName ='Lanka' AND LastName = 'Pavan';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Student;
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                     | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
|         1 | Dhamodara | Nagesh   | 2001-05-10  | Male   | nageshdhamodar3@gmail.com | 8340995017 |
|         2 | Lanka     | Pavan    | 2000-09-14  | Male   | lankapavan123@gmail.com   | 6304401234 |
|         3 | Behara    | Jayram   | 2000-09-15  | Male   | jayram@gmail.com          | 8884885714 |
|         4 | Patro     | Madhav   | 1999-10-16  | Male   | madhav@gmail.com          | 9903588901 |
|         5 | Patruni   | Praveen  | 2000-11-06  | Male   | praveen@gmail.com         | 9903577901 |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
5 rows in set (0.00 sec)

mysql> select * from Instructor;
+--------------+-----------+----------+-------------------+
| InstructorID | FirstName | LastName | Email             |
+--------------+-----------+----------+-------------------+
|            1 | Dhamodara | Laxmi    | laxmi@gmail.com   |
|            2 | Jada      | Reshma   | Reshma@gmail.com  |
|            3 | Behara    | Anshu    | anshu@gmail.com   |
|            4 | Sai       | kumar    | sai@gmail.com     |
|            5 | savukari  | Praveen  | Praveen@gmail.com |
+--------------+-----------+----------+-------------------+
5 rows in set (0.00 sec)

mysql> UPDATE Instructor
    -> SET Email = 'jadareshma3@gmail.com'
    -> WHERE FirstName = 'Jada' AND LastName = 'Reshma';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Instructor;
+--------------+-----------+----------+-----------------------+
| InstructorID | FirstName | LastName | Email                 |
+--------------+-----------+----------+-----------------------+
|            1 | Dhamodara | Laxmi    | laxmi@gmail.com       |
|            2 | Jada      | Reshma   | jadareshma3@gmail.com |
|            3 | Behara    | Anshu    | anshu@gmail.com       |
|            4 | Sai       | kumar    | sai@gmail.com         |
|            5 | savukari  | Praveen  | Praveen@gmail.com     |
+--------------+-----------+----------+-----------------------+
5 rows in set (0.00 sec)

mysql> select * from Student;
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                     | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
|         1 | Dhamodara | Nagesh   | 2001-05-10  | Male   | nageshdhamodar3@gmail.com | 8340995017 |
|         2 | Lanka     | Pavan    | 2000-09-14  | Male   | lankapavan123@gmail.com   | 6304401234 |
|         3 | Behara    | Jayram   | 2000-09-15  | Male   | jayram@gmail.com          | 8884885714 |
|         4 | Patro     | Madhav   | 1999-10-16  | Male   | madhav@gmail.com          | 9903588901 |
|         5 | Patruni   | Praveen  | 2000-11-06  | Male   | praveen@gmail.com         | 9903577901 |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
5 rows in set (0.00 sec)

<======================================================================================================================>

TASK-2:

mysql> DELETE FROM enrollment
    -> WHERE StudentID IN (SELECT StudentID FROM Student WHERE LastName = 'Pavan');
Query OK, 1 row affected (0.01 sec)

mysql> DELETE FROM Student
    -> WHERE LastName = 'Pavan';
Query OK, 1 row affected (0.01 sec)

mysql> select * from Student;
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                     | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
|         1 | Dhamodara | Nagesh   | 2001-05-10  | Male   | nageshdhamodar3@gmail.com | 8340995017 |
|         3 | Behara    | Jayram   | 2000-09-15  | Male   | jayram@gmail.com          | 8884885714 |
|         4 | Patro     | Madhav   | 1999-10-16  | Male   | madhav@gmail.com          | 9903588901 |
|         5 | Patruni   | Praveen  | 2000-11-06  | Male   | praveen@gmail.com         | 9903577901 |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
4 rows in set (0.00 sec)

<=====================================================================================================================>
TASK-3:

mysql> select * from Student
    -> WHERE FirstName LIKE 'D%';
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                     | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
|         1 | Dhamodara | Nagesh   | 2001-05-10  | Male   | nageshdhamodar3@gmail.com | 8340995017 |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
1 row in set (0.00 sec)

mysql>