-- left_right_join.sql
-- Author: Nirvik
-- Description: Demonstrates LEFT JOIN and RIGHT JOIN to retrieve matching and non-matching rows.

-- 1. LEFT JOIN: List all customers and their orders (including customers with no orders)
SELECT 
    c.customer_id,
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM 
    customers c
LEFT JOIN 
    customer_orders o ON c.customer_id = o.customer_id;

-- 2. RIGHT JOIN: List all orders and their customers (including orders without a matching customer - rare case)
SELECT 
    o.order_id,
    o.order_date,
    o.total_amount,
    c.customer_id,
    c.name AS customer_name
FROM 
    customer_orders o
RIGHT JOIN 
    customers c ON o.customer_id = c.customer_id;

-- 3. LEFT JOIN: List all products and the order details (including products never ordered)
SELECT 
    p.product_id,
    p.product_name,
    od.order_detail_id,
    od.quantity
FROM 
    products p
LEFT JOIN 
    order_details od ON p.product_id = od.product_id;

-- 4. RIGHT JOIN: List all order details and corresponding products (including order details without product info - unlikely but shown for syntax)
SELECT 
    od.order_detail_id,
    od.order_id,
    p.product_id,
    p.product_name
FROM 
    order_details od
RIGHT JOIN 
    products p ON od.product_id = p.product_id;
