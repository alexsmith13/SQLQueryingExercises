SELECT VendorName, CourseName, StartDate, NumberDelegates
FROM VendorCourseDateDelegateCount

SELECT VendorName, CourseName, StartDate, SUM(NumberDelegates) AS TotalDelegates
FROM VendorCourseDateDelegateCount
GROUP BY VendorName, CourseName, StartDate
WITH ROLLUP
