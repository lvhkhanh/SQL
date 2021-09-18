/* CODE: Using TRUNCATE instead of DELETE command */
create table sales_temp1 as select * from sales;
create table sales_temp2 as select * from sales;
 
delete from sales_temp1;
 
truncate table sales_temp2;
 
drop table sales_temp1;
drop table sales_temp2;
