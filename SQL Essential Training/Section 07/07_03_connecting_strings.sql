/*
Created By: Kyle Robinson
Created Date: 02/12/2024
Description: Create a Mailing List of US Customers
*/


SELECT
	FirstName,
	LastName,
	Address,
	FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ' ' || State || ' ' || PostalCode AS [Mailing Address]
FROM
	Customer
WHERE
	Country = 'USA'