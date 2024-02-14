/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: Invoices billed to cities that start with B
*/

-- % is wild card character

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	BillingCity LIKE 'B%'
ORDER BY
	BillingCity,
	InvoiceDate