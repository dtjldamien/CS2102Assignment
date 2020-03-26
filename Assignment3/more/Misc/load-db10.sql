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
