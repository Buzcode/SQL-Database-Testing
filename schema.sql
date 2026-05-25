-- 1. Create Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    created_at DATE,
    status VARCHAR(20)
);

-- 2. Create Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- 3. Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    order_status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
