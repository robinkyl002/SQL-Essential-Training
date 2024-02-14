/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: How many invoices billed after May 22, 2010 and have a total of less than $3.00?
*/



SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	Date(InvoiceDate) > '2010-05-22' AND total < 3.00
ORDER BY
	InvoiceDate