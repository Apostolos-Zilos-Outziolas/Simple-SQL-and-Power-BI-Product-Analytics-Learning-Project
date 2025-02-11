UPDATE product_data
SET `Sale Price`=REPLACE(`Sale Price`, '$', '')
WHERE `Sale Price` LIKE "$%";

UPDATE product_data
SET `Cost Price`=REPLACE(`Cost Price`, '$', '')
WHERE `Cost Price` LIKE "$%";

SELECT
date_format(Month, '%M') as month
from discount_data;

WITH table1 AS(
SELECT 
product_data.Product,
product_data.Category,
product_data.Brand,
product_data.Description,
product_data.`Sale Price`,
product_data.`Cost Price`,
product_sales.Date,
product_sales.`Customer Type`,
product_sales.`Discount Band`,
product_sales.`Units Sold`,
(`Sale Price`*`Units Sold`) as Revenue,
(`Cost Price`*`Units Sold`) as Total_Cost,
date_format(Date, '%Y') as year,
date_format(Date, '%M') as month
FROM product_data
join product_sales on product_data.`Product ID`=product_sales.Product)


SELECT * ,
(Discount*(1/100))*Revenue as Discount_revenue
FROM table1
join discount_data on table1.month=discount_data.Month
