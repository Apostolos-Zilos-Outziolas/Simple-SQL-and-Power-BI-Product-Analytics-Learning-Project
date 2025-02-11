# Simple-SQL-and-Power-BI-Product-Analytics-Learning-Project

## Table of Contents
### 1)Introduction
### 2)Data Sources
### 3)Technology
### 4)EDA
### 5)Data Analysis
### 6)Results/Findings
### 7)Recommendations
### 8)Limitations

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

## Results/Findings
1. The biggest percentage of the revenue came from items that had a High Discount Band(34.93%), closely followed by products with a medium Discount Band(34.52%),
   then by products with a low Discount Band(23.93%) and the least percentage came from products that had no Discount Band(6.61%).
2. The Revenue per product Brand was larger in 2023 than 2022, with the Brand HyperX being the only exception. The highest earning month for most of the Brands was
   June, except for Rode whose highest selling month was April and SteelSeries who had the same Revenue in the months June and April.
3. Focusrite and PreSonus had the biggest profit(1m $).

## Recommendations
Based on the results of our analysis, we recommend the following actions:
  -Focus on providing higher discount bands on items, keeping profitabillity in mind.
  -Conduct a product quality test on the HyperX 2023 season products, in order to markdown any possible faults and drawbacks and improve on them, ahead of the 2024    season.
  -Increase product stock in the peak revenue months(June and April), according to wich brand produced most Revenue.

## Limitations
The datasets were already clean and so no data cleaning took place.
