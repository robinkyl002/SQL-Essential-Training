/*
Created by: Kyle Robinson
Created Date: 02/12/2024
Description: All invoices greater than $1.98 from cities whose name starts with P or D

- PEMDAS - Parentheses, Exponents, Multiplication/Division, Addition/Subtraction
*/



SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total > 1.98 AND (BillingCity LIKE 'P%' OR BillingCity LIKE 'D%')
ORDER BY
	BillingCity,
	InvoiceDate