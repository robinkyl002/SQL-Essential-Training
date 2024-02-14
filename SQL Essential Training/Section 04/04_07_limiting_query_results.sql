/*
Created by: Kyle Robinson
Created date: 02/12/2024
Description: This query displays top 10 customers' first and last names, as well as their email addresses
Used aliases to make columns more readable
Results sorted by FirstName in ascending order and LastName in descending order
*/

SELECT
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS EMAIL
FROM
	Customer
ORDER BY
	FirstName ASC,
	LastName DESC
LIMIT 10
	