SELECT *
FROM sales_data2;

-- Maximum revenue collected by each country----------------
SELECT MAX(Revenue), Country
FROM sales_data2
GROUP BY Country
ORDER BY 1 DESC;

-- Total Revenue collected by each Country---------------
SELECT SUM(Revenue), Country
FROM sales_data2
GROUP BY Country
ORDER BY 1 DESC;

-- average revenue collected by males and females----------------------
SELECT AVG(Revenue), Customer_Gender
FROM sales_data2
GROUP BY Customer_Gender
ORDER BY 1 ;

-- average revenue collected by each age group---------------------------------
SELECT AVG(Revenue), Age_Group
FROM sales_data2
GROUP BY Age_Group
ORDER BY 1 ;

-- Highest revenue collected in a year-----------------------
SELECT SUM(Revenue), `Year`
FROM sales_data2
GROUP BY `Year`
ORDER BY 1 DESC;

SELECT MAX(Revenue), `Year`
FROM sales_data2
GROUP BY `Year`
ORDER BY 1 DESC;

-- Total quantity of different products------------------------
SELECT SUM(Order_Quantity), Product
FROM sales_data2
GROUP BY Product
ORDER BY 1 DESC;

-- months with highest and lowest profits------------------------
SELECT SUM(Profit), `Month`
FROM sales_data2
GROUP BY `Month`
ORDER BY 1 DESC;