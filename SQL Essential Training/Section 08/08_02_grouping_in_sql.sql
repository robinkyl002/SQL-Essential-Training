/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Grouping in SQL | Average invoice totals by City
*/


SELECT
	BillingCity,
	round(avg(total), 2) AS [Average Invoice Total]
FROM
	Invoice
GROUP BY 
	BillingCity
ORDER BY
	BillingCity