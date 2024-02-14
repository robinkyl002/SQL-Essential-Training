/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Grouping by more than one field at a time | Average invoice totals by billing country and city
*/


SELECT
	BillingCountry,
	BillingCity,
	round(avg(total), 2) AS [Average Invoice Total]
FROM
	Invoice
GROUP BY 
	BillingCountry, BillingCity
ORDER BY
	BillingCountry