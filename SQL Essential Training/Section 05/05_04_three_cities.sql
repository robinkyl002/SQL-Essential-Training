/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: Invoices billed to Brussels, Orlando or Paris,
Ordered by Billing City, then Invoice date
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	BillingCity IN ('Brussels', 'Orlando', 'Paris')
ORDER BY
	BillingCity,
	InvoiceDate