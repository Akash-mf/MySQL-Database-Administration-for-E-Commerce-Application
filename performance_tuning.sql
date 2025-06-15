-- Indexing & Tuning
-- Add indexes for performance
CREATE INDEX idx_order_user ON orders(user_id);
CREATE INDEX idx_payment_order ON payments(order_id);
CREATE INDEX idx_product_category ON products(category);

-- Enable slow query log
SET GLOBAL slow_query_log = 'ON';
SET GLOBAL long_query_time = 1;

-- Check slow queries
SHOW VARIABLES LIKE 'slow_query_log_file';
