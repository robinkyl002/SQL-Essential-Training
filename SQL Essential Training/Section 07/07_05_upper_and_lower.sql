/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Create a Mailing List of US Customers
Removing extra numbers in PostalCode
*/


SELECT
	FirstName,
	LastName,
	Address,
	FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ' ' || State || ' ' || PostalCode AS [Mailing Address],
	LENGTH(PostalCode),
	SUBSTR(PostalCode, 1, 5) AS [5 Digit Postal Code],
	UPPER(FirstName) AS [First Name All Caps],
	lower(LastName) AS [Last Name lower case]
FROM
	Customer
WHERE
	Country = 'USA'