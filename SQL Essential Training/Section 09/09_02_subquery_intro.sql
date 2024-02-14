/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Subqueries | Gather data about all invoices less than this average
*/

SELECT
	round(avg(total), 2) AS [Average Total]
FROM
	Invoice


	
	
	
	
	
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total < 
	(SELECT avg(total) FROM Invoice)
ORDER BY
	total DESC