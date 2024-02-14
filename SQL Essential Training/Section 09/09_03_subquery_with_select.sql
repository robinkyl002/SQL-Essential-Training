/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Subqueries in the SELECT | How is each individual city performing against the global average sales?
*/


SELECT
	BillingCity,
	avg(total) AS [Billing City Average],
	(Select avg(total) from Invoice) AS [Global Average]
FROM
	Invoice
GROUP BY
	BillingCity
ORDER BY 
	BillingCity