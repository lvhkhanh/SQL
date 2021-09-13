-- One side bounded searched
SELECT * FROM SALES WHERE time_id > to_date('01-NOV-01','DD-MON-RR');
 
-- Bounded by both sides
SELECT * FROM SALES WHERE time_id between to_date('01-NOV-00','DD-MON-RR') and to_date('05-NOV-00','DD-MON-RR'); 
 
-- B-Tree index range scan
SELECT * FROM employees where employee_id > 190;
 
-- Index range scan on Non-Unique Index
SELECT * FROM employees where department_id > 80;
 
-- Order by with the indexed column -  sort is processed
SELECT * FROM employees where employee_id > 190 order by email;
 
-- Order by with the indexed column - no sort is processed
SELECT * FROM employees where employee_id > 190 order by employee_id;
 
-- Index range scan descending
SELECT * FROM employees where department_id > 80 order by department_id desc;
 
-- Index range scan with wildcard
SELECT * FROM PRODUCTS WHERE PROD_SUBCATEGORY LIKE 'Accessories%';
SELECT * FROM PRODUCTS WHERE PROD_SUBCATEGORY LIKE '%Accessories';
SELECT * FROM PRODUCTS WHERE PROD_SUBCATEGORY LIKE '%Accessories%';
Fullscreen
Expanded view
Go to Previous lecture57. Index Range Scan
Go to Next lecture59. Index Full Scan
Course content
Section 1: SQL & Perfomance Tuning
Course Introduction
3 / 3|10min
Section 2: What is SQL (Performance)
Tuning and Why We Need?
2 / 2|12min
Section 3: Oracle Database Architecture
12 / 15|1hr 9min
Section 4: SQL Tuning Basics
15 / 15|1hr 38min
Section 5: Execution Plans & Statistics
14 / 17|1hr 39min
Section 6: Table & Index Access Paths
5 / 18|1hr 32min

Progress cannot be changed for this item
50. What are Indexes and How They work in
details?
11min

Progress cannot be changed for this item
51. Types of Table and Index Access Paths
12min

Progress cannot be changed for this item
52. Table Access Full
9min

Progress cannot be changed for this item
53. Table Access Full (Code Samples)
1min

Progress cannot be changed for this item
54. Table Access by ROWID
6min

Progress cannot be changed for this item
55. Table Access by ROWID (Code Samples)
1min

Progress cannot be changed for this item
56. Index Unique Scan
5min

Progress cannot be changed for this item
57. Index Range Scan
11min

Progress cannot be changed for this item
58. Index Range Scan (Code Samples)
1min

Progress cannot be changed for this item
59. Index Full Scan
10min

Progress cannot be changed for this item
60. Index Full Scan (Code Samples)
1min

Progress cannot be changed for this item
61. Index Fast Full Scan
7min

Progress cannot be changed for this item
62. Index Fast Full Scan (Code Samples)
1min

Progress cannot be changed for this item
63. Index Skip Scan
14min

Progress cannot be changed for this item
64. Index Skip Scan (Code Samples)
1min

Progress cannot be changed for this item
65. Index Join Scan
6min

Progress cannot be changed for this item
66. Index Join Scan (Code Samples)
1min

Progress cannot be changed for this item
Quiz 2: Table & Index Access Paths
Section 7: Optimizer Hints
0 / 5|21min
Section 8: Join Operations
0 / 19|1hr 15min
Section 9: Other Optimizer Operators
0 / 25|1hr 11min
Section 10: SQL Tuning Techniques
0 / 59|4hr 54min
Section 11: Tuning with ADVANCED
Indexing Techniques
0 / 29|2hr 54min
Section 12: Advanced SQL Tuning
Techniques
0 / 14|1hr 24min
Section 13: Appendix: Software
Installations
0 / 12|1hr 42min
Section 14: Reward!
0 / 1|1min
