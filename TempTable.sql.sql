

IF OBJECT_ID('tempdb..#TempTableExample') IS NOT NULL
    DROP TABLE #TempTableExample

CREATE TABLE #TempTableExample
(
    ID				    INTEGER,
    Field1              TINYINT,
    Field2              TINYINT,
)

--test it out
INSERT INTO #TempTableExample VALUES (1, 0, 0)
SELECT ID, Field1, Field2 from #TempTableExample


--Remember to deallocate the table after it is used.
IF OBJECT_ID('tempdb..#TempTableExample') IS NOT NULL
    DROP TABLE #TempTableExample