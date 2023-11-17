mysql> USE StudentManagementSystem2;
Database changed
mysql> show tables;
+------------------------------------+
| Tables_in_studentmanagementsystem2 |
+------------------------------------+
| course                             |
| enrollment                         |
| instructor                         |
| student                            |
+------------------------------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO Student(StudentID,FirstName,LastName,DateOfBirth,Gender,Email,Phone)VALUES('1','Dhamodara','Nagesh','2001-05-10','Male','nageshdhamodar3@gmail.com','8340995017'),
    -> ('2','Lanka','Pavan','2000-09-14','Male','pavan@gmail.com','6304455768'),
    -> ('3','Behara','Jayram','1999-09-15','Male','jayram@gmail.com','8639088482'),
    -> ('4','Patro','Madhav','1998-10-16','Male','madhav@gmail.com','9987088970'),
    -> ('5','Patruni','Praveen','2000-11-06','Male','praveen@gmail.com','7789654321');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Student;
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                     | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
|         1 | Dhamodara | Nagesh   | 2001-05-10  | Male   | nageshdhamodar3@gmail.com | 8340995017 |
|         2 | Lanka     | Pavan    | 2000-09-14  | Male   | pavan@gmail.com           | 6304455768 |
|         3 | Behara    | Jayram   | 1999-09-15  | Male   | jayram@gmail.com          | 8639088482 |
|         4 | Patro     | Madhav   | 1998-10-16  | Male   | madhav@gmail.com          | 9987088970 |
|         5 | Patruni   | Praveen  | 2000-11-06  | Male   | praveen@gmail.com         | 7789654321 |
+-----------+-----------+----------+-------------+--------+---------------------------+------------+
5 rows in set (0.00 sec)

mysql> INSERT INTO Course(CourseID,CourseTitle,Credits)VALUES('1','Telegu','9'),
    -> ('2','English','6'),
    -> ('3','Maths','7'),
    -> ('4','Social','9'),
    -> ('5','Hindi','8');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Course;
+----------+-------------+---------+
| CourseID | CourseTitle | Credits |
+----------+-------------+---------+
|        1 | Telegu      |       9 |
|        2 | English     |       6 |
|        3 | Maths       |       7 |
|        4 | Social      |       9 |
|        5 | Hindi       |       8 |
+----------+-------------+---------+
5 rows in set (0.00 sec)

mysql> INSERT INTO Instructor(InstructorID,FirstName,LastName,Email)VALUES('1','Dhamodara','Laxmi','laxmi@gmail.com'),
    -> ('2','Jada','Reshma','Reshma@gmail.com'),
    -> ('3','Behara','Anshu','anshu@gmail.com'),
    -> ('4','Sai','kumar','sai@gmail.com'),
    -> ('5','savukari','Praveen','Praveen@gmail.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

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

mysql> INSERT INTO Enrollment(EnrollmentID,EnrollmentDate,StudentID,CourseID,InstructorID)VALUES('1','2023-11-08','1','1','1'),
    -> ('2','2023-11-09','2','2','2'),
    -> ('3','2023-11-10','3','3','3'),
    -> ('4','2023-11-11','4','4','4'),
    -> ('5','2023-11-12','5','5','5');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2023-11-08     |         1 |        1 |            1 |
|            2 | 2023-11-09     |         2 |        2 |            2 |
|            3 | 2023-11-10     |         3 |        3 |            3 |
|            4 | 2023-11-11     |         4 |        4 |            4 |
|            5 | 2023-11-12     |         5 |        5 |            5 |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql>