/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: Purchases whose total was $1.98 or $3.96
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total IN (1.98, 3.96)
ORDER BY
	InvoiceDate