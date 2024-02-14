/* 
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Views
*/



CREATE VIEW V_AvgTotal AS 
SELECT
	round(avg(total),2) AS [Average Total]
FROM
	Invoice