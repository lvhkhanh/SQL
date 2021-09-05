# SQL
## Best Practices
- [x] Based on statistics, Use index (1%) vs read whole table (25%)
```
EXEC dbms_stats.gather_system_stats('Start');
SELECT * FROM sys.aux_stats$;
ANALYZE TABLE <tbl> COMPUTE STATISTICS; 
EXEC dbms_stats.gather_database_stats;
```
- [x] reused TYPE -> declare var1 table2.column3%TYPE;
- [x] Convert OR(prevent index usages) to UNION ALL + AND for using INDEX
- [x] nested sub query to join query
- [x] `SELECT mum_distinct FROM dba_tab_columns WHERE table_name='tbl_name'`
- [x] less record table first, then more record table later
- [ ] condition JOIN, NOT IN, NOT EXISTS
- [ ] check tables with same alias
- [ ] inner join then left join
- [ ] where move to first inner join
- [ ] where in 
- [ ] WITH clause for creating function, temp table
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
