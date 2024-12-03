SELECT *
FROM sales;

-- creating table "sales_data1" same as "sales"------------------------
CREATE TABLE sales_data1
LIKE sales;

SELECT *
FROM sales_data1;

-- inserting values in table "sales_data1"-----------------
INSERT sales_data1
SELECT *
FROM sales;

SELECT *
FROM sales_data1;

-- Creating another table "sales_data2" same as "sales_data1 and adding a column "row_num"----------------------------------
CREATE TABLE `sales_data2` (
  `Date` text,
  `Day` int DEFAULT NULL,
  `Month` text,
  `Year` int DEFAULT NULL,
  `Customer_Age` int DEFAULT NULL,
  `Age_Group` text,
  `Customer_Gender` text,
  `Country` text,
  `State` text,
  `Product_Category` text,
  `Sub_Category` text,
  `Product` text,
  `Order_Quantity` int DEFAULT NULL,
  `Unit_Cost` int DEFAULT NULL,
  `Unit_Price` int DEFAULT NULL,
  `Profit` int DEFAULT NULL,
  `Cost` int DEFAULT NULL,
  `Revenue` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Checking for duplicates in the data------------------------------
INSERT sales_data2
SELECT * , ROW_NUMBER() OVER(PARTITION BY `Date`, `Day`, `Month`, `Year`, Customer_Age, Age_Group, Customer_Gender, Country,
State, Product_Category, Sub_Category, Product, Order_Quantity, Unit_Cost, Unit_Price, Profit, Cost, Revenue ) AS row_num
FROM sales;

SELECT *
FROM sales_data2
WHERE row_num >1;

-- Deleting Duplicate values----------------------------
DELETE 
FROM sales_data2
WHERE row_num >1;

SELECT *
from sales_data2;

-- Standardizing the data-----------------------------------------
SELECT *
FROM sales_data2
WHERE Product LIKE 'Water Bottle%';

UPDATE sales_data2
SET Product = 'Water Bottle'
WHERE Product LIKE 'Water Bottle%';

SELECT *
from sales_data2;

-- Checking for null values------------------------------
SELECT *
from sales_data2
WHERE `Date` IS NULL;

SELECT *
from sales_data2
WHERE Order_Quantity IS NULL;

SELECT *
from sales_data2
WHERE Unit_Cost IS NULL;

SELECT *
FROM sales_data2;

-- Fixing the "Age_Group" column
UPDATE sales_data2
SET Age_Group = 'Youth'
WHERE Age_Group LIKE 'Youth%';

UPDATE sales_data2
SET Age_Group = 'Young Adults'
WHERE Age_Group LIKE 'Young Adults%';

UPDATE sales_data2
SET Age_Group = 'Adults'
WHERE Age_Group LIKE 'Adults%';

UPDATE sales_data2
SET Age_Group = 'Seniors'
WHERE Age_Group LIKE 'Seniors%';

SELECT *
FROM sales_data2;

UPDATE sales_data2
SET Customer_Gender = 'Female'
WHERE Customer_Gender LIKE 'F';

UPDATE sales_data2
SET Customer_Gender = 'Male'
WHERE Customer_Gender LIKE 'M';

SELECT *
FROM sales_data2;

SELECT *
FROM sales_data2
WHERE Customer_Gender NOT IN  ('Female' , 'Male');

-- Changing Datatype of "Date" column-----------------------
ALTER TABLE sales_data2
MODIFY COLUMN `Date` DATE;

SELECT *
FROM sales_data2;

-- Checking unique values---------------------------------
SELECT DISTINCT Country
FROM sales_data2
ORDER BY 1;

SELECT DISTINCT State
FROM sales_data2
ORDER BY 1;

SELECT DISTINCT Product_Category
FROM sales_data2
ORDER BY 1;

SELECT DISTINCT Product
FROM sales_data2
ORDER BY 1;

SELECT *
FROM sales_data2;