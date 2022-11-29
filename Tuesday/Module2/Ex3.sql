SELECT da.DelegateID
FROM DelegateAttendance as da
JOIN CourseRun AS cr
ON cr.CourseRunID = da.CourseRunID
JOIN Course AS c
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQL'
EXCEPT
SELECT da.DelegateID
FROM DelegateAttendance as da
JOIN CourseRun AS cr
ON cr.CourseRunID = da.CourseRunID
JOIN Course AS c
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQLPLUS'

SELECT da.DelegateID
FROM DelegateAttendance as da
JOIN CourseRun AS cr
ON cr.CourseRunID = da.CourseRunID
JOIN Course AS c
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQLPLUS'
EXCEPT
SELECT da.DelegateID
FROM DelegateAttendance as da
JOIN CourseRun AS cr
ON cr.CourseRunID = da.CourseRunID
JOIN Course AS c
ON c.CourseID = cr.CourseID
WHERE c.CourseName = 'QATSQL'