-- 1. Top 5 Countries by Number of Customers
SELECT country_code, COUNT(*) AS customer_count
FROM customers
GROUP BY country_code
ORDER BY customer_count DESC
LIMIT 5;

-- 2. Top Selling Products by Revenue
SELECT product_name, SUM(usd_price) AS total_revenue
FROM orders
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

-- 3. Average Time from Purchase to Delivery

SELECT 
    AVG(DATEDIFF(delivery_ts, purchase_ts)) AS avg_delivery_days
FROM order_status
WHERE delivery_ts IS NOT NULL AND purchase_ts IS NOT NULL;

-- 4. Monthly Revenue Trend

SELECT 
    DATE_FORMAT(purchase_ts, '%Y-%m') AS month,
    SUM(usd_price) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 5. Customer Lifetime Value (LTV)

SELECT o.customer_id, ROUND(SUM(o.usd_price), 2) AS lifetime_value
FROM orders o
GROUP BY o.customer_id
ORDER BY lifetime_value DESC
LIMIT 10;

-- 6. Repeat Customers Count

SELECT COUNT(*) AS repeat_customers
FROM (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING COUNT(*) > 1
) AS repeaters;

-- 7. Customers by Region

SELECT g.region, COUNT(c.id) AS customer_count
FROM customers c
JOIN geo_lookup g ON c.country_code = g.country
GROUP BY g.region;

--  8. Revenue by Marketing Channel

SELECT c.marketing_channel, ROUND(SUM(o.usd_price), 2) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.id
GROUP BY c.marketing_channel
ORDER BY revenue DESC;

-- 9. First Purchase Date per Customer

SELECT customer_id, MIN(purchase_ts) AS first_purchase
FROM orders
GROUP BY customer_id;

--  10. Orders Delivered Within 7 Days

SELECT COUNT(*) AS delivered_within_7_days
FROM order_status
WHERE DATEDIFF(delivery_ts, purchase_ts) <= 7;

-- 11. Delayed Shipments Over 10 Days

SELECT COUNT(*) AS delayed_shipments
FROM order_status
WHERE DATEDIFF(ship_ts, purchase_ts) > 10;

--  12. Refund Rate

SELECT 
    ROUND(SUM(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS refund_rate_percentage
FROM order_status;

--  13. Loyalty Members Spending vs Non-Members

SELECT 
    c.loyalty_program,
    ROUND(SUM(o.usd_price), 2) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.loyalty_program;

-- 14. Most Popular Purchase Platform

SELECT purchase_platform, COUNT(*) AS orders
FROM orders
GROUP BY purchase_platform
ORDER BY orders DESC;

-- 15. Identify High-Value Customers (LTV > $500)

SELECT customer_id, SUM(usd_price) AS total_spent
FROM orders
GROUP BY customer_id
HAVING total_spent > 500
ORDER BY total_spent DESC;

-- 16. Monthly New Customers

SELECT 
    DATE_FORMAT(created_on, '%Y-%m') AS month,
    COUNT(*) AS new_customers
FROM customers
GROUP BY month
ORDER BY month;

-- 17. Orders per Product in Each Country

SELECT 
    c.country_code, 
    o.product_name, 
    COUNT(*) AS order_count
FROM orders o
JOIN customers c ON o.customer_id = c.id
GROUP BY c.country_code, o.product_name
ORDER BY order_count DESC;

-- 18. Find All Orders That Were Refunded After Delivery

SELECT *
FROM order_status
WHERE refund_ts IS NOT NULL AND delivery_ts IS NOT NULL AND refund_ts > delivery_ts;

-- 19. Product Revenue Share

SELECT 
    product_name,
    ROUND(SUM(usd_price), 2) AS total_revenue,
    ROUND(SUM(usd_price) / (SELECT SUM(usd_price) FROM orders) * 100, 2) AS revenue_percent
FROM orders
GROUP BY product_name
ORDER BY total_revenue DESC;

-- 20. Window Function: Rank Customers by Monthly Spend

SELECT *
FROM (
    SELECT 
        o.customer_id,
        DATE_FORMAT(o.purchase_ts, '%Y-%m') AS month,
        SUM(o.usd_price) AS monthly_spend,
        RANK() OVER (PARTITION BY DATE_FORMAT(o.purchase_ts, '%Y-%m') ORDER BY SUM(o.usd_price) DESC) AS rank_in_month
    FROM orders o
    GROUP BY o.customer_id, month
) ranked
WHERE rank_in_month <= 5;












