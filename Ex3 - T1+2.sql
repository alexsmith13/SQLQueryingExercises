USE QATSQLPLUS
GO

SELECT d.DelegateID, d.DelegateName, d.CompanyName, jb.StartDate
FROM Delegate as d
JOIN DelegateAttendance as da
ON d.DelegateID = da.DelegateID
JOIN (
	SELECT cr.CourseRunID, cr.StartDate
	FROM CourseRun AS cr
	JOIN Trainer as t
	ON t.TrainerID = cr.TrainerID
	WHERE t.TrainerName = 'Jason Bourne'
	) AS jb
ON da.CourseRunID = jb.CourseRunID