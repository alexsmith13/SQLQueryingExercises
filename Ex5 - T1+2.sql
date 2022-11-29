USE QATSQLPLUS
GO
SELECT * INTO #MicrosoftLocal
FROM Course AS c
WHERE c.VendorID = 2
SELECT * INTO ##MicrosoftGlobal
FROM Course as c
WHERE c.VendorID = 2
GO

SELECT * FROM ##MicrosoftGlobal
SELECT * FROM #MicrosoftLocal
