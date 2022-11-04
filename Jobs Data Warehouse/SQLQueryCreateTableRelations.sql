Use JOB_DW

PRINT '';
PRINT '*** Creating Table DimJob';
GO

Create table DimJob
(
Job_ID int primary key identity,
Job_Type varchar(50),
Job_Title varchar(150)
)
Go

PRINT '';
PRINT '*** Creating Table DimLocation';
GO
Create table DimLocation
(
Location_ID int primary key identity,
Post_Country varchar(5),
Province_State_ALT_Country varchar(50),
City varchar(50)
)
Go

PRINT '';
PRINT '*** Creating Table DimDate';
GO
Create table DimDate
(
Date_ID int primary key identity,
FullDate_ALTKEY date not null,
Year smallint not null,
Month_Name varchar(15),
Month tinyint not null,
Day_Name varchar(15),
Day tinyint not null,


)
Go

PRINT '';
PRINT '*** Creating Table DimCompany';
GO

Create table DimCompany
(
Company_ID int primary key identity,
Industry varchar(50),
Company_Name varchar(100)

)
Go

PRINT '';
PRINT '*** Creating Table FactlessJob';
GO
Create Table FactlessJob
(
Job_ID int not null,
Company_ID int not null,
Location_ID int not null,
Date_ID int not null,

)
Go

PRINT '';
PRINT '*** Add relation between fact table foreign keys to Primary keys of Dimensions';
GO
AlTER TABLE FactlessJob ADD CONSTRAINT
FK_Locations_ID FOREIGN KEY (Location_ID)REFERENCES DimLocation(Location_ID);
AlTER TABLE FactlessJob ADD CONSTRAINT
FK_Companys_ID FOREIGN KEY (Company_ID)REFERENCES DimCompany(Company_ID);
AlTER TABLE FactlessJob ADD CONSTRAINT
FK_Jobs_ID FOREIGN KEY (Job_ID)REFERENCES DimJob(Job_ID);
AlTER TABLE FactlessJob ADD CONSTRAINT
FK_Date_ID FOREIGN KEY (Date_ID)REFERENCES DimDate(Date_ID)