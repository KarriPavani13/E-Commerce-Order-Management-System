-- 1. Display all customers
SELECT * FROM Customer;

-- 2. Display all products
SELECT * FROM Product;

-- 3. Display all orders
SELECT * FROM Orders;

-- 4. Display customer orders
SELECT
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    o.order_status,
    o.total_amount
FROM Customer c
JOIN Orders o
ON c.customer_id = o.customer_id;

-- 5. Display order details with product names
SELECT
    o.order_id,
    c.name AS customer_name,
    p.product_name,
    oi.quantity,
    oi.price
FROM Orders o
JOIN Customer c
ON o.customer_id = c.customer_id
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Product p
ON oi.product_id = p.product_id;

-- 6. Find products costing more than ₹2000
SELECT *
FROM Product
WHERE price > 2000;
-- 7. Find delivered orders
SELECT *
FROM Orders
WHERE order_status = 'Delivered';

-- 8. Count total customers
SELECT COUNT(*) AS total_customers
FROM Customer;

-- 9. Count orders by status
SELECT order_status, COUNT(*) AS total_orders
FROM Orders
GROUP BY order_status;

-- 10. Calculate total sales
SELECT SUM(total_amount) AS total_sales
FROM Orders
WHERE order_status <> 'Cancelled';

-- 11. Find the most expensive product
SELECT *
FROM Product
WHERE price = (SELECT MAX(price) FROM Product);

-- 12. Find customers who placed orders
SELECT DISTINCT c.name
FROM Customer c
JOIN Orders o
ON c.customer_id = o.customer_id;

-- 13. Display payment information
SELECT
    o.order_id,
    c.name AS customer_name,
    p.payment_method,
    p.payment_status
FROM Payment p
JOIN Orders o
ON p.order_id = o.order_id
JOIN Customer c
ON o.customer_id = c.customer_id;
-- 14. Find products with low stock
SELECT *
FROM Product
WHERE stock_quantity < 20;

-- 15. Calculate total quantity of products sold
SELECT SUM(quantity) AS total_products_sold
FROM Order_Items;
