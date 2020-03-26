
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
select eid
from Managers M
except
select M.eid
from Managers M inner join Projects P
on (M.eid = P.eid)
;

/* 
Question 5 
Find all engineers who spend at most 1 hour per week on every project that she/he works on.
Exclude engineers who do not work on any project.
*/
create view v5  (eid) as
select distinct eid
from Works W
group by eid
having max(hours) <= 1
;

/* 
Question 6 
For each employee, output (eid, num), where eid is the employee's identifier,
and num is defined as follows.
	- if the employee is a manager, 
	then num denote the number of departments managed by that manager,
	- if the employee is an engineer, 
	then num denote the number of projects that the engineer works on,
	- otherwise, num should have a value of 0.
*/
create view v6  (eid, num) as
select E.eid, case
	when W.eid is not null
	then count(*)
	when D.eid is not null
	then count(*)
	else 0
	end
from Employees E 
full outer join Works W on E.eid = W.eid 
full outer join Departments D on E.eid = D.eid
group by W.eid, D.eid, E.eid	
;

/* 
Question 7 
Find all projects where the number of engineers who work on that project is exactly two.
Where eid and eid2 are the identifiers of the only two engineers
who work on the project with identifier pid  such that eid < eid2.
*/
create view v7  (pid, eid, eid2) as
select W1.pid, W1.eid, W2.eid
from Works W1 
inner join Works W2 on (W1.pid = W2.pid and W1.eid < W2.eid)
where W1.pid in (
	select W1.pid
	from Works W1
	group by W1.pid
	having count(W1.pid) = 2
);

/* 
Question 8 
For each specialization area A, find the number of distinct departments
that have some employee who belongs to that department and specializes in area A.
The number reported should be 0 if none of the employees specialize in A.
*/
create view v8  (aid,num) as
select A.aid, count(distinct E.did)
from Areas A 
left join Specializes S on A.aid = S.aid 
left join Employees E on S.eid = E.eid
group by A.aid
;

/* 
Question 9 
We say that a department D is managing a project P
if the manager who is supervising P belongs to D.
Find projects where the number of engineers who work on that project
is more than the number of employees who belong to the department
that is managing that project.
*/
create view v9  (pid) as
select P.pid
from Projects P left join Employees E1 on P.eid = E1.eid 
right join Departments D on D.did = E1.did 
left join Works W on W.pid = P.pid
group by P.pid, D.did
having count(W.eid) > 
	(select count(E2.eid)
	from Employees E2
	where E2.did = D.did
	group by E2.did
);

/* 
Question 10 
We say that a manager M manages an engineer E
if E belongs to a department that is managed by M.
We say that a manager M supervises an engineer E 
if E works on some project that is supervised by M.
We say that a manager M is controlling 
if for every engineer E that is managed by M,
either E is not supervised by any manager or 
E is supervised by only M and no other manager.
Find all controlling managers. 
Include managers who do not manage any engineers.
*/
create view v10 (eid)  as
-- list of engineers and their department manager
with ManagerManagesEngineer as (
    select D.eid as meid, E.eid as eeid
    from Engineers N 
	left join Employees E on N.eid = E.eid 
	left join Departments D on D.did = E.did
), 
-- list of engineers and their project supervisors
ManagerSupervisesEngineer as (
    select P.eid as meid, W.eid as eeid
    from Employees E 
	left join Works W on W.eid = E.eid
	left join Projects P on W.pid = P.pid
    where not W.eid = P.eid
)
-- all managers
select M.eid
from Managers M
except
-- not controlling managers
select M.meid
from ManagerManagesEngineer M
where exists (
    select S.meid
    from ManagerSupervisesEngineer S
    where M.meid <> S.meid and M.eeid = S.eeid
)
;