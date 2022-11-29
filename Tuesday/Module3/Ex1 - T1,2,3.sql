USE QATSQLPLUS
GO
SELECT bt.ProductID, bt.TransferDate, bt.TransferAmount
FROM BookTransfers bt

SELECT bt.ProductID, SUM(bt.TransferAmount) AS Stock
FROM BookTransfers bt
GROUP BY bt.ProductID

SELECT bt.ProductID, bt.TransferDate, bt.TransferAmount, 
	SUM(bt.TransferAmount) OVER (PARTITION BY bt.ProductID ORDER BY bt.TransferDate) AS RunningStock
FROM BookTransfers bt