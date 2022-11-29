USE QATSQLPLUS
GO

WITH CoursesCTE AS (
SELECT vcdc.VendorName, vcdc.CourseName, vcdc.NumberDelegates,
	RANK() OVER (PARTITION BY vcdc.VendorName Order BY vcdc.NumberDelegates DESC) AS League_Pos
FROM VendorCourseDelegateCount AS vcdc
)

SELECT *
FROM CoursesCTE
WHERE League_Pos=1
GO

