-- sample_schema.sql
-- Author: Nirvik
-- Description: Sample schema to create tables for customers, products, orders, and order details.

-- 1. Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    location VARCHAR(50)
);

-- 2. Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50)
);

-- 3. Customer Orders table
CREATE TABLE customer_orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 4. Order Details table
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT CHECK (quantity > 0),
    FOREIGN KEY (order_id) REFERENCES customer_orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
