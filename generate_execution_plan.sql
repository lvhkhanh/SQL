EXPLAIN PLAN FOR SELECT * FROM EMPLOYEES;
EXPLAIN PLAN FOR SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID= 100;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY());
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID= 100;
EXPLAIN PLAN SET statement_id = 'MyID' FOR SELECT * FROM employees WHERE employee_id= 100;
SELECT * FROM PLAN_TABLE;
