-- subquery_examples.sql
-- Author: Nirvik
-- Description: Examples of subqueries used in SELECT, WHERE, and FROM clauses.

-- 1. Subquery in WHERE: Find customers who placed orders with total amount > 20,000
SELECT name, location
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM customer_orders
    WHERE total_amount > 20000
);

-- 2. Subquery in SELECT: Show each order with the customer's name (correlated subquery)
SELECT 
    order_id,
    order_date,
    total_amount,
    (SELECT name FROM customers WHERE customers.customer_id = customer_orders.customer_id) AS customer_name
FROM 
    customer_orders;

-- 3. Subquery in FROM: Get average order amount per customer, then filter those above 15,000
SELECT customer_id, avg_order_amount
FROM (
    SELECT customer_id, AVG(total_amount) AS avg_order_amount
    FROM customer_orders
    GROUP BY customer_id
) AS avg_orders
WHERE avg_order_amount > 15000;

-- 4. Subquery with EXISTS: List customers who have placed at least one order
SELECT name
FROM customers c
WHERE EXISTS (
    SELECT 1 FROM customer_orders co WHERE co.customer_id = c.customer_id
);

-- 5. Subquery with NOT EXISTS: List customers who have never placed an order
SELECT name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1 FROM customer_orders co WHERE co.customer_id = c.customer_id
);
