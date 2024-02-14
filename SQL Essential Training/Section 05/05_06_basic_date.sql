/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: How many invoices billed on May 22, 2010
*/


SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	InvoiceDate = '2010-05-22 00:00:00'
ORDER BY
	BillingCity,
	InvoiceDate