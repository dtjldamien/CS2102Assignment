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
