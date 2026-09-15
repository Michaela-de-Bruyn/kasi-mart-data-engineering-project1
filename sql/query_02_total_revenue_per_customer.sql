USE WAREHOUSE SNOWFLAKE_LEARNING_WH;
USE DATABASE DE_PROJECT1;
USE SCHEMA KASI_MART;

SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.quantity * p.unit_price) AS total_revenue
FROM ORDERS o
JOIN CUSTOMERS c
    ON o.customer_id = c.customer_id
JOIN PRODUCTS p
    ON o.product_id = p.product_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_revenue DESC;
