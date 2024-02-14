/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Calculate ages of all employees
*/


SELECT
	LastName,
	FirstName,
	BirthDate,
	strftime('%Y-%m-%d', BirthDate) AS [Birthdate No Timecode],
	strftime('%Y-%m-%d', 'now') AS [Present Date No Timecode],
	strftime('%Y-%m-%d', 'now') - strftime('%Y-%m-%d', BirthDate) AS Age
FROM
	Employee