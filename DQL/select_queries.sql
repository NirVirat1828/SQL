-- select_queries.sql
-- Author: Nirvik
-- Description: Various SELECT queries to retrieve and analyze data.

-- 1. Select all records from the customers table
SELECT * FROM customers;

-- 2. Select specific columns
SELECT name, location FROM customers;

-- 3. Select orders placed after a specific date
SELECT * FROM customer_orders
WHERE order_date > '2024-12-01';

-- 4. Join customers and orders to view who placed what
SELECT 
    c.name AS customer_name,
    co.order_id,
    co.order_date,
    co.total_amount
FROM 
    customers c
JOIN 
    customer_orders co ON c.customer_id = co.customer_id;

-- 5. Join orders with order details and products
SELECT 
    co.order_id,
    p.product_name,
    od.quantity,
    p.price,
    (od.quantity * p.price) AS item_total
FROM 
    customer_orders co
JOIN 
    order_details od ON co.order_id = od.order_id
JOIN 
    products p ON od.product_id = p.product_id;

-- 6. Find total quantity of each product sold
SELECT 
    p.product_name,
    SUM(od.quantity) AS total_sold
FROM 
    order_details od
JOIN 
    products p ON od.product_id = p.product_id
GROUP BY 
    p.product_name;

-- 7. List customers who placed more than one order
SELECT 
    c.name,
    COUNT(co.order_id) AS total_orders
FROM 
    customers c
JOIN 
    customer_orders co ON c.customer_id = co.customer_id
GROUP BY 
    c.name
HAVING 
    COUNT(co.order_id) > 1;

-- 8. Use of aliases and ordering
SELECT 
    name AS customer_name,
    location AS city
FROM 
    customers
ORDER BY 
    name ASC;
