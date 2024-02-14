/*
Created By: Kyle Robinson
Created Date: 02/13/2024
Description: Views and Joins
*/



CREATE VIEW V_Tracks_InvoiceLine AS 
SELECT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine AS il
INNER JOIN
	Track AS t
ON
	il.TrackId = t.TrackId