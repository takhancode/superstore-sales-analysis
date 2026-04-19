SELECT Region,
       ROUND(SUM(Sales), 2) AS total_revenue,
       COUNT(DISTINCT Order_ID) AS total_orders
FROM sales
GROUP BY Region
ORDER BY total_revenue DESC;

SELECT Sub_Category,
       ROUND(SUM(Sales), 2) AS total_sales,
       ROUND(SUM(Profit), 2) AS total_profit,
       ROUND(AVG(Discount) * 100, 1) AS avg_discount_pct
FROM sales
GROUP BY Sub_Category
ORDER BY total_sales DESC
LIMIT 10;


SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS month,
       ROUND(SUM(Sales), 2) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;


SELECT Sub_Category,
       COUNT(*) AS loss_orders,
       ROUND(SUM(Profit), 2) AS total_loss
FROM sales
WHERE Profit < 0
GROUP BY Sub_Category
ORDER BY total_loss ASC
LIMIT 5;


SELECT Segment,
       ROUND(SUM(Sales), 2) AS revenue,
       ROUND(SUM(Profit), 2) AS profit,
       ROUND(SUM(Profit)/SUM(Sales) * 100, 1) AS profit_margin_pct
FROM sales
GROUP BY Segment
ORDER BY revenue DESC;