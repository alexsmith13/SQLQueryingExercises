SELECT VendorName, CourseName, StartDate, SUM(NumberDelegates) AS TotalDelegates
FROM VendorCourseDateDelegateCount
GROUP BY 
GROUPING SETS ((VendorName),(VendorName, CourseName, StartDate))

SELECT VendorName, CourseName, StartDate, SUM(NumberDelegates) AS TotalDelegates, GROUPING_ID(VendorName,CourseName,StartDate) AS GroupingType
FROM VendorCourseDateDelegateCount
GROUP BY 
GROUPING SETS ((VendorName),(VendorName,CourseName),(VendorName, CourseName, StartDate))