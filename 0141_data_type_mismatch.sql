/* CODE: Data Type Mismatch */
SELECT cust_id, cust_first_name, cust_last_name FROM customers WHERE cust_id = 3228;
 
SELECT cust_id, cust_first_name, cust_last_name FROM customers WHERE cust_id = '3228';
 
CREATE INDEX cust_postal_code_idx ON customers (cust_postal_code);
 
SELECT cust_id, cust_first_name, cust_last_name FROM customers WHERE cust_postal_code = 60332;
 
SELECT cust_id, cust_first_name, cust_last_name FROM customers WHERE cust_postal_code = '60332';
 
SELECT cust_id, cust_first_name, cust_last_name FROM customers WHERE to_number(cust_postal_code) = 60332;
 
DROP INDEX cust_postal_code_idx;
