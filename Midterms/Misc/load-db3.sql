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
