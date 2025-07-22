# SQL Project: Data Analysis for Dishcover – A Food Delivery Company

## 📌 Overview

This project showcases my ability to work with relational databases using SQL. I’ve built and analyzed a fictional food delivery platform called **Dishcover**, where I used PostgreSQL to create schemas, clean data, and solve business problems through real-world SQL queries.

## 🗂️ Project Highlights

- ✅ Created and managed a PostgreSQL database (`dishcover_db`)
- ✅ Designed normalized tables for customers, restaurants, orders, deliveries, and riders
- ✅ Imported structured CSV data into each table
- ✅ Cleaned and handled null/missing data
- ✅ Solved **20 real-world business problems** using SQL (e.g., customer churn, top dishes, city rankings)
- ✅ Planned to extend the project with Power BI/Tableau for visual insights

---

## 🛠️ Tools Used

- **PostgreSQL**
- **pgAdmin 4**
- **SQL**
- *(Optional: Excel / Python for basic visualization)*

---

## 🧱 Database Structure

The database includes the following tables:

- `restaurants`: Info about restaurants
- `customers`: User details and registration dates
- `orders`: Orders placed by customers
- `deliveries`: Delivery details of each order
- `riders`: Rider details and signup info

> You can view the ER Diagram [here](#) *(Add a diagram link or image if available)*

---

## 🚀 How to Use This Project

1. Clone the repo or download the files.
2. Open **pgAdmin 4**.
3. Run `Dishcover_Schema.sql` to set up all tables.
4. Import CSV data into each table in this order:
   - customers → restaurants → orders → riders → deliveries
5. Run queries from `Business_Queries.sql` to explore insights.

---

## 💡 Sample Business Problems Solved

Here are a few of the 20 business insights I solved using SQL:

- 🔍 **Top 5 dishes ordered by a specific customer in the last year**
- ⏰ **Most popular time slots for food orders**
- 💰 **High-value customers and top cities by revenue**
- ❌ **Orders placed but not delivered**
- ⭐ **Rider ratings based on delivery time**
- 📈 **Monthly growth and seasonal demand patterns**

> Want to see all 20 problems and solutions? [Click here](#) *(Add link to queries file or GitHub section)*

---

## 📊 What's Next?

I'm planning to turn this SQL project into a **dashboard using Power BI or Tableau**, where key insights like customer trends, restaurant rankings, and delivery metrics can be visualized for better storytelling.

---

## 👩‍💻 About Me

I’m a final-year B.Tech CSE student exploring data analytics, full-stack development, and cybersecurity. This project helped me practice:
- Real-life database modeling
- Data cleaning
- Writing complex SQL queries
- Interpreting business problems with data

---
README.md
# SQL Project: Data Analysis for Zomato - A Food Delivery Company

## Overview

This project demonstrates my SQL problem-solving skills through the analysis of data for Zomato, a popular food delivery company in India. The project involves setting up the database, importing data, handling null values, and solving a variety of business problems using complex SQL queries.

## Project Structure

- **Database Setup:** Creation of the `zomato_db` database and the required tables.
- **Data Import:** Inserting sample data into the tables.
- **Data Cleaning:** Handling null values and ensuring data integrity.
- **Business Problems:** Solving 20 specific business problems using SQL queries.

![ERD](https://github.com/najirh/zomato_sqlp3/blob/main/erd.png)

## Database Setup
```sql
CREATE DATABASE zomato_db;
```

### 1. Dropping Existing Tables
```sql
DROP TABLE IF EXISTS deliveries;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS riders;

-- 2. Creating Tables
CREATE TABLE restaurants (
    restaurant_id SERIAL PRIMARY KEY,
    restaurant_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    opening_hours VARCHAR(50)
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    reg_date DATE
);

CREATE TABLE riders (
    rider_id SERIAL PRIMARY KEY,
    rider_name VARCHAR(100) NOT NULL,
    sign_up DATE
);

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

CREATE TABLE deliveries (
    delivery_id SERIAL PRIMARY KEY,
    order_id INT,
    delivery_status VARCHAR(20) DEFAULT 'Pending',
    delivery_time TIME,
    rider_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (rider_id) REFERENCES riders(rider_id)
);
```

## Data Import

## Data Cleaning and Handling Null Values

Before performing analysis, I ensured that the data was clean and free from null values where necessary. For instance:

```sql
UPDATE orders
SET total_amount = COALESCE(total_amount, 0);
```



## ✅ Conclusion
This project helped me put my SQL knowledge into practice by building a database from scratch and solving real-world business problems in the context of a food delivery company. I learned how to set up and manage tables, clean and import data, and write queries to answer business questions like identifying top customers, most popular dishes, or tracking delivery performance.

It also showed how data can be used to make smarter decisions — like improving delivery times, understanding customer behavior, and boosting restaurant sales. Overall, this project improved both my technical SQL skills and my ability to think analytically like a data professional.


## ⚠️ Disclaimer
This project is purely academic and was created for learning and portfolio purposes. All data used is **fictional** and **randomly generated** — it does not reflect any real individuals, companies, or events. The name **"Dishcover"** is made up and is **not associated with Zomato, Swiggy, or any real food delivery platform**. Any similarities are completely coincidental.

---

