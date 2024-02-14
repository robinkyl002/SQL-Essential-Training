/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: Purchases whose total was between $1.98 and $5
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total BETWEEN 1.98 and 5.00
ORDER BY
	InvoiceDate