
DROP VIEW IF EXISTS zzanswer CASCADE;
DROP VIEW IF EXISTS v1, v2, v3, v4, v5, v6, v7, v8, v9, v10 CASCADE;


/* 
Question 1
Find all engineers who spend more than 10 hours per week on some project.
*/
create view v1  (eid) as
select distinct eid
from Works W
where hours > 10
;


/* 
Question 2
Find all employees who specialize in at least two areas:
the first area is 'A', and the second area is 'B' or 'C'
*/
create view v2  (eid) as
select distinct S1.eid
from Specializes S1, Specializes S2
where S1.eid = S2.eid
and (S1.aid = 'A'
and (S2.aid = 'B' or S2.aid = 'C'))
;

/* 
Question 3 
Find all employees who are located in the office with address 'A'.
*/
create view v3  (eid) as
select distinct E.eid
from Employees E, Departments D natural join Offices O
where E.did = D.did
and O.address = 'A'
;


/* 
Question 4 
Find all managers who are not supervising any project.
*/
create view v4 (eid)  as
select M.eid
from Managers M left join Projects P
on M.eid = P.eid
;

/* 
Question 5 
Find all engineers who spend at most 1 hour per week on every project that she/he works on.
Exclude engineers who do not work on any project.
*/
create view v5  (eid) as
select distinct eid
from Works W
where hours <= 1
;

/* 
Question 6 
For each employee, output (eid, num), where eid is the employee's identifier,
and num is defined as follows.
	- if the employee is a manager, then num denote the number of departments managed by that manager,
	- if the employee is an engineer, then num denote the number of projects that the engineer works on,
	- otherwise, num should have a value of 0.
*/
create view v6  (eid, num) as
select 1,1
;

/* 
Question 7 
Find all projects where the number of engineers who work on that project is exactly two.
Where eid and eid2 are the identifiers of the only two engineers
who work on the project with identifier pid  such that eid < eid2.
*/
create view v7  (pid, eid, eid2) as
select 1,1,1
;

/* 
Question 8 
For each specialization area A, find the number of distinct departments
that have some employee who belongs to that department and specializes in area A.
The number reported should be 0 if none of the employees specialize in A.
*/
create view v8  (aid,num) as
select '1',1
;

/* 
Question 9 
We say that a department D is managing a project P
if the manager who is supervising P belongs to D.
Find projects where the number of engineers who work on that project
is more than the number of employees who belong to the department that is managing that project.
*/
create view v9  (pid) as
select 1
;

/* 
Question 10 
We say that a manager M manages an engineer E if E belongs to a department that is managed by M.
We say that a manager M supervises an engineer E if E works on some project that is supervised by M.
We say that a manager M is controlling if for every engineer E that is managed by M,
either E is not supervised by any manager or E is supervised by only M and no other manager.
Find all controlling managers. Include managers who do not manage any engineers.*/
create view v10 (eid)  as
select 1
;


