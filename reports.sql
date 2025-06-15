-- Reporting Queries
-- Daily Sales Summary
SELECT DATE(order_date) AS date, SUM(total_amount) AS daily_sales
FROM orders
GROUP BY DATE(order_date)
ORDER BY date DESC;

-- Top 5 Selling Products
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY oi.product_id
ORDER BY total_sold DESC
LIMIT 5;

-- Inventory Below Threshold
SELECT name, stock
FROM products
WHERE stock < 20;

-- Payment Status Summary
SELECT status, COUNT(*) AS count
FROM payments
GROUP BY status;
