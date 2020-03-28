-- Test summary for Query for Question 7

DELETE FROM zzSummary;

-- Load data for testcase 1


DELETE FROM Supervises;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Employees;
DELETE FROM Departments;


INSERT INTO Departments (did, offid) VALUES
(1,1),
(2,2),
(3,2),
(10,1);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,2),
(103,2),
(104,3),
(105,10),
(106,3),
(107,10),
(108,3),
(109,3),
(110,2),
(111,2),
(112,10);

INSERT INTO Projects (pid, budget) VALUES
(1,4),
(2,12),
(3,1),
(4,2),
(5,13),
(6,22);

INSERT INTO Works (pid, eid, whours) VALUES
(1,101,10),
(3,101,4),
(3,102,10),
(4,103,9),
(2,105,8),
(1,107,9),
(3,107,6),
(1,108,10),
(1,109,3),
(2,109,9),
(3,109,10),
(4,109,8),
(1,110,9),
(2,110,8),
(4,110,2),
(5,111,10),
(6,111,5),
(5,112,10),
(6,112,9);

INSERT INTO Supervises (pid, eid, shours) VALUES
(1,101,9),
(3,101,4),
(3,102,5),
(4,103,6),
(2,105,10),
(1,107,9),
(3,107,6),
(1,108,10),
(1,109,3),
(2,109,10),
(3,109,10),
(4,109,10),
(1,110,9),
(2,110,8),
(4,110,2),
(5,111,10),
(6,111,5),
(5,112,4),
(6,112,5);

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v7;
CREATE VIEW zzsolution AS SELECT * FROM zzdb1q7;

-- Compare zzsolution and zzanswer for Question 7 on testcase 1
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


DELETE FROM Supervises;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Employees;
DELETE FROM Departments;


INSERT INTO Departments (did, offid) VALUES
(1,1),
(2,2),
(3,2),
(4,3),
(10,3);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,1),
(102,2),
(103,3),
(104,3),
(105,10),
(106,3),
(107,10),
(108,3),
(109,3),
(110,2),
(111,4),
(112,10),
(113,4);

INSERT INTO Projects (pid, budget) VALUES
(1,10),
(2,4),
(3,20),
(4,11),
(5,2),
(6,15);

INSERT INTO Works (pid, eid, whours) VALUES
(1,101,8),
(3,101,4),
(1,102,10),
(3,102,10),
(4,103,9),
(2,105,8),
(1,107,9),
(3,107,6),
(1,108,10),
(4,108,10),
(1,109,3),
(2,109,9),
(3,109,7),
(4,109,8),
(1,110,9),
(2,110,8),
(4,110,2),
(5,111,3),
(6,111,5),
(5,112,4),
(6,112,9);

INSERT INTO Supervises (pid, eid, shours) VALUES
(1,101,1),
(3,101,4),
(1,102,5),
(3,102,5),
(4,103,3),
(2,105,5),
(1,107,9),
(3,107,6),
(1,108,8),
(4,108,5),
(1,109,3),
(2,109,2),
(3,109,1),
(4,109,1),
(1,110,9),
(2,110,8),
(4,110,2),
(5,111,5),
(6,111,4),
(5,112,1),
(6,112,2);

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v7;
CREATE VIEW zzsolution AS SELECT * FROM zzdb2q7;

-- Compare zzsolution and zzanswer for Question 7 on testcase 2
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


DELETE FROM Supervises;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Employees;
DELETE FROM Departments;


INSERT INTO Departments (did, offid) VALUES
(1,1),
(2,2);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,2),
(102,2);

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v7;
CREATE VIEW zzsolution AS SELECT * FROM zzdb3q7;

-- Compare zzsolution and zzanswer for Question 7 on testcase 3
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


DELETE FROM Supervises;
DELETE FROM Works;
DELETE FROM Projects;
DELETE FROM Employees;
DELETE FROM Departments;


INSERT INTO Departments (did, offid) VALUES
(1,1),
(2,1),
(10,1);

INSERT INTO Employees (eid, did) VALUES
(100,1),
(101,2),
(102,10);

INSERT INTO Projects (pid, budget) VALUES
(1,11);

INSERT INTO Works (pid, eid, whours) VALUES
(1,100,5);

INSERT INTO Supervises (pid, eid, shours) VALUES
(1,100,3);

DROP VIEW IF EXISTS zzanswer, zzsolution;
CREATE VIEW zzanswer AS SELECT * FROM v7;
CREATE VIEW zzsolution AS SELECT * FROM zzdb4q7;

-- Compare zzsolution and zzanswer for Question 7 on testcase 4
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

SELECT status AS  "Summary of testing query 7"  FROM zzSummary;
