-- Test summary for Query for Question 8

DELETE FROM zzSummary;

-- Load data for testcase 1

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,3),
(109,3),
(110,2);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109),
(110);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,11),
(3,101,4),
(2,105,15),
(1,108,10),
(2,109,12),
(3,109,11),
(1,110,9),
(2,110,8);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb1q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 1
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 1 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 2

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,100),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,3),
(109,3),
(110,2);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109),
(110);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb2q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 2
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 2 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 3

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,3),
(109,3),
(110,2);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109),
(110);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,104);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,5),
(1,108,10),
(2,109,2),
(3,109,8),
(1,110,9),
(2,110,8);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D'),
('E');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(101,'C'),
(102,'A'),
(103,'A'),
(103,'B'),
(103,'D'),
(104,'A'),
(104,'C'),
(105,'B'),
(106,'C'),
(107,'B'),
(107,'C'),
(108,'A'),
(108,'B'),
(108,'C'),
(108,'D'),
(109,'D'),
(109,'E');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb3q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 3
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 3 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 4

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'B'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,104),
(3,15,1,100),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,3),
(109,3),
(110,2);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109),
(110);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,1),
(3,101,1),
(2,105,15),
(1,108,1),
(2,109,2),
(3,109,1),
(1,110,9),
(2,110,8);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D'),
('E'),
('F');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(102,'F'),
(103,'F'),
(105,'B'),
(106,'C'),
(106,'F'),
(106,'A'),
(107,'F');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb4q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 4
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 4 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 5

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,3),
(109,3),
(110,2);

INSERT INTO Engineers (eid) VALUES
(101),
(102),
(105),
(106),
(107),
(108),
(109),
(110);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,11),
(2,101,4),
(2,105,15),
(1,108,10),
(2,109,12),
(3,109,11),
(1,110,9),
(2,110,8);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb5q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 5
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 5 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 6

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,100),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,3),
(109,3),
(110,2);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb6q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 6
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 6 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 7

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100);

INSERT INTO Employees (eid, did) VALUES
(100,1);

INSERT INTO Managers (eid) VALUES
(100);

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb7q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 7
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 7 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 8

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,15);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb8q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 8
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 8 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 9

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,11),
(2,108,12),
(2,109,10);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C'),
(108,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb9q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 9
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 9 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 10

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2),
(110,3),
(111,2);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104),
(110),
(111);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100),
(4,10,111 );

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,11),
(2,108,12),
(2,109,10),
(4,101,3);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C'),
(108,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb10q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 10
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 10 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 11

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104),
(5,20,2,112);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2),
(110,3),
(111,2),
(112,5);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104),
(110),
(111),
(112);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100),
(4,10,111 );

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,11),
(2,108,12),
(2,109,10),
(4,101,3);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C'),
(108,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb11q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 11
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 11 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 12

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104),
(5,20,2,112);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2),
(110,3),
(111,2),
(112,5),
(113,3);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109),
(113);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104),
(110),
(111),
(112);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100),
(4,10,111 );

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,11),
(2,108,12),
(2,109,10),
(4,101,3),
(4,113,19);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C'),
(108,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb12q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 12
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 12 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 13

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104),
(5,20,2,112);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2),
(110,3),
(111,2),
(112,5),
(113,3),
(114,3);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109),
(113),
(114);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104),
(110),
(111),
(112);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100),
(4,10,111 );

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,11),
(2,108,12),
(2,109,10),
(4,101,3),
(4,113,19),
(4,114,3);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C'),
(108,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb13q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 13
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 13 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 14

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104),
(5,20,2,112);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2),
(110,3),
(111,2),
(112,5),
(113,3),
(114,3),
(115,2);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109),
(113),
(114),
(115);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104),
(110),
(111),
(112);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100),
(4,10,111 );

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(4,101,3),
(2,105,11),
(2,108,12),
(2,109,10),
(4,113,19),
(4,114,3),
(1,115,8);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C'),
(108,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb14q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 14
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 14 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 15

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104),
(5,20,2,112);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2),
(110,3),
(111,2),
(112,5),
(113,3),
(114,3),
(115,2),
(116,4);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109),
(113),
(114),
(115);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104),
(110),
(111),
(112);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100),
(4,10,111 );

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(4,101,3),
(2,105,11),
(2,108,12),
(2,109,10),
(4,113,19),
(4,114,3),
(1,115,8);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C'),
(108,'C'),
(116,'B');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb15q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 15
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 15 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 16

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,11),
(2,108,12),
(2,109,10);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb16q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 16
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 16 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 17

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,11),
(2,108,12),
(2,109,10);

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb17q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 17
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 17 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 18

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,100),
(2,12,2,103),
(3,15,1,104),
(4,8,1,104),
(5,20,2,112);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4),
(108,2),
(109,2),
(110,3),
(111,2),
(112,5),
(113,3),
(114,3),
(115,2),
(116,4);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106),
(108),
(109),
(113),
(114),
(115);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104),
(110),
(111),
(112);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100),
(4,10,111 );

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(4,101,3),
(2,105,11),
(3,108,12),
(2,109,10),
(4,113,19),
(4,114,3),
(1,115,8);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C'),
(108,'C'),
(116,'B');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb18q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 18
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 18 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 19

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,103),
(2,12,2,100),
(3,15,1,100),
(4,8,1,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,15);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb19q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 19
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 19 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

