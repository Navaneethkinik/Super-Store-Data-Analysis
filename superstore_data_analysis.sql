SELECT * FROM sales_data.`sample - superstore`;

SELECT sum(sales) as TotalSales, sum(Profit) as TotalProfit from sales_data.`sample - superstore`;

SELECT Category, SUM(Sales) as TotalSales 
FROM sales_data.`sample - superstore` 
GROUP BY Category
ORDER BY TotalSales DESC;

SELECT Category, SUM(Profit) as TotalProfit 
FROM sales_data.`sample - superstore` 
GROUP BY Category
ORDER BY TotalProfit DESC;

SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS Month, SUM(Sales) AS TotalSales
FROM sales_data.`sample - superstore`
GROUP BY Month;

SELECT `Customer Name`, SUM(Sales) as TotalPurchaseValue
FROM sales_data.`sample - superstore`
GROUP BY `Customer Name`
ORDER BY TotalPurchaseValue DESC
LIMIT 10;

select `Customer Name`,count('order ID') as TotalPurchases
FROM sales_data.`sample - superstore`
group by `Customer Name`
order by TotalPurchases DESC
LIMIT 10;

SELECT `Category`, `Sub-Category`, SUM(`Profit`) AS `TotalProfit`
FROM `sales_data`.`sample - superstore`
GROUP BY `Category`, `Sub-Category`
ORDER BY `TotalProfit` DESC
LIMIT 10;

SELECT Category, SUM(Sales) AS TotalSales, SUM(Profit) AS TotalProfit
FROM `sales_data`.`sample - superstore`
GROUP BY Category
HAVING TotalSales < 10000 OR TotalProfit < 1000;

SELECT Region,State,City,SUM(Sales) AS TotalSales
FROM `sales_data`.`sample - superstore`
group by Region,State,City
order by TotalSales desc
limit 5;

SELECT Region ,sum(Sales) as TotalSales
FROM `sales_data`.`sample - superstore`
group by Region
order by TotalSales desc;

select `Product Name`
FROM `sales_data`.`sample - superstore`
where `Order ID` in (
select `Order ID` 
FROM `sales_data`.`sample - superstore`
group by `Order ID`
having count(`Product ID`)>1);

select `Product Name`,Quantity 
FROM `sales_data`.`sample - superstore`
where Quantity < 10;