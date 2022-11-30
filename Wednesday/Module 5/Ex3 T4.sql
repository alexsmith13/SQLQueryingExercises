DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'QA'
IF @Vendor = 'NULL'
	BEGIN
	PRINT 'NULL'
	RETURN
	END
IF NOT EXISTS (SELECT * FROM Vendor WHERE VendorName=@Vendor)
	BEGIN
	PRINT 'DOESNT EXIST'
	RETURN
	END

	SELECT *
		FROM dbo.Course AS C
			INNER JOIN dbo.Vendor AS V
				ON C.VendorID = V.VendorID
		WHERE 
			VendorName = @Vendor
GO