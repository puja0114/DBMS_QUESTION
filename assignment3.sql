
SQL> INSERT INTO Department VALUES('D01','Computer Science and engineering','Block A');
INSERT INTO Department VALUES('D01','Computer Science and engineering','Block A')
                              *
ERROR at line 1:
ORA-01722: invalid number


SQL> INSERT INTO Department VALUES('101','Computer Science and engineering','Block A');

1 row created.

SQL> INSERT INTO Department VALUES('102','Electrical and Electronics Engineering','Block B');

1 row created.

SQL> INSERT INTO Department VALUES('103','Mechanical Engineering','Block B');

1 row created.

SQL> INSERT INTO Department VALUES('104','Civil Engineering','Block C');

1 row created.

SQL> INSERT INTO Department VALUES('105','3D graphics and Animation','Block D');

1 row created.

SQL> INSERT INTO Department VALUES('106','Computer Science and Engineering(AI&ML)','Block E');
Enter value for ml: 5
old   1: INSERT INTO Department VALUES('106','Computer Science and Engineering(AI&ML)','Block E')
new   1: INSERT INTO Department VALUES('106','Computer Science and Engineering(AI5)','Block E')

1 row created.

SQL>  INSERT INTO Department VALUES('106','Computer Science and Engineering(AI & ML)','Block E');
Enter value for ml:
old   1:  INSERT INTO Department VALUES('106','Computer Science and Engineering(AI & ML)','Block E')
new   1:  INSERT INTO Department VALUES('106','Computer Science and Engineering(AI )','Block E')
 INSERT INTO Department VALUES('106','Computer Science and Engineering(AI )','Block E')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008315) violated


SQL> INSERT INTO Department VALUES('107','CEWCA','Block F');


1 row created.

