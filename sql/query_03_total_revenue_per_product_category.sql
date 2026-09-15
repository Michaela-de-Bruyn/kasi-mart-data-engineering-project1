USE WAREHOUSE SNOWFLAKE_LEARNING_WH;
USE DATABASE DE_PROJECT1;
USE SCHEMA KASI_MART;

SELECT
    p.category,
    SUM(o.quantity * p.unit_price) AS total_revenue
FROM ORDERS o
JOIN PRODUCTS p
    ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;
