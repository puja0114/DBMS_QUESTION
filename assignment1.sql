SQL> CREATE TABLE Studentss(
  2  RollNo INT,
  3  Name VARCHAR(50),
  4  Dept VARCHAR(20),
  5  Age INT,
  6      Phone VARCHAR(15)
  7  );
CREATE TABLE Studentss(
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> CREATE TABLE Studentsss(
  2  RollNo INT,
  3      Name VARCHAR(50),
  4      Dept VARCHAR(20),
  5      Age INT,
  6      Phone VARCHAR(15)
  7  );

Table created.

SQL> DESC Studentsss
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course(
  2  CourseID INT,
  3      CourseName VARCHAR(50),
  4      Credits INT
  5  );

Table created.

SQL> DESC Course
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE Studentsss
  2  ADD City VARCHAR(30);

Table altered.

SQL> DESC Studentsss
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(30)

SQL>  ALTER TABLE Studentsss
  2  ADD Semester INT;

Table altered.

SQL> DESC Studentsss
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL>  ALTER TABLE Studentsss
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> DESC Studentsss
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> DROP TABLE Course;

Table dropped.

SQL> DESC Course
ERROR:
ORA-04043: object Course does not exist


SQL> INSET INTO Studentsss VALUES(101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3);
SP2-0734: unknown command beginning "INSET INTO..." - rest of line ignored.
SQL> INSERT INTO Studentsss VALUES(101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3);

1 row created.

SQL>  INSERT INTO Studentsss VALUES(102, 'Amit', 'ECE', 22, '9876543222', 'Mumbai', 5);

1 row created.

SQL>  INSERT INTO Studentsss VALUES(103, 'Priya', 'CSE', 21, '9876543333', 'Kolkata', 4);

1 row created.

SQL>  INSERT INTO Studentsss VALUES(104, 'Neha', 'IT', 19, '9876544444', 'Pune', 2);

1 row created.

SQL>  INSERT INTO Studentsss VALUES(105, 'Suman', 'ME', 23, '9876545555', 'Chennai', 6);

1 row created.

SQL> DESC Studentsss
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> SELECT * FROM StudentSSS;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       101 Rahul
CSE                          20 9876543210      Delhi
         3

       102 Amit
ECE                          22 9876543222      Mumbai
         5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

       103 Priya
CSE                          21 9876543333      Kolkata
         4

       104 Neha
IT                           19 9876544444      Pune

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2

       105 Suman
ME                           23 9876545555      Chennai
         6


SQL> SELECT RollNo, Name FROM StudentSSS;

    ROLLNO NAME
---------- --------------------------------------------------
       101 Rahul
       102 Amit
       103 Priya
       104 Neha
       105 Suman

SQL> SP2-0042: unknown command "S" - rest of line ignored.
SQL> SELECT*FROM Studentsss
  2  WHERE Dept='CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       101 Rahul
CSE                          20 9876543210      Delhi
         3

       103 Priya
CSE                          21 9876543333      Kolkata
         4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------


SQL>  SELECT*FROM Studentsss
  2  WHERE Age>20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       102 Amit
ECE                          22 9876543222      Mumbai
         5

       103 Priya
CSE                          21 9876543333      Kolkata
         4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

       105 Suman
ME                           23 9876545555      Chennai
         6


SQL> UPDATE Studentsss
  2  SET Dept='ECE'
  3  WHERE RollNo=101;

1 row updated.

SQL>  UPDATE Studentsss
  2  SET City ='Patna'
  3  WHERE Name='Rahul';

1 row updated.

SQL>  UPDATE Studentsss
  2  SET Age =Age+1;

5 rows updated.

SQL> DELETE FROM Studentsss
  2  WHERE RollNo=105;

1 row deleted.

SQL> DELETE FROM Studentsss
  2  f
  3  j;
j
*
ERROR at line 3:
ORA-00933: SQL command not properly ended


SQL> DELETE FROM Studentsss;

4 rows deleted.

SQL>
