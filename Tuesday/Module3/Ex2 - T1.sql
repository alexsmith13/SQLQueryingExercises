USE QATSQLPLUS
GO
SELECT *,
	RANK() OVER (ORDER BY vcdc.NumberDelegates DESC) AS _Rank,
	DENSE_RANK() OVER (ORDER BY vcdc.NumberDelegates DESC) AS DenseRank,
	ROW_NUMBER() OVER (ORDER BY vcdc.NumberDelegates DESC) AS RowNumber,
	NTILE(3) OVER (ORDER BY vcdc.NumberDelegates DESC) AS N_Tile
FROM VendorCourseDelegateCount AS vcdc
GO
