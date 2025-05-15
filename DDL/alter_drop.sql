-- alter_drop.sql
-- Author: Nirvik
-- Description: Demonstrates use of ALTER, DROP, and RENAME TABLE commands.

-- Add a new column to an existing table
ALTER TABLE customers
ADD phone_number VARCHAR(15);

-- Modify the data type of a column
ALTER TABLE products
MODIFY price DECIMAL(12, 2);

-- Rename a column (only supported in some SQL engines like MySQL 8+)
ALTER TABLE customers
RENAME COLUMN city TO location;

-- Rename an entire table
RENAME TABLE orders TO customer_orders;

-- Drop a column from a table
ALTER TABLE customers
DROP COLUMN email;

-- Drop an entire table
DROP TABLE IF EXISTS order_details;

-- Recreate dropped table (optional recovery or continuation)
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES customer_orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
