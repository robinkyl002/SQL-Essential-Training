/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Grouping with WHERE | Average invoice totals by city for cities that start with L
*/


SELECT
	BillingCity,
	round(avg(total), 2) AS [Average Invoice Total]
FROM
	Invoice
WHERE	
	BillingCity LIKE 'L%'
GROUP BY 
	BillingCity
ORDER BY
	BillingCity