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
