--- SQL Project – Dishcover
-- Dishcover: A Fictional Food Delivery Company

CREATE DATABASE dishcover_db;

-- Connect to dishcover_db;

-- Import this script and click the run/play button — it will create all the necessary tables!


-- Drop existing tables if they exist
DROP TABLE IF EXISTS deliveries;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS riders;

-- Create restaurants table
CREATE TABLE restaurants (
    restaurant_id SERIAL PRIMARY KEY,
    restaurant_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    opening_hours VARCHAR(50)
);

-- Create customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    reg_date DATE
);

-- Create riders table
CREATE TABLE riders (
    rider_id SERIAL PRIMARY KEY,
    rider_name VARCHAR(100) NOT NULL,
    sign_up DATE
);

-- Create Orders table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_item VARCHAR(255),
    order_date DATE NOT NULL,
    order_time TIME NOT NULL,
    order_status VARCHAR(20) DEFAULT 'Pending',
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

-- Create deliveries table
CREATE TABLE deliveries (
    delivery_id SERIAL PRIMARY KEY,
    order_id INT,
    delivery_status VARCHAR(20) DEFAULT 'Pending',
    delivery_time TIME,
    rider_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (rider_id) REFERENCES riders(rider_id)
);

-- Schemas END




SELECT * FROM riders;
SELECT * FROM restaurants;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM deliveries;


-- Import data hierarcy

-- First import to customers;
-- 2nd Import to restaurants;
-- 3rd Import to orders;
-- 4th Import to riders;
-- 5th Import to deliveries;




