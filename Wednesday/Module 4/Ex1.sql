SELECT VendorName, CourseName, StartDate, NumberDelegates
FROM VendorCourseDateDelegateCount

SELECT * 
	FROM (SELECT VendorName, StartDate, NumberDelegates FROM VendorCourseDateDelegateCount) AS BaseData
	PIVOT
	(SUM(NumberDelegates) FOR VendorName in ([Microsoft],[Oracle],[QA])) AS Pivotted