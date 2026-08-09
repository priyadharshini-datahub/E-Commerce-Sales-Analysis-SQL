# E-Commerce Sales Analysis using MySQL

## 📌 Project Overview

This project analyzes e-commerce sales data using MySQL to understand customer behavior, product performance, order activity, and revenue generation.

The project was created as a SQL-focused data analytics project to apply practical SQL concepts to a real-world business scenario.

## 🎯 Project Objectives

- Analyze customer and order data
- Identify high-performing products
- Analyze customer purchasing behavior
- Calculate revenue from delivered orders
- Identify top customers based on spending
- Analyze product pricing across categories
- Analyze monthly revenue trends
- Generate meaningful business insights using SQL

## 🗄️ Database Structure

The database contains five main tables:

- `customers` – Customer details
- `categories` – Product category information
- `products` – Product details and prices
- `orders` – Order details and order status
- `order_items` – Products and quantities associated with each order

### Table Relationships

```text
customers
    │
    │ customer_id
    ▼
orders
    │
    │ order_id
    ▼
order_items
    │
    │ product_id
    ▼
products
    │
    │ category_id
    ▼
categories


## 📊 Project Visualizations

### Database Tables
![Database Tables](screenshots/database-tables.png)

### Monthly Revenue
![Monthly Revenue](screenshots/monthly-revenue.png)

### Top Customers
![Top Customers](screenshots/top-customers.png)

### Total Revenue
![Total Revenue](screenshots/total-revenue.png)

