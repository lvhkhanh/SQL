# SQL
## Certificates
- [x] Introduction to SQL https://www.datacamp.com/statement-of-accomplishment/course/02d7e2545a8b1ab0922067ed9271f2dc90211a94?raw=1
https://www.codecademy.com/profiles/Khanh.Le/certificates/042a4e5884e3eb6ea1f2a12be6abb851 
- [x] Intermediate SQL https://www.datacamp.com/statement-of-accomplishment/course/4490b59dc6b22b8bf18d34ef0c115ffa62b68689?raw=1
- [x] Joining Data in SQL https://www.datacamp.com/statement-of-accomplishment/course/4fc917b3bcd186c1e65339398fe23adf639f016b?raw=1
- [x] Improving query performance in PostgreSQL https://www.datacamp.com/statement-of-accomplishment/course/a445e2e4ac33be172d3fbcdc698c624d3e241ac4?raw=1

Learn SQL Course
## Best Practices
- [x] LIKE ANY(ARRAY('%a', '%b'))
- [x] OR -> IN (1,3), number better than text
- [x] WITH clause for creating function, temp table (common table expression)
- [x] Partition column in WHERE 
- [x] SELECT * FROM pg_indexes
- [x] CREATE INDEX CONCURRENTLY index_a ON tbl_b(col_c); create index for cols in WHERE
- [x] https://www.sqlstyle.guide/
- [x] q'[Content single quote ' do not need to double.]'
- [x] LEFT JOIN  (1:1 vs 1:n)
- [x] MERGE INTO vs INSERT/UPDATE (condition duplicate table join)
- [x] check index usaged, check no_result_cache, opt adaptive plans when use sql explain
- [x] Based on statistics, Use index (1%) vs read whole table (25%)
```
EXEC dbms_stats.gather_system_stats('Start');
SELECT * FROM sys.aux_stats$;
ANALYZE TABLE <tbl> COMPUTE STATISTICS; 
EXEC dbms_stats.gather_database_stats;
EXEC dbms_stats.gather_dictionary_stats;
EXEC dbms_stats.gather_schema_stats(ownname=>'SH');
EXEC dbms_stats.gather_table_stats(ownname=>'SH', tabname=>'tbl', cascade=>true);
SELECT * FROM dba_table_statistics WHERE table_name ='tbl';
```
- [x] Explain plan
``` 
EXPLAIN PLAN FOR <sql>;
SELECT * FROM plan_table;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY());
EXPLAIN PLAN SET statement_id='myID' INTO my_tbl FOR <sql>;
```
- [x] Cost (%CPU)
- [x] IN (1,2,3,4) => BETWEEN 1 AND 4
- [x] reused TYPE -> declare var1 table2.column3%TYPE;
- [x] Convert OR(prevent index usages) to UNION ALL + AND for using INDEX
- [x] nested sub query to join query
- [x] `SELECT mum_distinct FROM dba_tab_columns WHERE table_name='tbl_name'`
- [x] less record table first, then more record table later
- [x] CREATE INDEX for GROUP BY columns
- [x] USE Minimum call to SYSDATE, NOT CURRENT_DATE
- [ ] condition JOIN, NOT IN, NOT EXISTS
- [ ] check tables with same alias
- [ ] inner join then left join
- [ ] where move to first inner join
- [ ] where in 
- [ ] ROWNUM starts from 1; put it in the most outer clause
- [ ] materialzed view, auto refresh on commit; create index on view
- [ ] table partitioning
## Paths
### https://www.codecademy.com/paths/analyze-data-with-sql/tracks/analyze-data-sql-get-started-with-sql/modules/what-is-sql/lessons/why-sql-ii/exercises/sql-queries
## Courses
- [ ] https://www.khanacademy.org/computing/computer-programming/sql
- [ ] https://www.tutorialspoint.com/sql/index.htm
- [ ] https://www.codecademy.com/learn/learn-sql
- [ ] https://www.guru99.com/sql.html
- [ ] https://www.codecademy.com/catalog/language/python
- [ ] https://www.w3schools.com/sql/default.asp
- [ ] [Oracle SQL Performance Tuning Masterclass 2021](https://fpt-software.udemy.com/course/sql-performance-tuning-masterclass/learn/lecture/12287140#:~:text=Oracle%20SQL%20Performance%20Tuning%20Masterclass%202021)
### https://www.codecademy.com/learn/learn-sql
### https://learn.datacamp.com/career-tracks/data-analyst-with-sql-server?version=1
https://www.codecademy.com/learn/sql-table-transformation

https://www.codecademy.com/learn/sql-analyzing-business-metrics

[SQL Server Metadata Succinctly](http://ebooks.syncfusion.com/downloads/sql-server-metadata-succinctly/sql-server-metadata-succinctly.pdf?AWSAccessKeyId=AKIAWH6GYCX36VNGPCWG&Expires=1575433544&Signature=l2BuZo54A%2BWxgT%2BQp1nXZvIW%2FXQ%3D)
## Ebooks
### https://www.syncfusion.com/ebooks/sql-server-metadata-succinctly
### https://www.syncfusion.com/ebooks/sql_server_for_c_sharp_developers_succinctly
### https://www.syncfusion.com/ebooks/sqlserver
- [ ] https://subscription.packtpub.com/book/data/9781838642358/1/ch01lvl1sec04/an-overview-of-basic-sql-commands
## Performance
