-- Test summary for Question 5 Query

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
CREATE VIEW zzanswer AS SELECT * FROM v5;
CREATE VIEW zzsolution AS SELECT * FROM zzdb1q5;

-- Compare zzsolution and zzanswer for Question 5 on testcase 1
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
CREATE VIEW zzanswer AS SELECT * FROM v5;
CREATE VIEW zzsolution AS SELECT * FROM zzdb2q5;

-- Compare zzsolution and zzanswer for Question 5 on testcase 2
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
CREATE VIEW zzanswer AS SELECT * FROM v5;
CREATE VIEW zzsolution AS SELECT * FROM zzdb3q5;

-- Compare zzsolution and zzanswer for Question 5 on testcase 3
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
CREATE VIEW zzanswer AS SELECT * FROM v5;
CREATE VIEW zzsolution AS SELECT * FROM zzdb4q5;

-- Compare zzsolution and zzanswer for Question 5 on testcase 4
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
CREATE VIEW zzanswer AS SELECT * FROM v5;
CREATE VIEW zzsolution AS SELECT * FROM zzdb5q5;

-- Compare zzsolution and zzanswer for Question 5 on testcase 5
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
CREATE VIEW zzanswer AS SELECT * FROM v5;
CREATE VIEW zzsolution AS SELECT * FROM zzdb6q5;

-- Compare zzsolution and zzanswer for Question 5 on testcase 6
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
CREATE VIEW zzanswer AS SELECT * FROM v5;
CREATE VIEW zzsolution AS SELECT * FROM zzdb7q5;

-- Compare zzsolution and zzanswer for Question 5 on testcase 7
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

SELECT status AS  "Summary of testing query 5"  FROM zzSummary;
