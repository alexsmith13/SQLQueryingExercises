USE QATSQLPLUS
GO

WITH BourneCourses AS (
	SELECT cr.CourseRunID, cr.StartDate
	FROM CourseRun AS cr
	JOIN Trainer as t
	ON t.TrainerID = cr.TrainerID
	WHERE t.TrainerName = 'Jason Bourne'
	)

SELECT d.DelegateID, d.DelegateName, d.CompanyName, bc.StartDate
FROM Delegate as d
JOIN DelegateAttendance as da
ON d.DelegateID = da.DelegateID
JOIN BourneCourses AS bc
ON da.CourseRunID = bc.CourseRunID