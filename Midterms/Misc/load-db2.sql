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
