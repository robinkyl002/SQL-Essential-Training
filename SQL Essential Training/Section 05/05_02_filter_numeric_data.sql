/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: Customers who purchased two songs at 99 cents each
Looking at Invoice table, total cost on invoice should be $1.98
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total = 1.98
ORDER BY
	InvoiceDate