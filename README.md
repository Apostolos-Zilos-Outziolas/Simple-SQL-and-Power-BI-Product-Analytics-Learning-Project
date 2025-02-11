# Simple-SQL-and-Power-BI-Product-Analytics-Learning-Project

## Table of Contents
### 1)Introduction
### 3)Technology
### 2)Data Sources
### 4)Usage
### 5)Coclusion

## Introduction
A simple product analytics project, aimed at providing insights into key product performance performance metrics, such as Revenue per Discount Band, Annual Revenue per product Brand, as well as the Total Cost copmared to the Revenue per Brand.
## Data Sources
Product Data: The 'Product_data.csv' file contains the basic characteristics of the products such as Brand(Product), Cost Price and Sale Price.
Product Sales: The 'product_sales.csv' file contains the basic product sales information such as Date, Country, Product and Units Sold.
Discount Data: The 'discount_data.csv' file contains the basic product discount infromation such as the Discount Band per month and the Discount.
## Technologies
* MS Excel
* MySQL Workbench 8.0 CE
* MS PowerBI

## Exploratory Data Analysis
EDA involved exploring the sales data to answer key questions such as:
  -What is the monthly and annual Revenue(millions) by Brand?
  -What is the Revenue figure(millions) and percentage by Discount Band(None, Low, Medium, High)?
  -What is the Total Cost of production per Brand compared to the Total Revenue?

## Data Analysis
```
SELECT ...
(`Sale Price`*`Units Sold`) as Revenue,
(`Cost Price`*`Units Sold`) as Total_Cost,
date_format(Date, '%Y') as year,
date_format(Date, '%M') as month
FROM product_data
join product_sales on product_data.`Product ID`=product_sales.Product
```
The column Revenue and Total_Cost were created by multiplying column 'Sale Price' from 'product_data.csv' with column 'Units Sold' from 'product_sales.csv'
and column 'Cost Price' from 'product_data.csv' with column 'Units Sold' from 'product_sales.csv', made possible by joining the two tables on the columns 'Product ID' and 'Product' of the 'product_data.csv' file and 'product_sales.csv' file.
