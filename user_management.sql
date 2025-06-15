-- User Roles & Access
-- Admin user with full access
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'AdminPass123!';
GRANT ALL PRIVILEGES ON ecommerce.* TO 'admin_user'@'localhost';

-- Sales analyst: Read-only on orders & payments
CREATE USER 'sales_analyst'@'localhost' IDENTIFIED BY 'SalesPass123!';
GRANT SELECT ON ecommerce.orders TO 'sales_analyst'@'localhost';
GRANT SELECT ON ecommerce.payments TO 'sales_analyst'@'localhost';

-- Inventory manager: access to products
CREATE USER 'inventory_manager'@'localhost' IDENTIFIED BY 'InventoryPass123!';
GRANT SELECT, UPDATE ON ecommerce.products TO 'inventory_manager'@'localhost';

-- Apply privileges
FLUSH PRIVILEGES;
