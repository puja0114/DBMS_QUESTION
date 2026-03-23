SQL>  SELECT COUNT(*) AS Total_Student1 FROM Student1;

TOTAL_STUDENT1
--------------
            10

SQL>  SELECT COUNT(*) AS Total_Faculty FROM Faculty;

TOTAL_FACULTY
-------------
           10

SQL>  SELECT COUNT(*) AS Total_Course FROM Course ;

TOTAL_COURSE
------------
          10

SQL> SELECT MIN(Credits) AS Min_Credits FROM Course;

MIN_CREDITS
-----------
          2

SQL>  SELECT MAX(Credits) AS Max_Credits FROM Course;

MAX_CREDITS
-----------
          6


SQL> SELECT Department_ID, COUNT(*) AS
  2   Total_Student1
  3  FROM Student1
  4   GROUP BY Department_ID;

DEPARTMENT_ID TOTAL_STUDENT1
------------- --------------
          101              2
          103              2
          104              3
          102              2
          107              1


SQL> SELECT Department_ID, COUNT(*) AS
  2  Total_Faculty
  3  FROM Faculty
  4  GROUP BY Department_ID;

DEPARTMENT_ID TOTAL_FACULTY
------------- -------------
          101             9
          104             1


SQL> SELECT Department_ID, COUNT(*) AS
  2   Total_Courses
  3   FROM Course
  4  GROUP BY Department_ID;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
          101             8
          104             2

SQL>  SELECT Semester, COUNT(*) AS
  2  Total_Enrollments
  3   FROM Enrollment
  4  GROUP BY Semester;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
1                                    1
5                                    1
4                                    3
3                                    3
2                                    2

SQL> SELECT Grade, COUNT(*) AS Total_Student1
  2  FROM Enrollment
  3  GROUP BY Grade;

GRADE TOTAL_STUDENT1
----- --------------
A                  6
A+                 2
B+                 2

SQL>  SELECT Department_ID, COUNT(*) AS
  2   Total_Student1
  3   FROM Student1
  4   GROUP BY Department_ID
  5  HAVING COUNT(*)>2;

DEPARTMENT_ID TOTAL_STUDENT1
------------- --------------
          104              3

SQL> SELECT Semester,COUNT(*) AS
  2   Total_Enrollment
  3   FROM Enrollment
  4   GROUP BY Semester
  5   HAVING COUNT(*)>2;

SEMESTER             TOTAL_ENROLLMENT
-------------------- ----------------
4                                   3
3                                   3

SQL> SELECT Grade,COUNT(*) AS Total
  2   FROM Enrollment
  3   GROUP BY Grade
  4  HAVING COUNT(*)>1;

GRADE      TOTAL
----- ----------
A              6
A+             2
B+             2


SQL> SELECT Grade,COUNT(*) AS Total
  2   FROM Enrollment
  3   GROUP BY Grade
  4  HAVING COUNT(*)>1;

GRADE      TOTAL
----- ----------
A              6
A+             2
B+             2

SQL> SELECT Department_ID,COUNT(*) AS
  2  Total_Courses
  3  FROM Course
  4  GROUP BY Department_ID
  5   HAVING COUNT(*)>1;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
          101             8
          104             2


SQL> SELECT Course_ID, COUNT(Student1_ID) AS
  2  Total_Student1
  3  FROM Enrollment
  4  GROUP BY Course_ID;

 COURSE_ID TOTAL_STUDENT1
---------- --------------
       401              3
       402              1
       403              2
       404              1
       408              3



SQL>  SELECT c.Course_Name,COUNT(e.Student1_ID) AS
  2  Total_Student1
  3   FROM Course c
  4  JOIN Enrollment e ON c.Course_ID = e.Course_ID
  5   GROUP BY c.Course_Name;

COURSE_NAME                                                                                          TOTAL_STUDENT1
---------------------------------------------------------------------------------------------------- --------------
PFPS                                                                                                              3
Operating System                                                                                                  1
COA                                                                                                               2
BEE                                                                                                               1
Internship                                                                                                        3

SQL>  SELECT d.Department_ID, COUNT(s.Student1_ID) AS
  2   Total_Student1
  3   FROM student1 s
  4  JOIN Department d ON s.Department_ID = d.Department_ID
  5   GROUP BY d.Department_ID;

DEPARTMENT_ID TOTAL_STUDENT1
------------- --------------
          101              2
          103              2
          104              3
          102              2
          107              1


SQL> SELECT f.Name,COUNT(c.Course_ID) AS
  2  Total_Courses
  3  FROM Faculty f
  4  JOIN Course c ON f.Faculty_ID = c.Faculty_ID
  5  GROUP BY f.Name;

NAME                                                                                                 TOTAL_COURSES
---------------------------------------------------------------------------------------------------- -------------
Prof. Arun Kumar                                                                                                 1
Prof. Manisha kumari Singh                                                                                       1
Prof. Md. Ehtashamoul Haque                                                                                      1
Prof. Amit Kumar                                                                                                 1
Prof. Sujeet Kumar                                                                                               1
Prof. Praveen Kumar                                                                                              1
Prof. Md.                                                                                                        1
Prof. Murlidhar Prasad Singh                                                                                     1
Prof. Akhilesh Kumar                                                                                             1
Mr. Ravi Kumar                                                                                                   1

10 rows selected.

  
SQL>  SELECT c.Course_Name, MAX(e.Grade) AS
  2  Max_Grade
  3  FROM Course c
  4  JOIN Enrollment e ON c.Course_ID = e.Course_ID
  5  GROUP BY c.Course_Name;

COURSE_NAME                                                                                          MAX_G
---------------------------------------------------------------------------------------------------- -----
PFPS                                                                                                 A+
Operating System                                                                                     B+
COA                                                                                                  B+
BEE                                                                                                  A
Internship                                                                                           A
  


SQL> SELECT Department_ID,COUNT(*) AS
  2  Total_Courses
  3  FROM Course
  4  GROUP BY Department_ID;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
          101             8
          104             2



SQL> SELECT Semester,COUNT(DISTINCT Student1_ID) AS
  2  Total_Student1
  3  FROM Enrollment
  4  GROUP BY Semester;

SEMESTER             TOTAL_STUDENT1
-------------------- --------------
1                                 1
5                                 1
4                                 3
3                                 2
2                                 1


SQL> SELECT Course_ID,COUNT(Student1_ID) AS
  2  Total_Student1
  3   FROM Enrollment
  4  GROUP BY Course_ID
  5  HAVING COUNT(Student1_ID)>2;

 COURSE_ID TOTAL_STUDENT1
---------- --------------
       401              3
       408              3
   
