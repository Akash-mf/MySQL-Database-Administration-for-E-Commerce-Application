-- Insert sample users
INSERT INTO users (name, email, password_hash, role)
VALUES 
('Admin User', 'admin@example.com', SHA2('admin123', 256), 'admin'),
('John Doe', 'john@example.com', SHA2('john123', 256), 'sales_analyst'),
('Jane Smith', 'jane@example.com', SHA2('jane123', 256), 'inventory_manager');

-- Insert sample products
INSERT INTO products (name, price, stock, category)
VALUES 
('iPhone 15', 999.99, 25, 'Electronics'),
('Gaming Laptop', 1299.99, 10, 'Computers'),
('T-shirt', 19.99, 100, 'Apparel');

-- Insert sample orders
INSERT INTO orders (user_id, order_date, total_amount)
VALUES 
(1, NOW(), 1019.98),
(2, NOW(), 1319.98);

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity)
VALUES 
(1, 1, 1),
(1, 3, 1),
(2, 2, 1);

-- Insert payments
INSERT INTO payments (order_id, payment_date, amount, status)
VALUES 
(1, NOW(), 1019.98, 'Success'),
(2, NOW(), 1319.98, 'Failed');
