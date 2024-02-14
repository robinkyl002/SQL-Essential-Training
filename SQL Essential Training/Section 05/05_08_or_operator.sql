/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: How many invoices have a BillingCity that starts with a P or starts with a D?
*/



SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	BillingCity LIKE 'P%' OR BillingCity LIKE 'D%'
ORDER BY
	BillingCity,
	InvoiceDate