-- inner_join.sql
-- Author: Nirvik
-- Description: Demonstrates INNER JOIN to combine rows from two or more tables based on matching columns.

-- 1. List orders with customer names
SELECT 
    o.order_id,
    c.name AS customer_name,
    o.order_date,
    o.total_amount
FROM 
    customer_orders o
INNER JOIN 
    customers c ON o.customer_id = c.customer_id;

-- 2. List order details with product information
SELECT 
    od.order_detail_id,
    od.order_id,
    p.product_name,
    od.quantity,
    p.price
FROM 
    order_details od
INNER JOIN 
    products p ON od.product_id = p.product_id;

-- 3. Get full order info with customer and product details
SELECT 
    o.order_id,
    c.name AS customer_name,
    p.product_name,
    od.quantity,
    (od.quantity * p.price) AS total_price
FROM 
    customer_orders o
INNER JOIN 
    customers c ON o.customer_id = c.customer_id
INNER JOIN 
    order_details od ON o.order_id = od.order_id
INNER JOIN 
    products p ON od.product_id = p.product_id;
