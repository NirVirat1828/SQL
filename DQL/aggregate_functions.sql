-- aggregate_functions.sql
-- Author: Nirvik
-- Description: Examples of SQL aggregate functions like COUNT, SUM, AVG, MIN, and MAX.

-- 1. Count total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Count how many orders were placed
SELECT COUNT(order_id) AS total_orders
FROM customer_orders;

-- 3. Find the average price of products
SELECT AVG(price) AS average_price
FROM products;

-- 4. Get the total revenue from all orders
SELECT SUM(total_amount) AS total_revenue
FROM customer_orders;

-- 5. Find the most expensive product
SELECT MAX(price) AS highest_price
FROM products;

-- 6. Find the cheapest product
SELECT MIN(price) AS lowest_price
FROM products;

-- 7. Count how many products cost more than ₹10,000
SELECT COUNT(*) AS premium_products
FROM products
WHERE price > 10000;

-- 8. Find total quantity sold for each product
SELECT 
    p.product_name,
    SUM(od.quantity) AS total_quantity_sold
FROM 
    order_details od
JOIN 
    products p ON od.product_id = p.product_id
GROUP BY 
    p.product_name;
