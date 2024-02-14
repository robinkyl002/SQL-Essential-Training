/*
Created By: Kyle Robinson
Created Date: 02/12/2024
Description: JOINS
*/

-- Joining the Invoice table to the Customer table

SELECT
	*
FROM
	Invoice
INNER JOIN
	Customer
ON
	Invoice.CustomerId = Customer.CustomerId