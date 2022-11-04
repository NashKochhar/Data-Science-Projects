PRINT '';
PRINT '*** Populating Tables, Change Path before running';

USE JOB_DW

BULK INSERT [dbo].[DimJob] FROM 'Enter Full folder path containing DimJob.csv file'
WITH (
 CHECK_CONSTRAINTS,
 --CODEPAGE='ACP',
 DATAFILETYPE='char',
 FIELDTERMINATOR=',',
 ROWTERMINATOR='\n',
 --KEEPIDENTITY,
 TABLOCK
);

BULK INSERT [dbo].[DimLocation] FROM 'Enter Full folder path containing DimLocation.csv file'
WITH (
 CHECK_CONSTRAINTS,
 --CODEPAGE='ACP',
 DATAFILETYPE='char',
 FIELDTERMINATOR=',',
 ROWTERMINATOR='\n',
 --KEEPIDENTITY,
 TABLOCK
);

BULK INSERT [dbo].[DimCompany] FROM 'Enter Full folder path containing DimCompany.csv file'
WITH (
 CHECK_CONSTRAINTS,
 --CODEPAGE='ACP',
 DATAFILETYPE='char',
 FIELDTERMINATOR=',',
 ROWTERMINATOR='\n',
 --KEEPIDENTITY,
 TABLOCK
);


BULK INSERT [dbo].[DimDate] FROM 'Enter Full folder path containing DimDate.csv file'
WITH (
 CHECK_CONSTRAINTS,
 --CODEPAGE='ACP',
 DATAFILETYPE='char',
 FIELDTERMINATOR=',',
 ROWTERMINATOR='\n',
 --KEEPIDENTITY,
 TABLOCK
);

BULK INSERT [dbo].[FactlessJob] FROM 'Enter Full folder path containing FactlessJob.csv file'
WITH (
 CHECK_CONSTRAINTS,
 --CODEPAGE='ACP',
 DATAFILETYPE='char',
 FIELDTERMINATOR=',',
 ROWTERMINATOR='\n',
 --KEEPIDENTITY,
 TABLOCK
);
