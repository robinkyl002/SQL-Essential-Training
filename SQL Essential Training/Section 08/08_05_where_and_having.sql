/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Grouping with HAVING | Average invoice totals greater than $5 for cities that start with B
*/


SELECT
	BillingCity,
	round(avg(total), 2) AS [Average Invoice Total]
FROM
	Invoice
WHERE	
	BillingCity LIKE 'B%'
GROUP BY 
	BillingCity
HAVING 
	avg(total) > 5
ORDER BY
	BillingCity