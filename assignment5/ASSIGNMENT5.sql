
SQL>  SELECT s.Student1_ID,s.Name,e.Course_ID
  2   FROM Student1 s
  3   INNER JOIN Enrollment e
  4   ON s.Student1_ID = e.Student1_ID;

STUDENT1_ID NAME                                                                                                  COURSE_ID
----------- ---------------------------------------------------------------------------------------------------- ----------
        201 Puja kumari                                                                                          401
        204 Amit kumar                                                                                           401
        203 Komal kumari                                                                                         401
        206 Vijay kumar                                                                                          402
        202 Asha kumari                                                                                          403
        202 Asha kumari                                                                                          403
        207 Sohan kumar                                                                                          404
        207 Sohan kumar                                                                                          408
        207 Sohan kumar                                                                                          408
        207 Sohan kumar                                                                                          408

10 rows selected.


SQL> SELECT s.Name,e.Grade
  2   FROM Student1 s
  3   INNER JOIN Enrollment e
  4  ON s.Student1_ID= e.Student1_ID;

NAME                                                                                                 GRADE
---------------------------------------------------------------------------------------------------- -----
Puja kumari                                                                                          A
Amit kumar                                                                                           A+
Komal kumari                                                                                         A+
Vijay kumar                                                                                          B+
Asha kumari                                                                                          B+
Asha kumari                                                                                          A
Sohan kumar                                                                                          A
Sohan kumar                                                                                          A
Sohan kumar                                                                                          A
Sohan kumar                                                                                          A

10 rows selected.


SQL>  SELECT c.Course_Name ,c.Credits,
  2   f.Name
  3   FROM course c
  4   INNER JOIN Faculty f
  5   ON c.faculty_ID=f.faculty_ID;

COURSE_NAME                                                                                             CREDITS NAME
---------------------------------------------------------------------------------------------------- ---------- ----------------------------------------------------------------------------------------
Internship                                                                                                    6 Prof. Murlidhar Prasad Singh
COA                                                                                                           5 Prof. Md. Ehtashamoul Haque
PFPS                                                                                                          5 Prof. Arun Kumar
DAA Practical                                                                                                 2 Mr. Ravi Kumar
BEE                                                                                                           5 Prof. Amit Kumar
Computer Network                                                                                              5 Prof. Md.
Operating System                                                                                              5 Prof. Manisha kumari Singh
DSA                                                                                                           5 Prof. Praveen Kumar
DBMS                                                                                                          5 Prof. Sujeet Kumar
Engineering Mathematics                                                                                       6 Prof. Akhilesh Kumar

10 rows selected.

SQL>  SELECT c.Course_name
  2   FROM Course c
  3  INNER JOIN Faculty f
  4   ON c.Faculty_ID =f.Faculty_ID
  5  WHERE f.Faculty_ID=301;

COURSE_NAME
----------------------------------------------------------------------------------------------------
Internship

SQL> SELECT f.Name ,f.designation,c.course_name
  2  FROM Faculty f
  3  INNER JOIN Course c
  4  ON f.Faculty_ID=c.Faculty_ID;

NAME                                                                                                 DESIGNATION                                        COURSE_NAME
---------------------------------------------------------------------------------------------------- -------------------------------------------------- ------------------------------------------------
Prof. Arun Kumar                                                                                     Assistant Professor(Guest)                         PFPS
Prof. Manisha kumari Singh                                                                           Assistant Professor                                Operating System
Prof. Md. Ehtashamoul Haque                                                                          Assistant Professor                                COA
Prof. Amit Kumar                                                                                     Assistant Professor                                BEE
Prof. Sujeet Kumar                                                                                   Assistant Professor                                DBMS
Prof. Praveen Kumar                                                                                  Assistant Professor                                DSA
Prof. Md.                                                                                            Assistant Professor                                Computer Network
Prof. Murlidhar Prasad Singh                                                                         Assistant Professor,Head Of Department             Internship
Prof. Akhilesh Kumar                                                                                 Assistant Professor                                Engineering Mathematics
Mr. Ravi Kumar                                                                                       Lab Assistant(Guest)                               DAA Practical

