-- Create base and solution tables. Load data into solution tables.


DROP VIEW IF EXISTS zzsolution, zzanswer CASCADE;
DROP VIEW IF EXISTS v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11 CASCADE;
DROP TABLE IF EXISTS zzSummary CASCADE;

DROP TABLE IF EXISTS Supervises CASCADE;
DROP TABLE IF EXISTS Works CASCADE;
DROP TABLE IF EXISTS Projects CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Departments CASCADE;

CREATE TABLE zzSummary (
	status		TEXT
);


CREATE TABLE Departments (
	did 			INTEGER,
	offid 			INTEGER NOT NULL,
	PRIMARY KEY (did)
);

CREATE TABLE Employees (
	eid 			INTEGER,
	did 			INTEGER NOT NULL,
	PRIMARY KEY (eid),
	FOREIGN KEY (did) REFERENCES Departments 
);

CREATE TABLE Projects (
	pid 			INTEGER,
	budget 			INTEGER NOT NULL,
	PRIMARY KEY (pid)
);


CREATE TABLE Works (
	pid 			INTEGER,
	eid 			INTEGER,
	whours 			INTEGER NOT NULL,
	PRIMARY KEY (pid,eid),
	FOREIGN KEY (eid) REFERENCES Employees,
	FOREIGN KEY (pid) REFERENCES Projects
);

CREATE TABLE Supervises (
	pid 			INTEGER,
	eid 			INTEGER,
	shours 			INTEGER NOT NULL,
	PRIMARY KEY (pid,eid),
	FOREIGN KEY (eid) REFERENCES Employees,
	FOREIGN KEY (pid) REFERENCES Projects
);
DROP VIEW IF EXISTS zzsolution CASCADE;
DROP TABLE IF EXISTS zzdb1q2 CASCADE;
DROP TABLE IF EXISTS zzdb1q3 CASCADE;
DROP TABLE IF EXISTS zzdb1q4 CASCADE;
DROP TABLE IF EXISTS zzdb1q5 CASCADE;
DROP TABLE IF EXISTS zzdb1q6 CASCADE;
DROP TABLE IF EXISTS zzdb1q7 CASCADE;
DROP TABLE IF EXISTS zzdb1q8 CASCADE;
DROP TABLE IF EXISTS zzdb1q9 CASCADE;
DROP TABLE IF EXISTS zzdb1q10 CASCADE;
DROP TABLE IF EXISTS zzdb1q11 CASCADE;

DROP TABLE IF EXISTS zzdb2q2 CASCADE;
DROP TABLE IF EXISTS zzdb2q3 CASCADE;
DROP TABLE IF EXISTS zzdb2q4 CASCADE;
DROP TABLE IF EXISTS zzdb2q5 CASCADE;
DROP TABLE IF EXISTS zzdb2q6 CASCADE;
DROP TABLE IF EXISTS zzdb2q7 CASCADE;
DROP TABLE IF EXISTS zzdb2q8 CASCADE;
DROP TABLE IF EXISTS zzdb2q9 CASCADE;
DROP TABLE IF EXISTS zzdb2q10 CASCADE;
DROP TABLE IF EXISTS zzdb2q11 CASCADE;

DROP TABLE IF EXISTS zzdb3q2 CASCADE;
DROP TABLE IF EXISTS zzdb3q3 CASCADE;
DROP TABLE IF EXISTS zzdb3q4 CASCADE;
DROP TABLE IF EXISTS zzdb3q5 CASCADE;
DROP TABLE IF EXISTS zzdb3q6 CASCADE;
DROP TABLE IF EXISTS zzdb3q7 CASCADE;
DROP TABLE IF EXISTS zzdb3q8 CASCADE;
DROP TABLE IF EXISTS zzdb3q9 CASCADE;
DROP TABLE IF EXISTS zzdb3q10 CASCADE;
DROP TABLE IF EXISTS zzdb3q11 CASCADE;

