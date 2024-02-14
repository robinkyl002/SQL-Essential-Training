/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: How many invoices billed on May 22, 2010
*/

-- using the Date function removes the need to add the time to the end of the date

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	Date(InvoiceDate) = '2010-05-22'
ORDER BY
	BillingCity,
	InvoiceDate