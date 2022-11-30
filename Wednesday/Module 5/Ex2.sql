DECLARE @TotalDelegates INT
SELECT @TotalDelegates = COUNT(*)
FROM Delegate
PRINT @TotalDelegates