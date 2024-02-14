DROP VIEW "main"."V_AvgTotal";
CREATE VIEW V_AvgTotal AS 
SELECT
	avg(total) AS [Average Total]
FROM
	Invoice