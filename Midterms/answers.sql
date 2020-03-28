
DROP VIEW IF EXISTS zzanswer CASCADE;
DROP VIEW IF EXISTS v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11 CASCADE;


/* 
Question 2
*/
create view v2  (pid) as
select distinct S.pid
from Supervises S left join Employees E on (S.eid = E.eid)
where E.did = 10
union
select distinct W.pid
from Works W left join Employees E on (W.eid = E.eid)
where E.did = 10
;

/* 
Question 3 
*/
create view v3  (eid, num) as
select W.eid, count(*)
from Works W
group by W.eid
having count(*) >= 3
;


/* 
Question 4 
*/
create view v4 (num) as
with countEmployeesSameProjectAndDept as (
	select coalesce(count(E.eid), 0) as numEmployees
	from Supervises S natural join Employees E
	group by E.did, S.pid
)
select coalesce(max(numEmployees), 0)
from countEmployeesSameProjectAndDept
;

/* 
Question 5 
*/
create view v5  (eid) as
select distinct E.eid
from Employees E 
left join Works W on E.eid = W.eid
and W.pid <> 10
;

/* 
Question 6 
*/
create view v6  (pid) as
select distinct S1.pid
from Supervises S1 natural join Employees E1 natural join Departments D1, 
Supervises S2 natural join Employees E2 natural join Departments D2
where S1.pid = S2.pid
and D1.offid <> D2.offid
;

/* 
Question 7 
*/
create view v7  (eid1, eid2) as
select 1,1
;

/* 
Question 8 
*/
create view v8  (eid1, eid2) as
with Collaborators as (
select S1.eid as eid1, S2.eid as eid2, count(S2.eid) as numProjects
from Supervises S1 natural join Employees E1 natural join Departments D1, 
Supervises S2 natural join Employees E2 natural join Departments D2
where S1.pid = S2.pid
and S1.eid <> S2.eid
group by S1.eid, S2.eid
)
select C1.eid1, C1.eid2
from Collaborators C1
where C1.numProjects >= all (
	select C2.numProjects
	from Collaborators C2
	where C1.eid1 = C2.eid1
	and C1.eid1 <> C2.eid2
)
;

/* 
Question 9 
*/
create view v9  (B, S, num) as
select 1,1,1
;

/* 
Question 10 
*/
create view v10  (eid1, eid2) as
select distinct E1.eid, E2.eid
from Employees E1 right outer join Supervises S1 on (E1.eid = S1.eid) right outer join Works W1 on (E1.eid = W1.eid),
Employees E2 right outer join Supervises S2 on (E2.eid = S2.eid) right outer join Works W2 on (E2.eid = W2.eid)
where E1.did = E2.did
and E1.eid <> E2.eid
and all E1.eid <> S1.eid
and all E2.eid <> S2.eid
and W1.whours <= 30
and W2.whours <= 30
and W1.whours + W2.whours <= 50
and E1.eid < E2.eid
;


/* 
Question 11 
*/
create view v11 (eid)  as
with CollaboratorsWithProject as (
select S1.eid as eid1, S2.eid as eid2, S1.pid as pid
from Supervises S1 natural join Employees E1 natural join Departments D1, 
Supervises S2 natural join Employees E2 natural join Departments D2
where S1.pid = S2.pid
and S1.eid <> S2.eid
)
select eid1
from CollaboratorsWithProject
where pid = all (
	select pid
	
;
