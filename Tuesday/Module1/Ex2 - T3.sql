USE QATSQLPLUS
GO
CREATE FUNCTION udf_IndividualDelegateDays(@DelegateID INT)
	RETURNS TABLE AS
	RETURN(
		SELECT @DelegateID AS DelegateID,
			SUM(cr.DurationDays) AS DelegateDays,
			COUNT(*) AS DelegateCourses
		FROM Delegate as d
		JOIN DelegateAttendance AS da
		ON d.DelegateID = da.DelegateID
		JOIN CourseRun as cr
		ON cr.CourseRunID = da.CourseRunID
		WHERE d.DelegateID = @DelegateID)
GO

SELECT * FROM dbo.udf_IndividualDelegateDays(1)