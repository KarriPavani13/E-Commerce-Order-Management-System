-- Customers
INSERT INTO Customer (name, email, phone, address) VALUES
('Pavani', 'pavani@gmail.com', '9876543210', 'Andhra Pradesh'),
('Sita', 'sita@gmail.com', '9876543211', 'Hyderabad'),
('rishita', 'rishita@gmail.com', '9876543212', 'Vijayawada'),
('spandana', 'spandana@gmail.com', '9876543213', 'Chennai'),
('kiran', 'kiran@gmail.com', '9876543214', 'Bangalore');

-- Products
INSERT INTO Product (product_name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 55000.00, 10),
('Smartphone', 'Electronics', 25000.00, 20),
('Headphones', 'Electronics', 1500.00, 50),
('Backpack', 'Fashion', 1200.00, 30),
('Shoes', 'Fashion', 2500.00, 25);

-- Orders
INSERT INTO Orders
(customer_id, order_date, order_status, total_amount) VALUES
(1, '2026-09-01', 'Delivered', 56500.00),
(2, '2026-09-02', 'Pending', 25000.00),
(3, '2026-09-03', 'Shipped', 4000.00),
(4, '2026-09-04', 'Delivered', 2500.00),
(5, '2026-09-05', 'Cancelled', 1500.00);

-- Order Items
INSERT INTO Order_Items
(order_id, product_id, quantity, price) VALUES
(1, 1, 1, 55000.00),
(1, 3, 1, 1500.00),
(2, 2, 1, 25000.00),
(3, 3, 1, 1500.00),
(3, 4, 2, 2400.00),
(4, 5, 1, 2500.00),
(5, 3, 1, 1500.00);

-- Payments
INSERT INTO Payment
(order_id, payment_date, payment_method, payment_status) VALUES
(1, '2026-09-01', 'UPI', 'Paid'),
(2, '2026-09-02', 'Credit Card', 'Paid'),
(3, '2026-09-03', 'Cash on Delivery', 'Pending'),
(4, '2026-09-04', 'UPI', 'Paid'),
(5, '2026-09-05', 'UPI', 'Refunded');
