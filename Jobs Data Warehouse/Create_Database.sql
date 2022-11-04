PRINT '';
PRINT '*** Dropping Database';
GO
IF EXISTS (SELECT [name] FROM [master].[sys].[databases] WHERE [name] = N'JOB_DW')
DROP DATABASE JOB_DW;
GO
PRINT '';
PRINT '*** Creating Database';
GO
Create database JOB_DW
Go
Use JOB_DW
Go