10 rows selected.


SQL> SELECT s.Name ,c.Course_Name
  2   FROM Student1 s
  3   INNER JOIN Enrollment e
  4  ON s.Student1_ID=e.Student1_ID
  5   INNER JOIN Course c
  6   ON e.Course_ID=c.Course_ID;

NAME                                                                                                 COURSE_NAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Puja kumari                                                                                          PFPS
Amit kumar                                                                                           PFPS
Komal kumari                                                                                         PFPS
Vijay kumar                                                                                          Operating System
Asha kumari                                                                                          COA
Asha kumari                                                                                          COA
Sohan kumar                                                                                          BEE
Sohan kumar                                                                                          Internship
Sohan kumar                                                                                          Internship
Sohan kumar                                                                                          Internship

10 rows selected.


SQL> SELECT c.Course_Name
  2   FROM Student1 s
  3   INNER JOIN Enrollment e
  4   ON s.Student1_ID = e.Student1_ID
  5    INNER JOIN Course c
  6  ON e.Course_ID = c.Course_ID
  7  WHERE s.Student1_ID = '201';

COURSE_NAME
----------------------------------------------------------------------------------------------------
PFPS


SQL> SELECT s.Name, s.Department_ID, c.Course_Name
  2  FROM Student1 s
  3  INNER JOIN Enrollment e
  4  ON s.Student1_ID = e.Student1_ID
  5  INNER JOIN Course c
  6  ON e.Course_ID = c.Course_ID;

NAME                                                                                           DEPARTMENT_ID COURSE_NAME
---------------------------------------------------------------------------------------------------- ------------- -------------------------------------------------------------------------------------
Puja kumari                                                                                      101 PFPS
Amit kumar                                                                                       101 PFPS
Komal kumari                                                                                     104 PFPS
Vijay kumar                                                                                      107 Operating System
Asha kumari                                                                                      103 COA
Asha kumari                                                                                      103 COA
Sohan kumar                                                                                      104 BEE
Sohan kumar                                                                                      104 Internship
Sohan kumar                                                                                      104 Internship
Sohan kumar                                                                                      104 Internship

10 rows selected.



SQL> SELECT d.Department_ID, c.Course_Name
  2  FROM Department d
  3  INNER JOIN Course c
  4  ON d.Department_ID = c.Department_ID;

DEPARTMENT_ID COURSE_NAME
------------- ----------------------------------------------------------------------------------------------------
          101 PFPS
          101 Operating System
          101 COA
          101 BEE
          101 DBMS
          101 DSA
          101 Computer Network
          101 Internship
          104 Engineering Mathematics
          104 DAA Practical

10 rows selected.

SQL> SELECT f.Name, d.Department_Name
  2  FROM Faculty f
  3  INNER JOIN Department d
  4  ON f.Department_ID = d.Department_ID;

NAME                                                                                           DEPARTMENT_NAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Prof. Murlidhar Prasad Singh                                                                   Computer Science and engineering
Prof. Md. Ehtashamoul Haque                                                                    Computer Science and engineering
Prof. Arun Kumar                                                                               Computer Science and engineering
Mr. Ravi Kumar                                                                                 Computer Science and engineering
Prof. Amit Kumar                                                                               Computer Science and engineering
Prof. Md.                                                                                      Computer Science and engineering
Prof. Manisha kumari Singh                                                                     Computer Science and engineering
Prof. Praveen Kumar                                                                            Computer Science and engineering
Prof. Sujeet Kumar                                                                             Computer Science and engineering
Prof. Akhilesh Kumar                                                                           Civil Engineering

10 rows selected.


