DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'AQ'
IF @Vendor = 'NULL'
	PRINT 'NULL'
ELSE
	IF NOT EXISTS (SELECT * FROM Vendor WHERE VendorName=@Vendor)
		PRINT 'DOESNT EXIST'
	ELSE
		SELECT *
			FROM dbo.Course AS C
				INNER JOIN dbo.Vendor AS V
					ON C.VendorID = V.VendorID
			WHERE 
				VendorName = @Vendor