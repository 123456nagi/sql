Assignment:1


USE StudentManagementSystem2;
Database changed
mysql> SELECT StudentID,FirstName,DateOfBirth,Email,(SELECT CourseID FROM Enrollment WHERE StudentID = '3') AS CourseID FROM Student WHERE StudentID
= '3';
+-----------+-----------+-------------+------------------+----------+
| StudentID | FirstName | DateOfBirth | Email            | CourseID |
+-----------+-----------+-------------+------------------+----------+
|         3 | Behara    | 2000-09-15  | jayram@gmail.com |        3 |
+-----------+-----------+-------------+------------------+----------+
1 row in set (0.00 sec)