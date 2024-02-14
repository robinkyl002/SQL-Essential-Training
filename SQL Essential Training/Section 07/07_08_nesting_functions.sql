/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Nesting Functions
*/


SELECT
	SUM(total) AS [Total Sales],
	round(AVG(total), 2) AS [Average Sales],
	MAX(total) AS [Highest Sale],
	Min(total) AS [Lowest Sale],
	count(*) AS [Sales count]
FROM
	Invoice