--This is an Example to show basic Transaction syntax

BEGIN TRANSACTION [Tran1]

BEGIN TRY

--INSERT INTO [Test].[dbo].[T1]
--  ([Title], [AVG])
--VALUES ('Tidd130', 130), ('Tidd230', 230)

--UPDATE [Test].[dbo].[T1]
--  SET [Title] = N'az2' ,[AVG] = 1
--WHERE [dbo].[T1].[Title] = N'az'


SELECT * FROM sys.dm_tran_active_transactions
SELECT * FROM sys.dm_tran_database_transactions
SELECT * FROM sys.dm_tran_session_transactions


COMMIT TRANSACTION [Tran1]

END TRY
BEGIN CATCH
  ROLLBACK TRANSACTION [Tran1]
END CATCH  