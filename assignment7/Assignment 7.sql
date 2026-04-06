
Part A: Basics Subqueries
Q.1
SQL> SELECT Name
    FROM Student1
    WHERE Department_ID = (
    SELECT Department_ID
    FROM Student1
   WHERE Student1_ID = 201
    );


Q.2
SQL> SELECT Name
     FROM Student1
   WHERE Gender = (
     SELECT Gender
     FROM Student1
     WHERE Student1_ID = 202
    );



Q.3
SQL> SELECT Name
     FROM Student1
     WHERE Department_ID = (
     SELECT Department_ID
     FROM Student1
     WHERE Student1_ID = 203
    );


Part B: Subqueries With IN
Q.4

SQL> SELECT Name
    FROM Student1
     WHERE Department_ID IN (
     SELECT Department_ID
    FROM Student1
     WHERE Gender = 'Female'
    );

Q.5
SQL>  SELECT Name
     FROM Student1
     WHERE Student1_ID IN (
     SELECT Student1_ID
     FROM Enrollment
    );


Q.6
SQL> SELECT Course_Name
    FROM Course
    WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
    );

Part C: Aggregate Functions

Q.7
SQL> SELECT Name
    FROM Student1
    WHERE Student1_ID > (
    SELECT AVG(Student1_ID)
     FROM Student1
    );


Q.8
SQL>  SELECT Department_ID
     FROM Student1
    GROUP BY Department_ID
    HAVING COUNT(*) > (
     SELECT AVG(cnt)
    FROM (
    SELECT COUNT(*) AS cnt
     FROM Student1
     GROUP BY Department_ID
   )
   );



Q.9
SQL> SELECT Name
    FROM Student1
    WHERE Student1_ID IN (
     SELECT Student1_ID
     FROM Enrollment
    );

Part D: Without Join
Q.10
SQL> SELECT Name
     FROM Student1
    WHERE Department_ID IS NOT NULL;


Q.11
SQL> SELECT Course_Name
    FROM Course
    WHERE Course_ID IN (
    SELECT Course_ID
     FROM Enrollment
    );



Q.12
SQL> SELECT Course_Name
    FROM Course
    WHERE Credits = (
     SELECT MAX(Credits)
    FROM Course
    );



Part E: Analytical Subquries
Q.13
SQL> SELECT Name
    FROM Student1
    WHERE Student1_ID IN (
    SELECT Student1_ID
    FROM Enrollment
    GROUP BY Student1_ID
     HAVING COUNT(*) > 1
    );


Q.14
SQL>  SELECT Name
    FROM Student1
    WHERE Student1_ID IN (
    SELECT Student1_ID
     FROM Enrollment
     GROUP BY Student1_ID
     HAVING COUNT(*) > 1
    );



Q.15
SQL> SELECT Department_ID
    FROM Student1
    GROUP BY Department_ID
    HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
    SELECT COUNT(*) AS cnt
    FROM Student
    GROUP BY Department_ID
   )
   );


Part F: Challenging Questions
Q.16
SQL> SELECT Name
    FROM Student1
     WHERE Student1_ID IN (
     SELECT Student1_ID
    FROM Enrollment
    WHERE Course_ID IN (
     SELECT Course_ID
    FROM Enrollment
     WHERE Student1_ID = 201
   )
   );


Q.17
SQL> SELECT Name
    FROM Student1
    WHERE Student1_ID  NOT IN (
   SELECT Student1_ID
   FROM Enrollment
    );

Q.18
SQL> SELECT Course_Name
    FROM Course
    WHERE Course_ID NOT IN (
     SELECT Course_ID
     FROM Enrollment
    );
