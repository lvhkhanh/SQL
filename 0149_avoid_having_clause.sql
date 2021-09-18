/* CODE: Avoid Using the HAVING Clause! */
select time_id,sum(amount_sold) from sales
group by time_id
having time_id between '01-JAN-01' and '28-FEB-01';
 
select time_id,sum(amount_sold) from sales
where time_id between '01-JAN-01' and '28-FEB-01'
group by time_id;
 
select prod_id,sum(amount_sold) from sales
group by prod_id
having prod_id = 136;
 
select prod_id,sum(amount_sold) from sales
where prod_id = 136
group by prod_id;
