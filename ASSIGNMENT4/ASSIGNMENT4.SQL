
SQL> COLUMN Student1_Name FORMAT A25;
SQL> SELECT
  2  Student1_ID As Roll_No,
  3   Name As Student1_Name,
  4   Gender As Student1_Gender,
  5   Date_of_Birth As DOB,
  6   Department_ID As Dept_ID
  7   FROM Student1;

   ROLL_NO STUDENT1_NAME             STUDENT1_G DOB          DEPT_ID
---------- ------------------------- ---------- --------- ----------
       201 Puja kumari               Female     14-JAN-06        101
       202 Asha kumari               Female     14-JAN-07        103
       203 Komal kumari              Female     14-JAN-07        104
       204 Amit kumar                Male       03-JAN-07        101
       205 Sachin kumar              Male       03-JAN-02        102
       206 Vijay kumar               Male       03-JAN-01        107
       207 Sohan kumar               Male       06-JAN-00        104
       208 Gaurav kumar              Male       06-JAN-00        104
       209 Gaurav kumar              Female     06-AUG-00        103
       210 Mohit kumar               Female     04-AUG-00        102

10 rows selected.

SQL> SELECT
  2  Student1_ID As Roll_No,
  3  Name As Student1_Name,
  4  Department_ID As Dept_ID
  5  FROM Student1;

   ROLL_NO STUDENT1_NAME                DEPT_ID
---------- ------------------------- ----------
       201 Puja kumari                      101
       202 Asha kumari                      103
       203 Komal kumari                     104
       204 Amit kumar                       101
       205 Sachin kumar                     102
       206 Vijay kumar                      107
       207 Sohan kumar                      104
       208 Gaurav kumar                     104
       209 Gaurav kumar                     103
       210 Mohit kumar                      102

10 rows selected.

SQL> SELECT
  2  Faculty_ID AS FacultyID,
  3  Name AS Faculty_Name,
  4  Designation AS Faculty_Designation,
  5  Email AS Faculty_Email
  6  FROM Faculty;

 FACULTYID FACULTY_NAME                                                                   FACULTY_DESIGNATION                                 FACULTY_EMAIL
---------- ---------------------------------------------------------------------------------------------------- -------------------------------------------------- -------------------------------------
       301 Prof. Murlidhar Prasad Singh                                                   Assistant Professor,Head Of Department              singhmurlidhar@gmail.com
       302 Prof. Md. Ehtashamoul Haque                                                    Assistant Professor                                 ehtasham47@gmail.com
       303 Prof. Arun Kumar                                                               Assistant Professor(Guest)                          arunkr75@gmail.com
       304 Mr. Ravi Kumar                                                                 Lab Assistant(Guest)                                sonubhardwaj4200@gmail.com
       305 Prof. Amit Kumar                                                               Assistant Professor                                 amitbcebhagalpur@gmail.com
       306 Prof. Md.                                                                      Assistant Professor                                 mdizhar@gmail.com
       307 Prof. Manisha kumari Singh                                                     Assistant Professor                                 manisha.ks241@gmail.com
       308 Prof. Praveen Kumar                                                            Assistant Professor                                 praveenkumaryadav782@gmail.com
       309 Prof. Sujeet Kumar                                                             Assistant Professor                                 ksujeet.cs@gmail.com
       310 Prof. Akhilesh Kumar                                                           Assistant Professor                                 akhileshkumar3804@gmail.com

10 rows selected.

SQL> SELECT
  2  Course_ID AS CourseID,
  3  Course_Name As CourseName,
  4  credits As Course_Credits,
  5  Department_ID As Dept_ID
  6  FROM Course;

  COURSEID COURSENAME                                                                                           COURSE_CREDITS      DEPT_ID
---------- ---------------------------------------------------------------------------------------------------- -------------- ----------
       401 PFPS                                                                                                       5         101
       402 Operating System                                                                                           5         101
       403 COA                                                                                                        5         101
       404 BEE                                                                                                        5         101
       405 DBMS                                                                                                       5         101
       406 DSA                                                                                                        5         101
       407 Computer Network                                                                                           5         101
       408 Internship                                                                                                 6         101
       409 Engineering Mathematics                                                                                    6         104
       410 DAA Practical                                                                                              2         104

10 rows selected.

SQL>  SELECT
  2   Enrollment_ID AS EnrollmentID,
  3  Student1_ID AS Roll_No,
  4   Course_ID AS CourseID,
  5   Semester AS Semester_No,
  6   Grade AS Final_Grade
  7   FROM Enrollment;

ENROLLMENTID    ROLL_NO   COURSEID SEMESTER_NO          FINAL
------------ ---------- ---------- -------------------- -----
         501        201        401 1                    A
         502        204        401 5                    A+
         503        203        401 4                    A+
         504        206        402 4                    B+
         505        202        403 4                    B+
         506        202        403 3                    A
         507        207        404 3                    A
         508        207        408 3                    A
         509        207        408 2                    A
         510        207        408 2                    A

10 rows selected.

SQL> SELECT *FROM Student1
  2  WHERE Department_ID='101';

