-- update_delete.sql
-- Author: Nirvik
-- Description: Demonstrates how to update and delete records from SQL tables.

-- ✅ UPDATE Examples

-- Update a customer's phone number
UPDATE customers
SET phone_number = '9999999999'
WHERE customer_id = 1;

-- Increase price of all products by 10%
UPDATE products
SET price = price * 1.10;

-- Update total_amount in customer_orders after price change
UPDATE customer_orders
SET total_amount = 82500.00
WHERE order_id = 1001;


-- ✅ DELETE Examples

-- Delete a specific product by ID
DELETE FROM products
WHERE product_id = 103;

-- Delete an order and its details
-- First, delete from child table (order_details)
DELETE FROM order_details
WHERE order_id = 1002;

-- Then, delete from parent table (customer_orders_
