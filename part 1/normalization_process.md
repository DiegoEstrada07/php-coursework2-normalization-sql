ᓚᘏᗢ
1. Identify Attributes and Candidate Key(s)

Attributes:

Empno (Employee Number)
Deptcode (Department Code)
Deptlocation (Department Location)
Name
Job
Hiredate
Salary

Candidate Key:

Empno uniquely identifies each employee. 

ᓚᘏᗢ
---------------------------------------------------

2. List Functional Dependencies (FDs)

From the data:

Empno → Name, Job, Hiredate, Salary, Deptcode

Deptcode → Deptlocation

Empno uniquely determines employee details and their department code.

Deptcode determines the location of the department.

ᓚᘏᗢ
-------------------------------------------------------
3. Step by step transformation:

First Normal Form (1NF)

Problem:

✪ The table dont have atomic values, it dont repeating groups which means that is is      already in 1NF.

1NF Table: Same as raw table

Second Normal Form (2NF)

Check:

✪ 2NF requires no partial dependency on a composite primary key.

✪ Here, the primary key is Empno (not composite), so all non-key attributes are fully dependent on the key.

Conclusion: Already in 2NF.

But Deptlocation is transitively dependent on Empno through Deptcode. This is a 3NF issue.

Third Normal Form (3NF)

Problem:

✪ Transitive dependency:
 Empno → Deptcode → Deptlocation

✪ Deptlocation depends on Deptcode, which depends on Empno.

Solution: Decompose table into two relations:

Relation 1: Employee
| Column   | Key |
| -------- | --- |
| Empno    | PK  |
| Name     |     |
| Job      |     |
| Hiredate |     |
| Salary   |     |
| Deptcode | FK  |


✪ Deptcode is a foreign key referencing Department.

Relation 2: Department
| Column       | Key |
| ------------ | --- |
| Deptcode     | PK  |
| Deptlocation |     |	

Check 3NF:

Every non-key attribute depends only on the primary key of its table.

ᓚᘏᗢ
-------------------------------------------------------------------------
4. Final Relations and Keys

1. Employee Table

Primary Key: Empno

Foreign Key: Deptcode references Department(Deptcode)

| Empno | Name | Job | Hiredate | Salary | Deptcode |
| ----- | ---- | --- | -------- | ------ | -------- |

2. Department Table

Primary Key: Deptcode

| Deptcode | Deptlocation |
| -------- | ------------ |

3. Populating with Example Data
| Empno | Name             | Job                    | Hiredate   | Salary    | Deptcode |
| ----- | ---------------- | ---------------------- | ---------- | --------- | -------- |
| 1001  | Benjamin Miguet  | Programmer IV          | 2019-10-25 | 133608.91 | 3D       |
| 1002  | Biddy Coppock    | Health Coach II        | 2016-12-09 | 135302.24 | 1C       |
| 1003  | Desmond Ogbourne | Senior Cost Accountant | 2020-03-24 | 55991.73  | 4B       |
| 1004  | Marita Dubery    | Executive Secretary    | 2019-03-13 | 53720.04  | 1A       |
| 1005  | Meg Holleran     | Executive Secretary    | 2014-10-20 | 73794.50  | 1C       |
