SELECT e.first_name, e.last_name, dept_locs_v.street_address,
       dept_locs_v.postal_code
FROM   employees e,
      ( SELECT d.department_id, d.department_name, 
               l.street_address, l.postal_code
        FROM   departments d, locations l
        WHERE  d.location_id = l.location_id ) dept_locs_v
WHERE  dept_locs_v.department_id = e.department_id
AND    e.last_name = 'Smith';
 
 
select e.first_name, e.last_name, l.street_address, l.postal_code
from employees e, departments d, locations l
where d.location_id = l.location_id
and d.department_id = e.department_id
and e.last_name = 'Smith';
 
 
SELECT e.first_name, e.last_name, dept_locs_v.street_address,
       dept_locs_v.postal_code
FROM   employees e,
      ( SELECT /*+ NO_MERGE */ d.department_id, d.department_name, 
               l.street_address, l.postal_code
        FROM   departments d, locations l
        WHERE  d.location_id = l.location_id ) dept_locs_v
WHERE  dept_locs_v.department_id = e.department_id
AND    e.last_name = 'Smith';
 
 
select v.*,d.department_name from (select department_id, sum(salary) SUM_SAL
from employees group by department_id) v, departments d 
where v.department_id=d.department_id;
 
 
create view v as select department_id, salary from employees;
 
select department_id, salary from v;
 
drop view v;
 
create view v as select /*+ NO_MERGE */ department_id, salary from employees;
 
select department_id, salary from v;
 
select department_id, salary from (select /*+ NO_MERGE */ department_id, salary from employees);
 
select department_id, salary from employees;
 
drop view v;
 
select * from ALL_TAB_MODIFICATIONS;