STUDENT1_ID NAME                                                                                                 DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
----------- ---------------------------------------------------------------------------------------------------- --------- ---------- --------------- -------------
        201 Puja kumari                                                                                          14-JAN-06 Female     8207830223          101
        204 Amit kumar                                                                                           03-JAN-07 Male       9298789276          101


SQL> SELECT *FROM Student1
  2  WHERE Gender='Female';

STUDENT1_ID NAME                                                                                                 DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
----------- ---------------------------------------------------------------------------------------------------- --------- ---------- --------------- -------------
        201 Puja kumari                                                                                          14-JAN-06 Female     8207830223          101
        202 Asha kumari                                                                                          14-JAN-07 Female     8207890276          103
        203 Komal kumari                                                                                         14-JAN-07 Female     8298789276          104
        209 Gaurav kumar                                                                                         06-AUG-00 Female     9898675473          103
        210 Mohit kumar                                                                                          04-AUG-00 Female     9234675473          102



SQL> SELECT*FROM Faculty
  2  WHERE Designation='Assistant Professor';
rows will be truncated


FACULTY_ID NAME                                                                                                 DESIGNATION                                          EMAIL
---------- ---------------------------------------------------------------------------------------------------- -------------------------------------------------- -------------------------------------
       302 Prof. Md. Ehtashamoul Haque                                                                          Assistant Professor                                  ehtasham47@gmail.com
       305 Prof. Amit Kumar                                                                                     Assistant Professor                                  amitbcebhagalpur@gmail.com
       306 Prof. Md.                                                                                            Assistant Professor                                  mdizhar@gmail.com
       307 Prof. Manisha kumari Singh                                                                           Assistant Professor                                  manisha.ks241@gmail.com
       308 Prof. Praveen Kumar                                                                                  Assistant Professor                                  praveenkumaryadav782@gmail.com
       309 Prof. Sujeet Kumar                                                                                   Assistant Professor                                  ksujeet.cs@gmail.com
       310 Prof. Akhilesh Kumar                                                                                 Assistant Professor                                  akhileshkumar3804@gmail.com

7 rows selected.

SQL> SELECT*FROM Course
  2  WHERE Credits >=4;

 COURSE_ID COURSE_NAME              CREDITS DEPARTMENT_ID FACULTY_ID
---------- --------------------- ---------- ------------- ----------
       401 PFPS                           5           101        303
       402 Operating System               5           101        307
       403 COA                            5           101        302
       404 BEE                            5           101        305
       405 DBMS                           5           101        309
       406 DSA                            5           101        308
       407 Computer Network               5           101        306
       408 Internship                     6           101        301
       409 Engineering Mathemati          6           104        310
           cs


9 rows selected.


SQL> SELECT*FROM Student1
  2  WHERE Date_of_Birth > TO_Date('01-01-2003','DD-MM-YYYY');

STUDENT1_ID NAME                                                                                                 DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
----------- ---------------------------------------------------------------------------------------------------- --------- ---------- --------------- -------------
        201 Puja kumari                                                                                          14-JAN-06 Female     8207830223          101
        202 Asha kumari                                                                                          14-JAN-07 Female     8207890276          103
        203 Komal kumari                                                                                         14-JAN-07 Female     8298789276          104
        204 Amit kumar                                                                                           03-JAN-07 Male       9298789276          101


SQL> SELECT*FROM Enrollment
  2  WHERE Semester ='4';

ENROLLMENT_ID STUDENT1_ID  COURSE_ID SEMESTER             GRADE
------------- ----------- ---------- -------------------- -----
          503         203        401 4                    A+
          504         206        402 4                    B+
          505         202        403 4                    B+



SQL> SELECT*FROM Student1
  2  ORDER BY Name ASC;

STUDENT1_ID NAME                                                                                                 DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
----------- ---------------------------------------------------------------------------------------------------- --------- ---------- --------------- -------------
        204 Amit kumar                                                                                           03-JAN-07 Male       9298789276                101
        202 Asha kumari                                                                                          14-JAN-07 Female     8207890276                103
        209 Gaurav kumar                                                                                         06-AUG-00 Female     9898675473                103
        208 Gaurav kumar                                                                                         06-JAN-00 Male       9898675473                104
        203 Komal kumari                                                                                         14-JAN-07 Female     8298789276                104
        210 Mohit kumar                                                                                          04-AUG-00 Female     9234675473                102
        201 Puja kumari                                                                                          14-JAN-06 Female     8207830223                101
        205 Sachin kumar                                                                                         03-JAN-02 Male       9298789276                102
        207 Sohan kumar                                                                                          06-JAN-00 Male       9898679276                104
        206 Vijay kumar                                                                                          03-JAN-01 Male       9898789276                107

10 rows selected.

SQL> SELECT*FROM Faculty
  2  ORDER BY Designation ASC;
rows will be truncated


