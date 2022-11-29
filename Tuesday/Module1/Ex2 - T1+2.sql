USE QATSQLPLUS
GO
CREATE FUNCTION udf_DelegateDays()
	RETURNS TABLE AS
	RETURN(
		SELECT d.DelegateID,
			SUM(cr.DurationDays) AS DelegateDays,
			COUNT(*) AS DelegateCourses
		FROM Delegate as d
		JOIN DelegateAttendance AS da
		ON d.DelegateID = da.DelegateID
		JOIN CourseRun as cr
		ON cr.CourseRunID = da.CourseRunID
		GROUP BY D.DelegateID)
GO

SELECT * FROM dbo.udf_DelegateDays()