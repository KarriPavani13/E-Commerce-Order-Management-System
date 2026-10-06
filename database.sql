-- =====================================================
-- REMOVE OLD TABLES
-- =====================================================

DROP TABLE IF EXISTS Orders CASCADE;
DROP TABLE IF EXISTS Product CASCADE;
DROP TABLE IF EXISTS Customer CASCADE;
DROP TABLE IF EXISTS employees CASCADE;


-- =====================================================
-- EMPLOYEES TABLE
-- =====================================================

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    position TEXT NOT NULL,
    salary REAL,
    start_date DATE
);

INSERT INTO employees
(id, name, position, salary, start_date)
VALUES
(1, 'Alice Smith', 'Engineer', 85000, '2021-06-01'),
(2, 'Bob Johnson', 'Manager', 95000, '2020-05-15'),
(3, 'Charlie Brown', 'Analyst', 78000, '2022-03-01');


-- =====================================================
-- CUSTOMER TABLE
-- =====================================================

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    registration_date DATE NOT NULL
);

INSERT INTO Customer
(customer_id, first_name, last_name, email, registration_date)
VALUES
(1, 'Anita', 'Patel', 'anita@mail.com', '2023-01-15'),
(2, 'Ramesh', 'Nair', 'ramesh@mail.com', '2023-03-22'),
(3, 'Divya', 'Singh', 'divya@mail.com', '2024-06-10');


-- =====================================================
-- PRODUCT TABLE
-- =====================================================

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    category_id INT NOT NULL
);

INSERT INTO Product
(product_id, product_name, price, stock_quantity, category_id)
VALUES
(1, 'Samsung Galaxy S24', 65000.00, 50, 1),
(2, 'Laptop HP Pavilion', 55000.00, 30, 1),
(3, 'Cotton T-Shirt', 499.00, 200, 2);


-- =====================================================
-- ORDERS TABLE
-- =====================================================

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    address_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(30) NOT NULL
);

INSERT INTO Orders
(order_id, customer_id, address_id, order_date, order_status)
VALUES
(1, 1, 1, '2024-08-01', 'Delivered'),
(2, 2, 2, '2024-08-05', 'Shipped'),
(3, 1, 1, '2024-08-10', 'Pending');


-- =====================================================
-- SQL QUERIES
-- =====================================================

-- Query 1: Display all employees
SELECT * FROM employees;


-- Query 2: Display all customers
SELECT * FROM Customer;


-- Query 3: Display all products
SELECT * FROM Product;


-- Query 4: Display all orders
SELECT * FROM Orders;


-- Query 5: Products costing more than 50000
SELECT product_name, price
FROM Product
WHERE price > 50000;


-- Query 6: Products with stock greater than 50
SELECT product_name, stock_quantity
FROM Product
WHERE stock_quantity > 50;


-- Query 7: Orders with Delivered status
SELECT *
FROM Orders
WHERE order_status = 'Delivered';


-- Query 8: Products in descending price order
SELECT product_name, price
FROM Product
ORDER BY price DESC;


-- Query 9: Count total customers
SELECT COUNT(*) AS total_customers
FROM Customer;


-- Query 10: Find the most expensive product
SELECT product_name, price
FROM Product
ORDER BY price DESC
LIMIT 1;


-- Query 11: Find pending orders
SELECT *
FROM Orders
WHERE order_status = 'Pending';
