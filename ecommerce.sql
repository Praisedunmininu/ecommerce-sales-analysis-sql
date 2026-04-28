USE MyFirstdb

-- Retrieve all record from ecomerce_sales_data_table for intial data exploration
SELECT *  FROM dbo.ecommerce_sales_data;

-- Counting total number of records in the dataset
SELECT COUNT(*) 
FROM dbo.ecommerce_sales_data;

-- Total Sales in Each Category
SELECT Category ,
SUM(sales) AS total_sales
FROM dbo.ecommerce_sales_data
GROUP BY Category
ORDER BY SUM(sales) DESC;

-- Total Profit In Each Category
SELECT Category,
SUM(profit) AS total_profit
FROM dbo.ecommerce_sales_data
GROUP BY Category
ORDER  BY SUM(profit) DESC;

-- Sales breakdown of all products within Electronics category
SELECT TOP 3 Product_name,
SUM(sales) AS total_sales
FROM dbo.ecommerce_sales_data
WHERE Category = 'Electronics'
GROUP BY Product_Name
ORDER BY SUM(sales) DESC;

-- Sales breakdown of all products within Accesories category
SELECT TOP 3 Product_name,
SUM(sales) AS total_sales
FROM dbo.ecommerce_sales_data
WHERE Category = 'Accessories'
GROUP BY product_name
ORDER BY SUM(sales) DESC;

-- Product in Office Category
SELECT Product_name,
SUM(sales) AS total_sales
FROM dbo.ecommerce_sales_data
WHERE Category = 'office'
GROUP BY Product_name
ORDER BY SUM(sales) DESC;

-- Profit Margin in each Category
SELECT Category,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
(SUM(profit)*100/SUM(sales))AS profit_margin
FROM dbo.ecommerce_sales_data
GROUP BY Category
ORDER BY profit_margin DESC;


-- Counting number of unque product in office 
SELECT COUNT(DISTINCT Product_name)
FROM dbo.ecommerce_sales_data
WHERE Category = 'office';


-- identifying product types available in office category
SELECT DISTINCT Product_name
FROM  dbo.ecommerce_sales_data
WHERE Category = 'office';


-- Total sales in each region
SELECT Region,
SUM(sales) AS total_sales
FROM dbo.ecommerce_sales_data
GROUP  BY Region
ORDER BY SUM(sales) DESC;


-- Total profit in each region
SELECT Region,
SUM(profit) AS total_profit
FROM dbo.ecommerce_sales_data
GROUP BY Region
ORDER BY SUM(profit) DESC;


-- Top 3 performing product in the West region
SELECT TOP 3 Product_name,
SUM(sales) AS total_sales
FROM dbo.ecommerce_sales_data
WHERE Region = 'West'
GROUP BY Product_name
ORDER BY SUM(sales) DESC;


-- Top 3 performing product in the East region
SELECT TOP 3 Product_name,
SUM(sales) AS total_sales
FROM dbo.ecommerce_sales_data
WHERE Region = 'East'
GROUP BY  Product_name
ORDER BY SUM(sales) DESC;


-- Top 3 performing product in the South region
SELECT TOP 3 Product_name,
SUM(sales) AS total_sales
FROM dbo.ecommerce_sales_data
WHERE Region ='South'
GROUP BY Product_name
ORDER BY SUM(sales) DESC;


-- Top 3 performing products in the North region
SELECT TOP 3 Product_name,
SUM(sales) AS total_sales
FROM dbo.ecommerce_sales_data
WHERE Region = 'North'
GROUP BY Product_name
ORDER BY SUM(sales) DESC;


-- Total quantity of items sold in each region
SELECT Region,
SUM(Quantity) AS total_Quantity
FROM  dbo.ecommerce_sales_data
GROUP BY Region
ORDER BY SUM(Quantity)DESC;


-- Average sales per order in each region
SELECT Region,
AVG(sales) AS Average_sales
FROM dbo.ecommerce_sales_data
GROUP BY region
ORDER BY AVG(sales) DESC;
















