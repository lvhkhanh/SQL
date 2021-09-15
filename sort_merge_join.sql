/* Sort Merge Join example */
SELECT * FROM employees e JOIN departments d
ON d.department_id = e.department_id
WHERE e.last_name like 'K%';
 
/* Force it to use Nested Loop Join */
SELECT /*+ use_nl(e d) */* FROM employees e JOIN departments d
ON d.department_id = e.department_id
WHERE e.last_name like 'K%';
 
/* Another Sort Merge Join example */
SELECT * FROM employees e JOIN departments d
ON d.department_id = e.department_id
WHERE d.manager_id > 110;
