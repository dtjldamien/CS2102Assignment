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
