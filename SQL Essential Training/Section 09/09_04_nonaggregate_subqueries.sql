/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Subqueries without aggregate functions
*/


SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM
	Invoice
WHERE 
	InvoiceDate > 
(SELECT
	InvoiceDate
FROM
	Invoice
WHERE
	InvoiceId = 251)