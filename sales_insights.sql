-- Counting total no of records in transactions table--
SELECT COUNT(*) from sales.transactions;

 
-- Calculating all transactions are performed in chennai
SELECT * FROM sales.transactions WHERE market_code='Mark001';


--  What is total revenue in year 2019 ?
SELECT SUM(sales_amount)
FROM transactions as t
JOIN date AS d 
ON t.order_date=d.date
WHERE d.year=2019; 

  
-- Getting all the transactions where performed in 2020
SELECT * 
FROM transactions as t
JOIN date AS d 
ON t.order_date=d.date
WHERE d.year=2020; 


-- Total revenue in year 2020
SELECT SUM(sales_amount)
FROM transactions as t
JOIN date AS d 
ON t.order_date=d.date
WHERE d.year=2020;
-- If we compare 2019 revenue with 2020 revenue sales are declining 


 -- Total mumbai revenue in 2018 
SELECT SUM(sales_amount )
FROM transactions AS t
JOIN date AS d 
ON t.order_date=d.date 
WHERE d.year=2018 AND t.market_code='Mark014';







