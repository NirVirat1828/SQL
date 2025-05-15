-- full_outer_join.sql
-- Author: Nirvik
-- Description: Demonstrates FULL OUTER JOIN to include all rows from both tables with matching where possible.

-- Note: Not all databases support FULL OUTER JOIN directly (e.g., MySQL). 
-- In those cases, a UNION of LEFT JOIN and RIGHT JOIN is used as a workaround.

-- Example using FULL OUTER JOIN (if supported)
SELECT 
    c.customer_id,
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM 
    customers c
FULL OUTER JOIN 
    customer_orders o ON c.customer_id = o.customer_id;

-- Alternative for MySQL using LEFT JOIN UNION RIGHT JOIN
SELECT 
    c.customer_id,
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM 
    customers c
LEFT JOIN 
    customer_orders o ON c.customer_id = o.customer_id

UNION

SELECT 
    c.customer_id,
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM 
    customers c
RIGHT JOIN 
    customer_orders o ON c.customer_id = o.customer_id;
