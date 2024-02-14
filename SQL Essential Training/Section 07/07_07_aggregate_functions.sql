/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: What is the all time global sales total?
*/


SELECT
	SUM(total) AS [Total Sales],
	AVG(total) AS [Average Sales],
	MAX(total) AS [Highest Sale],
	Min(total) AS [Lowest Sale],
	count(*) AS [Sales count]
FROM
	Invoice