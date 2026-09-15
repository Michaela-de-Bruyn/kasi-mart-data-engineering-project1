USE WAREHOUSE SNOWFLAKE_LEARNING_WH;
USE DATABASE DE_PROJECT1;
USE SCHEMA KASI_MART;

SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    p.category,
    o.quantity,
    p.unit_price,
    o.quantity * p.unit_price AS line_revenue
FROM ORDERS o
JOIN CUSTOMERS c
    ON o.customer_id = c.customer_id
JOIN PRODUCTS p
    ON o.product_id = p.product_id
ORDER BY o.order_id;
