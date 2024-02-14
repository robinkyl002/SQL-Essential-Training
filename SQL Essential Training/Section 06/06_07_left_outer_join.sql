/*
Created By: Kyle Robinson
Created Date: 02/12/2024
Description: Left outer join with Invoice and Customer tables
*/

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.BillingAddress,
	i.InvoiceDate,
	i.total
FROM
	Invoice AS i
LEFT OUTER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY c.CustomerId