DROP TABLE IF EXISTS zzdb4q2 CASCADE;
DROP TABLE IF EXISTS zzdb4q3 CASCADE;
DROP TABLE IF EXISTS zzdb4q4 CASCADE;
DROP TABLE IF EXISTS zzdb4q5 CASCADE;
DROP TABLE IF EXISTS zzdb4q6 CASCADE;
DROP TABLE IF EXISTS zzdb4q7 CASCADE;
DROP TABLE IF EXISTS zzdb4q8 CASCADE;
DROP TABLE IF EXISTS zzdb4q9 CASCADE;
DROP TABLE IF EXISTS zzdb4q10 CASCADE;
DROP TABLE IF EXISTS zzdb4q11 CASCADE;







CREATE TABLE zzdb1q10 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb1q11 (
    eid integer
);



CREATE TABLE zzdb1q2 (
    pid integer
);



CREATE TABLE zzdb1q3 (
    eid integer,
    num bigint
);



CREATE TABLE zzdb1q4 (
    num bigint
);



CREATE TABLE zzdb1q5 (
    eid integer
);



CREATE TABLE zzdb1q6 (
    pid integer
);



CREATE TABLE zzdb1q7 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb1q8 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb1q9 (
    w bigint,
    s bigint,
    num bigint
);



CREATE TABLE zzdb2q10 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb2q11 (
    eid integer
);



CREATE TABLE zzdb2q2 (
    pid integer
);



CREATE TABLE zzdb2q3 (
    eid integer,
    num bigint
);



CREATE TABLE zzdb2q4 (
    num bigint
);



CREATE TABLE zzdb2q5 (
    eid integer
);



CREATE TABLE zzdb2q6 (
    pid integer
);



CREATE TABLE zzdb2q7 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb2q8 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb2q9 (
    w bigint,
    s bigint,
    num bigint
);



CREATE TABLE zzdb3q10 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb3q11 (
    eid integer
);



CREATE TABLE zzdb3q2 (
    pid integer
);



CREATE TABLE zzdb3q3 (
    eid integer,
    num bigint
);



CREATE TABLE zzdb3q4 (
    num bigint
);



CREATE TABLE zzdb3q5 (
    eid integer
);



CREATE TABLE zzdb3q6 (
    pid integer
);



CREATE TABLE zzdb3q7 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb3q8 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb3q9 (
    w bigint,
    s bigint,
    num bigint
);



CREATE TABLE zzdb4q10 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb4q11 (
    eid integer
);



CREATE TABLE zzdb4q2 (
    pid integer
);



CREATE TABLE zzdb4q3 (
    eid integer,
    num bigint
);



CREATE TABLE zzdb4q4 (
    num bigint
);



CREATE TABLE zzdb4q5 (
    eid integer
);



CREATE TABLE zzdb4q6 (
    pid integer
);



CREATE TABLE zzdb4q7 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb4q8 (
    eid1 integer,
    eid2 integer
);



CREATE TABLE zzdb4q9 (
    w bigint,
    s bigint,
    num bigint
);



INSERT INTO zzdb1q10 (eid1, eid2) VALUES (104, 106);



INSERT INTO zzdb1q11 (eid) VALUES (111);
INSERT INTO zzdb1q11 (eid) VALUES (112);



INSERT INTO zzdb1q2 (pid) VALUES (1);
INSERT INTO zzdb1q2 (pid) VALUES (2);
INSERT INTO zzdb1q2 (pid) VALUES (3);
INSERT INTO zzdb1q2 (pid) VALUES (5);
INSERT INTO zzdb1q2 (pid) VALUES (6);



INSERT INTO zzdb1q3 (eid, num) VALUES (109, 4);
INSERT INTO zzdb1q3 (eid, num) VALUES (110, 3);



INSERT INTO zzdb1q4 (num) VALUES (2);



INSERT INTO zzdb1q5 (eid) VALUES (100);
INSERT INTO zzdb1q5 (eid) VALUES (101);
INSERT INTO zzdb1q5 (eid) VALUES (102);
INSERT INTO zzdb1q5 (eid) VALUES (103);
INSERT INTO zzdb1q5 (eid) VALUES (104);
INSERT INTO zzdb1q5 (eid) VALUES (105);
INSERT INTO zzdb1q5 (eid) VALUES (106);
INSERT INTO zzdb1q5 (eid) VALUES (107);
INSERT INTO zzdb1q5 (eid) VALUES (108);
INSERT INTO zzdb1q5 (eid) VALUES (109);
INSERT INTO zzdb1q5 (eid) VALUES (110);
INSERT INTO zzdb1q5 (eid) VALUES (111);
INSERT INTO zzdb1q5 (eid) VALUES (112);