FACULTY_ID NAME                                                                                                 DESIGNATION                                        EMAIL
---------- ---------------------------------------------------------------------------------------------------- -------------------------------------------------- -------------------------------------
       305 Prof. Amit Kumar                                                                                     Assistant Professor                                amitbcebhagalpur@gmail.com
       309 Prof. Sujeet Kumar                                                                                   Assistant Professor                                ksujeet.cs@gmail.com
       308 Prof. Praveen Kumar                                                                                  Assistant Professor                                praveenkumaryadav782@gmail.com
       302 Prof. Md. Ehtashamoul Haque                                                                          Assistant Professor                                ehtasham47@gmail.com
       310 Prof. Akhilesh Kumar                                                                                 Assistant Professor                                akhileshkumar3804@gmail.com
       306 Prof. Md.                                                                                            Assistant Professor                                mdizhar@gmail.com
       307 Prof. Manisha kumari Singh                                                                           Assistant Professor                                manisha.ks241@gmail.com
       303 Prof. Arun Kumar                                                                                     Assistant Professor(Guest)                         arunkr75@gmail.com
       301 Prof. Murlidhar Prasad Singh                                                                         Assistant Professor,Head Of Department             singhmurlidhar@gmail.com
       304 Mr. Ravi Kumar                                                                                       Lab Assistant(Guest)                               sonubhardwaj4200@gmail.com

10 rows selected.



SQL> SELECT*FROM Course
  2  ORDER BY Credits DESC;

 COURSE_ID COURSE_NAME              CREDITS DEPARTMENT_ID FACULTY_ID
---------- --------------------- ---------- ------------- ----------
       408 Internship                     6           101        301
       409 Engineering Mathemati          6           104        310
       403 COA                            5           101        302
       404 BEE                            5           101        305
       406 DSA                            5           101        308
       407 Computer Network               5           101        306
       402 Operating System               5           101        307
       401 PFPS                           5           101        303
       405 DBMS                           5           101        309
       410 DAA Practical                  2           104        304

10 rows selected.

SQL>  SELECT*FROM Course
  2  WHERE ROWNUM<=3;

 COURSE_ID COURSE_NAME              CREDITS DEPARTMENT_ID FACULTY_ID
---------- --------------------- ---------- ------------- ----------
       401 PFPS                           5           101        303
       402 Operating System               5           101        307
       403 COA                            5           101        302

SQL> SELECT*FROM Course
  2   WHERE ROWNUM<=5;

 COURSE_ID COURSE_NAME              CREDITS DEPARTMENT_ID FACULTY_ID
---------- --------------------- ---------- ------------- ----------
       401 PFPS                           5           101        303
       402 Operating System               5           101        307
       403 COA                            5           101        302
       404 BEE                            5           101        305
       405 DBMS                           5           101        309

SQL> SELECT
  2  Name,
  3  TRUNC(MONTHS_BETWEEN(SYSDATE, Date_of_Birth) / 12) AS Age
  4   FROM Student1;

NAME                                                                                                        AGE
---------------------------------------------------------------------------------------------------- ----------
Puja kumari                                                                                                  20
Asha kumari                                                                                                  19
Komal kumari                                                                                                 19
Amit kumar                                                                                                   19
Sachin kumar                                                                                                 24
Vijay kumar                                                                                                  25
Sohan kumar                                                                                                  26
Gaurav kumar                                                                                                 26
Gaurav kumar                                                                                                 25
Mohit kumar                                                                                                  25

10 rows selected.


SQL>  SELECT
  2   Course_Name,
  3  Credits+ 1 As Updated_Credits
  4   FROM Course;

COURSE_NAME           UPDATED_CREDITS
--------------------- ---------------
PFPS                                6
Operating System                    6
COA                                 6
BEE                                 6
DBMS                                6
DSA                                 6
Computer Network                    6
Internship                          7
Engineering Mathemati               7
DAA Practical                       3

10 rows selected.

SQL> SELECT
  2   Enrollment_ID,
  3   Student1_ID,
  4   Course_ID,
  5   Semester,
  6   Grade AS Final_Grade FROM Enrollment;

ENROLLMENT_ID STUDENT1_ID  COURSE_ID SEMESTER             FINAL
------------- ----------- ---------- -------------------- -----
          501         201        401 1                    A
          502         204        401 5                    A+
          503         203        401 4                    A+
          504         206        402 4                    B+
          505         202        403 4                    B+
          506         202        403 3                    A
          507         207        404 3                    A
          508         207        408 3                    A
          509         207        408 2                    A
          510         207        408 2                    A

10 rows selected.


SQL> SELECT Name,
  2  SUBSTR(Email, INSTR(Email, '@') + 1) AS Email_Domain
  3  FROM Faculty;

NAME                                                                            EMAIL_DOMAIN
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Prof. Murlidhar Prasad Singh                                                    gmail.com
Prof. Md. Ehtashamoul Haque                                                     gmail.com
Prof. Arun Kumar                                                                gmail.com
Mr. Ravi Kumar                                                                  gmail.com
Prof. Amit Kumar                                                                gmail.com
Prof. Md.                                                                       gmail.com
Prof. Manisha kumari Singh                                                      gmail.com
Prof. Praveen Kumar                                                             gmail.com
Prof. Sujeet Kumar                                                              gmail.com
Prof. Akhilesh Kumar                                                            gmail.com

10 rows selected.

SQL>