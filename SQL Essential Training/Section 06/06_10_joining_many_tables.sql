/*
Created By: Kyle Robinson
Created Date: 02/12/2024
Description: JOINs on more than two tables | Which employees are responsible for the 10 highest individual sales
*/

SELECT
	c.LastName,
	c.FirstName,
	c.SupportRepId,
	c.CustomerId,
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	i.total
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
INNER JOIN 
	Employee as e
ON 
	c.SupportRepId = e.EmployeeId
ORDER BY 
	i.total DESC
LIMIT 10