-- window_functions.sql
-- Author: Nirvik
-- Description: Demonstrates SQL window functions like ROW_NUMBER(), RANK(), DENSE_RANK(), and aggregate functions over windows.

-- 1. Assign row numbers to orders ordered by total_amount (descending)
SELECT 
    order_id,
    customer_id,
    total_amount,
    ROW_NUMBER() OVER (ORDER BY total_amount DESC) AS row_num
FROM 
    customer_orders;

-- 2. Rank orders by total_amount, ties get the same rank, skipping ranks after ties
SELECT 
    order_id,
    customer_id,
    total_amount,
    RANK() OVER (ORDER BY total_amount DESC) AS rank
FROM 
    customer_orders;

-- 3. Dense rank (like RANK but without gaps in ranking)
SELECT 
    order_id,
    customer_id,
    total_amount,
    DENSE_RANK() OVER (ORDER BY total_amount DESC) AS dense_rank
FROM 
    customer_orders;

-- 4. Calculate running total of orders amount by customer ordered by order_date
SELECT 
    order_id,
    customer_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS running_total
FROM 
    customer_orders;

-- 5. Calculate average order amount per customer (windowed, not grouped)
SELECT 
    order_id,
    customer_id,
    total_amount,
    AVG(total_amount) OVER (PARTITION BY customer_id) AS avg_order_amount
FROM 
    customer_orders;
