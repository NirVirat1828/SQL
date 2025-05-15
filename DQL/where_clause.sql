-- where_clause.sql
-- Author: Nirvik
-- Description: Demonstrates filtering data using the WHERE clause with different conditions.

-- 1. Find all customers from a specific city
SELECT * FROM customers
WHERE location = 'Delhi';

-- 2. Get products with price less than 10000
SELECT * FROM products
WHERE price < 10000;

-- 3. Retrieve orders placed on a specific date
SELECT * FROM customer_orders
WHERE order_date = '2024-12-01';

-- 4. Find customers whose name starts with 'A'
SELECT * FROM customers
WHERE name LIKE 'A%';

-- 5. Find products with price between 2000 and 60000
SELECT * FROM products
WHERE price BETWEEN 2000 AND 60000;

-- 6. Get orders where total amount is NOT equal to 11500
SELECT * FROM customer_orders
WHERE total_amount <> 11500;

-- 7. Find customers from either Mumbai or Bangalore
SELECT * FROM customers
WHERE location IN ('Mumbai', 'Bangalore');

-- 8. Select customers who have provided phone number
SELECT * FROM customers
WHERE phone_number IS NOT NULL;
