DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'QA'
IF @Vendor = 'NULL'
	PRINT 'NULL'
ELSE
	SELECT *
		FROM dbo.Course AS C
			INNER JOIN dbo.Vendor AS V
				ON C.VendorID = V.VendorID
		WHERE 
			VendorName = @Vendor
