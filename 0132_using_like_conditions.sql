select employee_id, first_name, last_name, salary from employees
where last_name like '%on';
 
select employee_id, first_name, last_name, salary from employees
where last_name like '%on%';
 
select employee_id, first_name, last_name, salary from employees
where last_name like 'Ba%';
 
create index last_name_reverse_index on employees(REVERSE(last_name));
 
select employee_id, first_name, last_name, reverse(last_name), salary
from employees
where reverse(last_name) like 'rahh%';
 
drop index last_name_reverse_index;
