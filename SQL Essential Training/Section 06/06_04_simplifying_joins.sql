/*
Created By: Kyle Robinson
Created Date: 02/12/2024
Description: Listing all of the customers with each of their invoices
*/

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY c.CustomerId