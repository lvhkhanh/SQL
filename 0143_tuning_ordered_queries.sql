/* CODE: Tuning Ordered Queries */
select prod_id,cust_id,time_id from sales order by amount_sold;
select prod_id,cust_id,time_id from sales order by cust_id;
select prod_id,cust_id,time_id from sales where cust_id < 100 order by cust_id;
select cust_id from sales order by cust_id;
select cust_id from customers order by cust_id;
select cust_id,cust_first_name, cust_last_name from customers where cust_id < 100 order by cust_id;
select cust_id, cust_first_name, cust_last_name from customers order by cust_first_name;
