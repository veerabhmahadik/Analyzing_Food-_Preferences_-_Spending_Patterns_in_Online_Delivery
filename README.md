# Analyzing Food Preferences & Spending Patterns in Online Delivery

## 📌 Purpose & Goals
This project aims to analyze customer food preferences and spending habits using a structured PostgreSQL database. The analysis helps identify key trends such as the most popular dishes, peak ordering times, high-value customers, and restaurant revenue patterns.

## 🛠️ Technologies Used
- **Database**: PostgreSQL
- **Query Language**: SQL
- **Tools**: pgAdmin, psql, DBeaver

## ⚙️ Installation & Setup
To set up the project locally, follow these steps:

1. **Install PostgreSQL** if not already installed.
2. **Create a database** in PostgreSQL:
   ```sql
   CREATE DATABASE zomato_db;
   \c zomato_db
3. **Setup the database schema** using `Schema_zomato_db_.sql`

## 🚀 Usage Instructions

- Load the database schema using the provided SQL file.
- Run the queries from `Zomato_SQL_Queries.sql` to generate insights.
- Use the following key SQL queries:
  - **Identify most frequently ordered dishes** by customer.
  - **Find peak ordering times** based on time slot analysis.
  - **Determine high-value customers** by analyzing total spend.
  - **Analyze restaurant revenue rankings** within cities.
  - **Evaluate customer churn** by tracking order activity.
  - **Assess rider efficiency** based on average delivery times.
  - **Compare cancellation rates** between different restaurants.
    

## 📊 Insights & Findings
- **Most Popular Dishes**: The top 5 most frequently ordered dishes vary across cities and customers.
- **Peak Ordering Time**: The busiest time slots for orders fall between **6 PM - 10 PM**.
- **High-Value Customers**: A small percentage of customers contribute to **majority of revenue**, with some spending over **$100K**.
- **Orders Without Delivery**: Some orders were placed but never fulfilled due to restaurant cancellations or lack of delivery availability.
- **Restaurant Revenue Rankings**: Restaurants in **high-density urban areas** tend to generate the most revenue.
- **Customer Churn**: Identified customers who were active in 2023 but have not placed an order in 2024.
- **Order Cancellation Rate**: Some restaurants experience **higher cancellation rates**, affecting their total earnings.
- **Rider Efficiency**: Riders with the lowest average delivery time are given **higher ratings**.
- **Monthly Sales Trends**: Seasonal demand spikes were observed for certain dishes.
- **City Revenue Ranking**: Cities with the highest total order value in 2023 were ranked.


