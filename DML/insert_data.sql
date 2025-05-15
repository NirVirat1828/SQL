-- insert_data.sql
-- Author: Nirvik
-- Description: Sample INSERT statements for populating customers, products, and orders tables.

-- Insert data into customers table
INSERT INTO customers (customer_id, name, phone_number, location)
VALUES 
(1, 'Alice Sharma', '9876543210', 'Mumbai'),
(2, 'Bob Das', '8765432109', 'Delhi'),
(3, 'Charlie Verma', '7654321098', 'Bangalore');

-- Insert data into products table
INSERT INTO products (product_id, product_name, price)
VALUES
(101, 'Laptop', 55000.00),
(102, 'Smartphone', 20000.00),
(103, 'Headphones', 1500.00),
(104, 'Monitor', 10000.00);

-- Insert data into customer_orders table
INSERT INTO customer_orders (order_id, customer_id, order_date, total_amount)
VALUES
(1001, 1, '2024-12-01', 75000.00),
(1002, 2, '2024-12-03', 21500.00),
(1003, 3, '2024-12-04', 11500.00);

-- Insert data into order_details table
INSERT INTO order_details (order_detail_id, order_id, product_id, quantity)
VALUES
(1, 1001, 101, 1),
(2, 1001, 104, 1),
(3, 1002, 102, 1),
(4, 1002, 103, 1),
(5, 1003, 104, 1),
(6, 1003, 103, 1);
