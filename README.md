## E-commerce Data Analysis with SQL
### Overview
This repository contains a set of SQL queries designed to extract valuable insights from an e-commerce dataset. The analysis focuses on understanding customer behavior, sales trends, product performance, and other key metrics to support business decision-making.

## Dataset
The analysis is performed on a dataset loaded into a PostgreSQL database table named e_commerce_data1. The dataset contains various columns related to customer information, product details, purchase transactions, and return status.

Date Format for 'Purchase Date': DD-MM-YY.

## Tools Used
SQL: PostgreSQL.

PgAdmin: For database management and query execution.

## How to Use
Load Data: Ensure your E-commerce Data 1.csv file is loaded into a PostgreSQL table named e_commerce_data1.
Connect: Use PgAdmin or your preferred SQL client to connect to your PostgreSQL database.
Execute Queries: Copy and paste the desired SQL queries into your client's query editor and execute them.

## Analysis Questions & SQL Queries
Below are the SQL queries used to answer specific business questions. Each query is accompanied by a brief description of its purpose.

```
-- How many unique customers are there in the dataset?
This query counts the total number of distinct customer IDs, providing an understanding of the customer size.

-- What is the total purchase amount across all transactions?
This query calculates the sum of all "Total Purchase Amount" values, giving the overall revenue generated.

-- List all distinct product categories available.
This query provides a list of all unique product categories sold in the e-commerce store.

-- What is the average product price for each product category?
This query calculates the average price of products within each distinct product category.

-- Find the total quantity of products sold for each product category.
This query sums the "Quantity" of products sold, grouped by their respective categories.

-- Find the highest number of products sold (per category).
This query identifies the product category with the highest total quantity of products sold.

-- Which payment method is most frequently used?
This query counts transactions by payment method and identifies the one with the highest count.

-- How many customers have made returns?
This query counts the number of unique customers who have a '1' (indicating a return) in the "Returns" column.

-- What is the average age of customers who have churned?
This query calculates the average age of customers where the "Churn" column is marked as '1' (indicating churn).

-- Find the top 5 customers with the highest total purchase amount.
This query identifies the customers who have spent the most money, based on their total purchase amount.

-- Count the number of purchases made by customers based on their gender.
This query sums the quantity of items purchased, grouped by the customer's gender.
```
```
-- Which gender purchased the most items?
This query identifies the gender group that purchased the highest total quantity of items.

-- How many purchases were made in year 2023?
This query calculates the total quantity of items purchased in the year '23' (2023), extracting the year from the 'Purchase Date' column.

-- What was the total purchase amount for each month in 2023?
This query calculates the total purchase amount for each month within the year '23' (2023), extracting month and year from the 'Purchase Date' column.

-- What was the total purchase amount for each year?
This query calculates the total purchase amount for every year present in the dataset, extracting the year from the 'Purchase Date' column.
