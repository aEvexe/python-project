CREATE DATABASE market_db;

USE market_db;

CREATE TABLE products
(
    product_id   INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100)   NOT NULL,
    category     VARCHAR(50)    NOT NULL,
    price        DECIMAL(10, 2) NOT NULL,
    stock        INT            NOT NULL,
    supplier     VARCHAR(100)   NOT NULL,
    added_date   DATE           NOT NULL
);

INSERT INTO products (product_name, category, price, stock, supplier, added_date)
VALUES ('Samsung Galaxy A54', 'Telefon', 4500000.00, 15, 'Samsung Uzbekistan', '2025-01-20'),
       ('HP Pavilion Laptop', 'Notebook', 8500000.00, 10, 'HP Distribution', '2025-01-15'),
       ('LG Televizor', 'TV', 3000000.00, 8, 'LG Electronics', '2025-01-18'),
       ('Beko Dazmol', 'Dazmol', 250000.00, 25, 'Beko Distribution', '2025-01-14'),
       ('Xiaomi Redmi Note 13', 'Telefon', 4000000.00, 20, 'Xiaomi Distribution', '2025-01-22'),
       ('Dyson V11', 'Chang yutgich', 7000000.00, 5, 'Dyson Distribution', '2025-01-17'),
       ('Samsung kir yuvish mashinasi', 'Maishiy texnika', 3500000.00, 5, 'Samsung Uzbekistan', '2025-01-21'),
       ('Sony 55\" Smart TV', 'TV', 5000000.00, 10, 'Sony Electronics', '2025-01-19'),
       ('Lenovo ThinkPad', 'Notebook', 7000000.00, 7, 'Lenovo Distribution', '2025-01-16'),
       ('Philips Dazmol', 'Dazmol', 180000.00, 10, 'Philips Electronics', '2025-01-13'),
       ('Xiaomi Mi 11', 'Telefon', 5500000.00, 30, 'Xiaomi Distribution', '2025-01-23'),
       ('Miele Chang yutgich', 'Chang yutgich', 10000000.00, 3, 'Miele Distribution', '2025-01-12'),
       ('Samsung QLED TV', 'TV', 4500000.00, 10, 'Samsung Uzbekistan', '2025-01-25'),
       ('LG OLED TV', 'TV', 5500000.00, 10, 'LG Electronics', '2025-01-23'),
       ('Sony PlayStation 5', 'Oyin konsoli', 15000000.00, 7, 'Sony Electronics', '2025-01-18'),
       ('Huawei MateBook', 'Notebook', 7500000.00, 10, 'Huawei Distribution', '2025-01-20');

SELECT product_name, category, price, stock, supplier, added_date
FROM products
ORDER BY category;

SELECT product_name, category, price, stock, supplier, added_date, (price * stock) as total_value
FROM products;

SELECT product_name, category, price, stock, supplier, added_date
FROM products
WHERE added_date > '2025-01-15'
ORDER BY added_date DESC;

SELECT category,
       AVG(price) AS average_price,
       SUM(stock) AS total_stock
FROM products
GROUP BY category;
