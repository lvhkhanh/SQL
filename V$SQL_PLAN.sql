SELECT * FROM v$sqlarea;
SELECT * FROM v$sqlstats;
SELECT * FROM v$sql;
SELECT * FROM v$sql_plan;
SELECT * FROM v$sql_workarea;
SELECT * FROM v$sql_plan_statistics;
SELECT * FROM v$sql_plan_statistics_all;
 
 SELECT s.prod_id
  FROM sales s, customers c
  WHERE s.cust_id = c.cust_id;
 
select * from v$sql;
select * from v$sql where sql_text like '%SELECT s.prod_id 
                                           FROM sales s, customers c 
                                           WHERE s.cust_id = c.cust_id%';
select * from v$sql where sql_text like '%SELECT s.prod_id FROM sales s, customers c WHERE s.cust_id = c.cust_id%';
 
 SELECT /* my query */ s.prod_id
  FROM sales s, customers c
  WHERE s.cust_id = c.cust_id;
 
select * from v$sql where sql_text like '%my query%';
select * from v$sql_plan where sql_id = '';
select * from table(dbms_xplan.display_cursor(''));
