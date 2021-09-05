exec dbms_stats.gather_system_stats('Start');
select * from sys.aux_stats$;
exec dbms_stats.gather_table_stats(ownname => 'SH', tabname => 'SALES', cascade=>true);
select * from dba_tab_statistics where table_name = 'SALES'; 
 
select * from sales;
select * from dba_tab_columns where table_name = 'SALES';
exec dbms_stats.gather_system_stats('NOWORKLOAD');
select * from sys.aux_stats$;
select * from v$sql_plan;
 
exec dbms_stats.gather_database_stats;
exec dbms_stats.gather_dictionary_stats;
exec dbms_stats.gather_schema_stats(ownname => 'SH');
exec dbms_stats.gather_table_stats(ownname => 'SH', tabname => 'SALES', cascade=>true);
select * from user_part_col_statistics;
select * from dba_tab_statistics where table_name = 'SALES';
 
select * from	DBA_TABLES; 
select * from	DBA_TAB_STATISTICS;
select * from   DBA_TAB_COL_STATISTICS; 
select * from	DBA_INDEXES; 
select * from	DBA_CLUSTERS; 
select * from	DBA_TAB_PARTITIONS; 
select * from	DBA_IND_PARTITIONS; 
select * from	DBA_PART_COL_STATISTICS; 