-- Load data for testcase 20

DELETE FROM Specializes;
DELETE FROM Areas;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Managers;
DELETE FROM Engineers;
DELETE FROM Employees;
DELETE FROM Departments;
DELETE FROM Offices;


INSERT INTO Offices (oid, address) VALUES
(1,'A'),
(2,'B');

INSERT INTO Departments (did, dbudget, oid, eid) VALUES
(1,10,1,103),
(2,12,1,100),
(3,15,1,100),
(4,8,2,104);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,1),
(103,2),
(104,3),
(105,3),
(106,3),
(107,4);

INSERT INTO Engineers (eid) VALUES
(101),
(105),
(106);

INSERT INTO Managers (eid) VALUES
(100),
(103),
(104);

INSERT INTO Projects (pid, pbudget, eid) VALUES
(1,2,100),
(2,4,103),
(3,4,100);

INSERT INTO Works (pid, eid, hours) VALUES
(1,101,10),
(3,101,4),
(2,105,15);

INSERT INTO Areas (aid) VALUES
('A'),
('B'),
('C'),
('D');

INSERT INTO Specializes (eid, aid) VALUES
(101,'A'),
(101,'B'),
(105,'B'),
(106,'C');

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v8;
CREATE VIEW zzsolution AS SELECT * FROM zzdb20q8;

-- Compare zzsolution and zzanswer for Question 8 on testcase 20
WITH correct AS  ( 
	SELECT * FROM zzanswer 
	INTERSECT ALL 
	SELECT * FROM zzsolution
), 
extra AS (
	SELECT * FROM zzanswer 
	EXCEPT ALL 
	SELECT * FROM zzsolution
), 
missing AS (
	SELECT * FROM zzsolution 
	EXCEPT ALL 
	SELECT * FROM zzanswer
) 
INSERT INTO zzSummary
SELECT 'Test case ' || 20 || ' - ' || 
CASE 
	WHEN (SELECT COALESCE(COUNT(*),0) FROM extra) = 0 THEN
		CASE 
			WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'CORRECT'
			ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing)
		END
	WHEN (SELECT COALESCE(COUNT(*),0) FROM missing) = 0  THEN 'INCORRECT: EXTRA = ' || (SELECT COUNT(*) FROM extra)
	ELSE 'INCORRECT: MISSING = ' || (SELECT COUNT(*) FROM missing) || ', EXTRA = ' || (SELECT COUNT(*) FROM extra)
END as status;

SELECT status AS  "Summary of testing query 8"  FROM zzSummary;