INSERT INTO zzdb1q6 (pid) VALUES (1);
INSERT INTO zzdb1q6 (pid) VALUES (2);
INSERT INTO zzdb1q6 (pid) VALUES (3);
INSERT INTO zzdb1q6 (pid) VALUES (5);
INSERT INTO zzdb1q6 (pid) VALUES (6);



INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 101);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 102);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 103);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 104);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 105);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 106);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 107);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 108);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 109);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 110);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (100, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (101, 103);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (101, 104);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (101, 105);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (101, 106);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (101, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (101, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (102, 103);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (102, 104);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (102, 105);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (102, 106);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (102, 108);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (102, 110);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (102, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (102, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (103, 104);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (103, 105);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (103, 106);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (103, 107);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (103, 108);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (103, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (103, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (104, 105);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (104, 106);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (104, 107);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (104, 108);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (104, 109);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (104, 110);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (104, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (104, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (105, 106);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (105, 107);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (105, 108);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (105, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (105, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (106, 107);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (106, 108);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (106, 109);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (106, 110);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (106, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (106, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (107, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (107, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (108, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (108, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (109, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (109, 112);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (110, 111);
INSERT INTO zzdb1q7 (eid1, eid2) VALUES (110, 112);



INSERT INTO zzdb1q8 (eid1, eid2) VALUES (101, 107);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (101, 109);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (102, 101);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (102, 107);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (102, 109);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (103, 109);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (103, 110);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (105, 109);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (105, 110);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (107, 101);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (107, 109);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (108, 101);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (108, 107);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (108, 109);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (108, 110);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (109, 110);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (110, 109);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (111, 112);
INSERT INTO zzdb1q8 (eid1, eid2) VALUES (112, 111);



INSERT INTO zzdb1q9 (w, s, num) VALUES (0, 0, 3);
INSERT INTO zzdb1q9 (w, s, num) VALUES (0, 1, 3);
INSERT INTO zzdb1q9 (w, s, num) VALUES (0, 2, 2);
INSERT INTO zzdb1q9 (w, s, num) VALUES (1, 0, 1);
INSERT INTO zzdb1q9 (w, s, num) VALUES (1, 2, 1);
INSERT INTO zzdb1q9 (w, s, num) VALUES (1, 3, 1);
INSERT INTO zzdb1q9 (w, s, num) VALUES (2, 0, 2);



INSERT INTO zzdb2q10 (eid1, eid2) VALUES (104, 106);



INSERT INTO zzdb2q11 (eid) VALUES (111);
INSERT INTO zzdb2q11 (eid) VALUES (112);



INSERT INTO zzdb2q2 (pid) VALUES (1);
INSERT INTO zzdb2q2 (pid) VALUES (2);
INSERT INTO zzdb2q2 (pid) VALUES (3);
INSERT INTO zzdb2q2 (pid) VALUES (5);
INSERT INTO zzdb2q2 (pid) VALUES (6);



INSERT INTO zzdb2q3 (eid, num) VALUES (109, 4);
INSERT INTO zzdb2q3 (eid, num) VALUES (110, 3);



INSERT INTO zzdb2q4 (num) VALUES (3);



INSERT INTO zzdb2q5 (eid) VALUES (100);
INSERT INTO zzdb2q5 (eid) VALUES (101);
INSERT INTO zzdb2q5 (eid) VALUES (102);
INSERT INTO zzdb2q5 (eid) VALUES (103);
INSERT INTO zzdb2q5 (eid) VALUES (104);
INSERT INTO zzdb2q5 (eid) VALUES (105);
INSERT INTO zzdb2q5 (eid) VALUES (106);
INSERT INTO zzdb2q5 (eid) VALUES (107);
INSERT INTO zzdb2q5 (eid) VALUES (108);
INSERT INTO zzdb2q5 (eid) VALUES (109);
INSERT INTO zzdb2q5 (eid) VALUES (110);
INSERT INTO zzdb2q5 (eid) VALUES (111);
INSERT INTO zzdb2q5 (eid) VALUES (112);
INSERT INTO zzdb2q5 (eid) VALUES (113);



INSERT INTO zzdb2q6 (pid) VALUES (1);
INSERT INTO zzdb2q6 (pid) VALUES (2);
INSERT INTO zzdb2q6 (pid) VALUES (3);



INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 101);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 102);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 103);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 104);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 105);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 106);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 107);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 108);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 109);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 110);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (100, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (101, 103);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (101, 104);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (101, 105);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (101, 106);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (101, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (101, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (101, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (102, 103);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (102, 104);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (102, 105);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (102, 106);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (102, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (102, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (102, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (103, 104);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (103, 105);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (103, 106);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (103, 107);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (103, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (103, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (103, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (104, 105);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (104, 106);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (104, 107);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (104, 108);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (104, 109);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (104, 110);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (104, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (104, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (104, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (105, 106);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (105, 107);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (105, 108);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (105, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (105, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (105, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (106, 107);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (106, 108);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (106, 109);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (106, 110);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (106, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (106, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (106, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (107, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (107, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (107, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (108, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (108, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (108, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (109, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (109, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (109, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (110, 111);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (110, 112);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (110, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (111, 113);
INSERT INTO zzdb2q7 (eid1, eid2) VALUES (112, 113);



INSERT INTO zzdb2q8 (eid1, eid2) VALUES (101, 102);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (101, 107);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (101, 109);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (102, 101);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (102, 107);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (102, 109);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (103, 108);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (103, 109);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (103, 110);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (105, 109);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (105, 110);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (107, 101);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (107, 102);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (107, 109);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (108, 109);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (108, 110);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (109, 110);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (110, 109);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (111, 112);
INSERT INTO zzdb2q8 (eid1, eid2) VALUES (112, 111);



INSERT INTO zzdb2q9 (w, s, num) VALUES (0, 0, 4);
INSERT INTO zzdb2q9 (w, s, num) VALUES (0, 1, 1);
INSERT INTO zzdb2q9 (w, s, num) VALUES (1, 0, 1);
INSERT INTO zzdb2q9 (w, s, num) VALUES (1, 1, 2);
INSERT INTO zzdb2q9 (w, s, num) VALUES (2, 0, 4);
INSERT INTO zzdb2q9 (w, s, num) VALUES (2, 1, 1);
INSERT INTO zzdb2q9 (w, s, num) VALUES (3, 1, 1);



INSERT INTO zzdb3q10 (eid1, eid2) VALUES (101, 102);












INSERT INTO zzdb3q4 (num) VALUES (0);



INSERT INTO zzdb3q5 (eid) VALUES (100);
INSERT INTO zzdb3q5 (eid) VALUES (101);
INSERT INTO zzdb3q5 (eid) VALUES (102);






INSERT INTO zzdb3q7 (eid1, eid2) VALUES (100, 101);
INSERT INTO zzdb3q7 (eid1, eid2) VALUES (100, 102);
INSERT INTO zzdb3q7 (eid1, eid2) VALUES (101, 102);






INSERT INTO zzdb3q9 (w, s, num) VALUES (0, 0, 3);















INSERT INTO zzdb4q4 (num) VALUES (1);



INSERT INTO zzdb4q5 (eid) VALUES (100);
INSERT INTO zzdb4q5 (eid) VALUES (101);
INSERT INTO zzdb4q5 (eid) VALUES (102);






INSERT INTO zzdb4q7 (eid1, eid2) VALUES (100, 101);
INSERT INTO zzdb4q7 (eid1, eid2) VALUES (100, 102);
INSERT INTO zzdb4q7 (eid1, eid2) VALUES (101, 102);






INSERT INTO zzdb4q9 (w, s, num) VALUES (0, 0, 2);
INSERT INTO zzdb4q9 (w, s, num) VALUES (1, 0, 1);



