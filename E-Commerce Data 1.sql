 -- Viewing the data.
select * from e_commerce_data1
 
 -- How many unique customers are there in the dataset?
 select count(distinct "Customer ID") as "Unique Customers"
 from e_commerce_data1
 
 -- What is the total purchase amount across all transactions?
 select sum("Total Purchase Amount") as "Total Purchase Amount"
 from e_commerce_data1
 
 -- List all distinct product categories available.
 select distinct("Product Category") as "Product Category"
 from e_commerce_data1
 
 -- What is the average product price for each product category?
select "Product Category", avg( "Product Price") as "Average Product Price"
from e_commerce_data1
group by "Product Category"

-- Find the total quantity of products sold for each product category.
select "Product Category", sum("Quantity") as "Total Quantity Sold"
from e_commerce_data1
group by "Product Category"

-- Find the highest number of products sold.
select "Product Category", sum("Quantity") as "Total Quantity Sold"
from e_commerce_data1
group by "Product Category"
order by "Total Quantity Sold" desc limit 1

--Which payment method is most frequently used?
select "Payment Method", count("Payment Method") as "Total Transactions"
from e_commerce_data1
group by "Payment Method" 
order by "Total Transactions" desc limit 1

-- How many customers have made returns?
select "Returns", count(distinct "Customer ID") as "Number of Customers" 
from e_commerce_data1
 -- making use of one quote to convert to string instead of double quote.
where "Returns" = '1'
group by "Returns" 

-- What is the average age of customers who have churned?
select avg("Customer Age") as Age
from e_commerce_data1
 -- making use of one quote to convert to string instead of double quote.
where "Churn" = '1'

-- Find the top 5 customers with the highest total purchase amount.
select "Customer Name", sum("Total Purchase Amount") as "Total Purchase Amount"
from e_commerce_data1
group by "Customer ID", "Customer Name"
order by "Total Purchase Amount" desc limit 5

-- Count the number of purchases made by customers based on their gender.
select "Gender", count("Quantity") as "Total Quantity"
from e_commerce_data1
group by "Gender"

-- Which gender purchased the most items?
select "Gender", count("Quantity") as "Total Quantity"
from e_commerce_data1
group by "Gender"
order by "Total Quantity" desc limit 1

-- How many purchases were made in year 2023?
select substring("Purchase Date", 7, 2) as "Purchase Year", sum("Quantity") AS "Number of Purchases"
from e_commerce_data1
where substring("Purchase Date", 7, 2) = '23'
group by "Purchase Year" 
     
-- What was the total purchase amount for each month in 2023?
select substring("Purchase Date", 4, 2) as "Purchase Month", sum("Total Purchase Amount") AS "Total Purchase Amount"
from e_commerce_data1
where substring("Purchase Date", 7, 2) = '23'
group by "Purchase Month"   

-- What was the total purchase amount for each year?
select substring("Purchase Date", 7, 2) as "Purchase Year", sum("Total Purchase Amount") AS "Total Purchase Amount"
from e_commerce_data1
group by "Purchase Year" 
order by "Total Purchase Amount" desc



























