select * from employees where department_id = 80
union
select * from employees where first_name like 'A%';
 
select * from employees where department_id = 80
union all
select * from employees where first_name like 'A%';
