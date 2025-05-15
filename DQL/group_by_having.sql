-- group_by_having.sql
-- Author: Nirvik
-- Description: Demonstrates grouping records and filtering groups using GROUP BY and HAVING.

-- 1. Group orders by customer and count how many orders each placed
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM 
    customer_orders
GROUP BY 
    customer_id;

-- 2. Find total sales amount per customer
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM 
    customer_orders
GROUP BY 
    customer_id;

-- 3. List products with total quantity sold, only showing those sold more than 1 unit
SELECT 
    product_id,
    SUM(quantity) AS total_quantity_sold
FROM 
    order_details
GROUP BY 
    product_id
HAVING 
    SUM(quantity) > 1;

-- 4. Show customers with more than one order
SELECT 
    customer_id,
    COUNT(order_id) AS order_count
FROM 
    customer_orders
GROUP BY 
    customer_id
HAVING 
    COUNT(order_id) > 1;

-- 5. Find average order amount by customers, showing only customers with average order above 20,000
SELECT 
    customer_id,
    AVG(total_amount) AS avg_order_amount
FROM 
    customer_orders
GROUP BY 
    customer_id
HAVING 
    AVG(total_amount) > 20000;