SQL> SELECT s.Name, c.Course_Name
  2   FROM Student1 s
  3  INNER JOIN Enrollment e
  4   ON s.Student1_ID = e.Student1_ID
  5  INNER JOIN Course c
  6  ON e.Course_ID = c.Course_ID
  7  ORDER BY s.Name ASC;

NAME                                                                            COURSE_NAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Amit kumar                                                                      PFPS
Asha kumari                                                                     COA
Asha kumari                                                                     COA
Komal kumari                                                                    PFPS
Puja kumari                                                                     PFPS
Sohan kumar                                                                     Internship
Sohan kumar                                                                     Internship
Sohan kumar                                                                     BEE
Sohan kumar                                                                     Internship
Vijay kumar                                                                     Operating System

10 rows selected.



SQL> SELECT f.Name, c.Course_Name
  2  FROM Faculty f
  3  INNER JOIN Course c
  4  ON f.Faculty_ID = c.Faculty_ID
  5  ORDER BY c.Credits DESC;

NAME                                                                            COURSE_NAME
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Prof. Murlidhar Prasad Singh                                                    Internship
Prof. Akhilesh Kumar                                                            Engineering Mathematics
Prof. Md. Ehtashamoul Haque                                                     COA
Prof. Amit Kumar                                                                BEE
Prof. Praveen Kumar                                                             DSA
Prof. Md.                                                                       Computer Network
Prof. Manisha kumari Singh                                                      Operating System
Prof. Arun Kumar                                                                PFPS
Prof. Sujeet Kumar                                                              DBMS
Mr. Ravi Kumar                                                                  DAA Practical

10 rows selected.


  5
SQL> SELECT c.Course_Name, COUNT(e.Student1_ID) AS Total_Student1
  2  FROM Course c
  3   INNER JOIN Enrollment e
  4   ON c.Course_ID = e.Course_ID
  5   GROUP BY c.Course_Name;

COURSE_NAME                                                                                          TOTAL_STUDENT1
---------------------------------------------------------------------------------------------------- --------------
PFPS                                                                                                              3
Operating System                                                                                                  1
COA                                                                                                               2
BEE                                                                                                               1
Internship


SQL>  SELECT f.Name, COUNT(c.Course_ID) AS Total_Course
  2  FROM Faculty f
  3  INNER JOIN Course c
  4   ON f.Faculty_ID = c.Faculty_ID
  5  GROUP BY f.Name;

NAME                                                                            TOTAL_COURSE
---------------------------------------------------------------------------------------------------- ------------
Prof. Arun Kumar                                                           1
Prof. Manisha kumari Singh                                                 1
Prof. Md. Ehtashamoul Haque                                                1
Prof. Amit Kumar                                                           1
Prof. Sujeet Kumar                                                         1
Prof. Praveen Kumar                                                        1
Prof. Md.                                                                  1
Prof. Murlidhar Prasad Singh                                               1
Prof. Akhilesh Kumar                                                       1
Mr. Ravi Kumar                                                             1

10 rows selected.



SQL> SELECT d.Department_Name, COUNT(s.Student1_ID) AS Total_Student1
  2  FROM Department d
  3  INNER JOIN Student1 s
  4  ON d.Department_ID = s.Department_ID
  5  GROUP BY d.Department_Name;

DEPARTMENT_NAME                                                                 TOTAL_STUDENT1
---------------------------------------------------------------------------------------------------- --------------
Computer Science and engineering                                             2
Mechanical Engineering                                                       2
Civil Engineering                                                            3
Electrical and Electronics Engineering                                       2
CEWCA                                                                        1



SQL> SELECT c.Course_Name, MAX(e.Grade) AS Max_Grade
  2  FROM Course c
  3  INNER JOIN Enrollment e
  4  ON c.Course_ID = e.Course_ID
  5  GROUP BY c.Course_Name;

COURSE_NAME                                                                     MAX_G
---------------------------------------------------------------------------------------------------- -----
PFPS                                                                            A+
Operating System                                                                B+
COA                                                                             B+
BEE                                                                             A
Internship                                                                      A


