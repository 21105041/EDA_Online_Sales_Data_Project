# EDA_Online_Sales_Data_Project
This project explores and analyzes an online sales dataset using SQL. The objective is to uncover key business insights that can help optimize sales strategies and improve overall performance.

## Table of Contents
1. [Introduction](#introduction)
2. [Dataset](#dataset)
3. [Analysis Overview](#analysis-overview)
4. [Key Insights](#key-insights)
5. [SQL Techniques Used](#sql-techniques-used)
6. [How to Use](#how-to-use)
7. [Acknowledgments](#acknowledgments)

## Introduction
The online sales data contains transactional records, including details such as product categories, sales amounts, customer demographics, and transaction timestamps. This analysis focuses on identifying patterns and trends to support strategic decision-making.

## Dataset
- **Source**: Kaggle
- **Features**:
  - Transaction ID
  - Customer ID
  - Product Category
  - Quantity Sold
  - Revenue
  - Sales Date
  - Region
- **Size**: 113036 rows x 18 columns

## Analysis Overview
The analysis aims to:
1. Identify top-performing product categories.
2. Determine seasonal sales trends.
3. Analyze customer purchasing behavior by region.
4. Find correlations between revenue and product categories.
5. Highlight underperforming regions or products.

## Key Insights
- **Top Products**: Products in the `Accessories` category contribute to the highest revenue share.
- **Seasonal Trends**: Sales peak during the month of May making highest profit, while July shows the least profit
- **Regional Insights**: United States has recorded the highest total revenue collection, while Australia shows growth potential.
- **Customer Insights**: Repeat customers contribute to 60% of total revenue.

## SQL Techniques Used
- **Data Aggregation**:
  - `SUM()`, `AVG()`, and `COUNT()` to calculate metrics like total revenue and average sales.
- **Filtering and Conditional Logic**:
  - `WHERE`, `CASE`, and `HAVING` clauses to segment data.
- **Joins**:
  - Inner and left joins to combine customer data with transactional records.
- **Window Functions**:
  - `ROW_NUMBER()`, `RANK()`, and `PARTITION BY` to rank products and analyze customer behavior.
- **Date Functions**:
  - `EXTRACT()` and `DATE_TRUNC()` to analyze temporal patterns.

## How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/Online-Sales-EDA.git
