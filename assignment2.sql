CREATE DATABASE business;
USE business;

CREATE TABLE productTable (
    id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);

INSERT INTO productTable (id, product_name, price)
VALUES 
    (1, 'Laptop', 1000),
    (2, 'Smartphone', 800),
    (3, 'Tablet', 500);
 SELECT * FROM productTable;

CREATE TABLE customerTable (
    id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(50)
);
INSERT INTO customerTable (id, customer_name, email)
VALUES 
    (1, 'dan  ', 'dan@example.com'),
    (2, 'milli ', 'milli@example.com'),
    (3, 'rob', 'rob@example.com');
    
     SELECT * FROM customerTable;
    
CREATE TABLE orderTable (
    id INT PRIMARY KEY,
    order_name VARCHAR(50),
    order_date DATE,
    customer_id INT,
    product_id INT,
    FOREIGN KEY (customer_id) REFERENCES customerTable(id),
    FOREIGN KEY (product_id) REFERENCES productTable(id)
);
INSERT INTO orderTable (id, order_name, order_date, customer_id, product_id)
VALUES
    (101, 'Order 1', '2024-05-20', 1, 1),  
    (102, 'Order 2', '2024-05-21', 2, 2),  
    (103, 'Order 3', '2024-05-22', 3, 3);  
  SELECT * FROM orderTable;
