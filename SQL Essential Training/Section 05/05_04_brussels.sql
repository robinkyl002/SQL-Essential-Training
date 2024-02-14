/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: Invoices billed to the city of Brussels
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	BillingCity='Brussels'
ORDER BY
	InvoiceDate