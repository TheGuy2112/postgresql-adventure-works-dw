DROP TABLE IF EXISTS DimAccount CASCADE; 

CREATE TABLE DimAccount(
	AccountKey int PRIMARY KEY NOT NULL,
	ParentAccountKey int NULL,
	AccountCodeAlternateKey int NULL,
	ParentAccountCodeAlternateKey int NULL,
	AccountDescription varchar(50) NULL,
	AccountType varchar(50) NULL,
	Operator varchar(50) NULL,
	CustomMembers varchar(300) NULL,
	ValueType varchar(50) NULL,
	CustomMemberOptions varchar(200) NULL
	);
	
DROP TABLE IF EXISTS DimCurrency CASCADE; 
CREATE TABLE DimCurrency(
	CurrencyKey int PRIMARY KEY NOT NULL,
	CurrencyAlternateKey nchar(3) NOT NULL,
	CurrencyName varchar(50) NOT NULL
	);

DROP TABLE IF EXISTS DimCustomer CASCADE; 
CREATE TABLE DimCustomer(
	CustomerKey int PRIMARY KEY NOT NULL,
	GeographyKey int NULL,
	CustomerAlternateKey varchar(15) NOT NULL,
	Title varchar(8) NULL,
	FirstName varchar(50) NULL,
	MiddleName varchar(50) NULL,
	LastName varchar(50) NULL,
	NameStyle INTEGER NULL,
	BirthDate TIMESTAMP NULL,
	MaritalStatus nchar(1) NULL,
	Suffix varchar(10) NULL,
	Gender varchar(1) NULL,
	EmailAddress varchar(50) NULL,
	YearlyIncome numeric NULL,
	TotalChildren INTEGER NULL,
	NumberChildrenAtHome INTEGER NULL,
	EnglishEducation varchar(40) NULL,
	EnglishOccupation varchar(100) NULL,
	HouseOwnerFlag nchar(1) NULL,
	NumberCarsOwned INTEGER NULL,
	AddressLine1 varchar(120) NULL,
	AddressLine2 varchar(120) NULL,
	Phone varchar(20) NULL,
	DateFirstPurchase TIMESTAMP NULL,
	CommuteDistance varchar(15) NULL
	);

DROP TABLE IF EXISTS DimDepartmentGroup CASCADE; 
CREATE TABLE DimDepartmentGroup(
	DepartmentGroupKey int PRIMARY KEY NOT NULL,
	ParentDepartmentGroupKey int NULL,
	DepartmentGroupName varchar(50) NULL
	);
	
DROP TABLE IF EXISTS DimEmployee CASCADE; 
CREATE TABLE DimEmployee(
	EmployeeKey int PRIMARY KEY NOT NULL,
	ParentEmployeeKey int NULL,
	EmployeeNationalIDAlternateKey varchar(15) NULL,
	ParentEmployeeNationalIDAltKey varchar(15) NULL,
	SalesTerritoryKey int NULL,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	MiddleName varchar(50) NULL,
	NameStyle INTEGER NOT NULL,
	Title varchar(50) NULL,
	HireDate INTEGER NULL,
	BirthDate INTEGER NULL,
	LoginID varchar(256) NULL,
	EmailAddress varchar(50) NULL,
	Phone varchar(25) NULL,
	MaritalStatus nchar(1) NULL,
	EmergencyContactName varchar(50) NULL,
	EmergencyContactPhone varchar(25) NULL,
	SalariedFlag INTEGER NULL,
	Gender nchar(1) NULL,
	PayFrequency INTEGER NULL,
	BaseRate numeric NULL,
	VacationHours INTEGER NULL,
	SickLeaveHours INTEGER NULL,
	CurrentFlag INTEGER NOT NULL,
	SalesPersonFlag INTEGER NOT NULL,
	DepartmentName varchar(50) NULL,
	StartDate INTEGER NULL,
	EndDate INTEGER NULL,
	Status varchar(50) NULL
	);
	
DROP TABLE IF EXISTS DimGeography CASCADE; 
CREATE TABLE DimGeography(
	GeographyKey int PRIMARY KEY NOT NULL,
	City varchar(30) NULL,
	StateProvinceCode varchar(3) NULL,
	StateProvinceName varchar(50) NULL,
	CountryRegionCode varchar(3) NULL,
	EnglishCountryRegionName varchar(50) NULL,
	SpanishCountryRegionName varchar(50) NULL,
	FrenchCountryRegionName varchar(50) NULL,
	PostalCode varchar(15) NULL,
	SalesTerritoryKey int NULL);
	
	
DROP TABLE IF EXISTS DimOrganization CASCADE; 
CREATE TABLE DimOrganization(
	OrganizationKey int PRIMARY KEY NOT NULL,
	ParentOrganizationKey int NULL,
	PercentageOfOwnership varchar(16) NULL,
	OrganizationName varchar(50) NULL,
	CurrencyKey int NULL);
	
	
DROP TABLE IF EXISTS DimProduct CASCADE; 
CREATE TABLE DimProduct(
	ProductKey int PRIMARY KEY NOT NULL,
	ProductAlternateKey varchar(25) NULL,
	ProductSubcategoryKey int NULL,
	WeightUnitMeasureCode nchar(3) NULL,
	SizeUnitMeasureCode nchar(3) NULL,
	EnglishProductName varchar(50) NOT NULL,
	StandardCost numeric NULL,
	FinishedGoodsFlag INTEGER NOT NULL,
	Color varchar(15) NOT NULL,
	SafetyStockLevel INTEGER NULL,
	ReorderPoint INTEGER NULL,
	ListPrice decimal(13,2) NULL,
	SizeActual varchar(50) NULL,
	SizeRange varchar(50) NULL,
	Weight float NULL,
	DaysToManufacture int NULL,
	ProductLine nchar(2) NULL,
	DealerPrice numeric NULL,
	Class nchar(2) NULL,
	Style nchar(2) NULL,
	ModelName varchar(50) NULL,
	EnglishDescription varchar(400) NULL,
	StartDate TIMESTAMP NULL,
	EndDate TIMESTAMP NULL,
	Status varchar(7) NULL);

DROP TABLE IF EXISTS DimProductCategory CASCADE; 
CREATE TABLE DimProductCategory(
	ProductCategoryKey int PRIMARY KEY NOT NULL,
	ProductCategoryAlternateKey int NULL,
	EnglishProductCategoryName varchar(50) NOT NULL,
	SpanishProductCategoryName varchar(50) NOT NULL,
	FrenchProductCategoryName varchar(50) NOT NULL);
	
DROP TABLE IF EXISTS DimProductSubcategory CASCADE; 
CREATE TABLE DimProductSubcategory(
	ProductSubcategoryKey int PRIMARY KEY NOT NULL,
	ProductSubcategoryAlternateKey int NULL,
	EnglishProductSubcategoryName varchar(50) NOT NULL,
	SpanishProductSubcategoryName varchar(50) NOT NULL,
	FrenchProductSubcategoryName varchar(50) NOT NULL,
	ProductCategoryKey int NULL);
	
DROP TABLE IF EXISTS DimPromotion CASCADE; 
CREATE TABLE DimPromotion(
	PromotionKey int PRIMARY KEY NOT NULL,
	PromotionAlternateKey int NULL,
	EnglishPromotionName varchar(255) NULL,
	SpanishPromotionName varchar(255) NULL,
	FrenchPromotionName varchar(255) NULL,
	DiscountPct float NULL,
	EnglishPromotionType varchar(50) NULL,
	SpanishPromotionType varchar(50) NULL,
	FrenchPromotionType varchar(50) NULL,
	EnglishPromotionCategory varchar(50) NULL,
	SpanishPromotionCategory varchar(50) NULL,
	FrenchPromotionCategory varchar(50) NULL,
	StartDate INTEGER NOT NULL,
	EndDate INTEGER NULL,
	MinQty int NULL,
	MaxQty int NULL
	);
	
DROP TABLE IF EXISTS DimReseller CASCADE; 
CREATE TABLE DimReseller(
	ResellerKey int PRIMARY KEY NOT NULL,
	GeographyKey int NULL,
	ResellerAlternateKey varchar(15) NULL,
	Phone varchar(25) NULL,
	BusinessType varchar(20) NOT NULL,
	ResellerName varchar(50) NOT NULL,
	NumberEmployees int NULL,
	OrderFrequency char(1) NULL,
	OrderMonth INTEGER NULL,
	FirstOrderYear int NULL,
	LastOrderYear int NULL,
	ProductLine varchar(50) NULL,
	AddressLine1 varchar(60) NULL,
	AddressLine2 varchar(60) NULL,
	AnnualSales numeric NULL,
	BankName varchar(50) NULL,
	MinPaymentType INTEGER NULL,
	MinPaymentAmount numeric NULL,
	AnnualRevenue numeric NULL,
	YearOpened int NULL);
	
DROP TABLE IF EXISTS DimSalesReason CASCADE; 
CREATE TABLE DimSalesReason(
	SalesReasonKey int PRIMARY KEY NOT NULL,
	SalesReasonAlternateKey int NOT NULL,
	SalesReasonName varchar(50) NOT NULL,
	SalesReasonReasonType varchar(50) NOT NULL);
	
DROP TABLE IF EXISTS DimSalesTerritory CASCADE; 
CREATE TABLE DimSalesTerritory(
	SalesTerritoryKey int PRIMARY KEY NOT NULL,
	SalesTerritoryAlternateKey int NULL,
	SalesTerritoryRegion varchar(50) NOT NULL,
	SalesTerritoryCountry varchar(50) NOT NULL,
	SalesTerritoryGroup varchar(50) NULL);
	
DROP TABLE IF EXISTS DimScenario CASCADE; 
CREATE TABLE DimScenario(
	ScenarioKey int PRIMARY KEY NOT NULL,
	ScenarioName varchar(50) NULL
	);
	

DROP TABLE IF EXISTS DimTime CASCADE; 
CREATE TABLE DimTime(
	TimeKey int PRIMARY KEY NOT NULL,
	FullDateAlternateKey TIMESTAMP NULL,
	DayNumberOfWeek INTEGER NULL,
	EnglishDayNameOfWeek varchar(10) NULL,
	SpanishDayNameOfWeek varchar(10) NULL,
	FrenchDayNameOfWeek varchar(10) NULL,
	DayNumberOfMonth INTEGER NULL,
	DayNumberOfYear INTEGER NULL,
	WeekNumberOfYear INTEGER NULL,
	EnglishMonthName varchar(10) NULL,
	SpanishMonthName varchar(10) NULL,
	FrenchMonthName varchar(10) NULL,
	MonthNumberOfYear INTEGER NULL,
	CalendarQuarter INTEGER NULL,
	CalendarYear char(4) NULL,
	CalendarSemester INTEGER NULL,
	FiscalQuarter INTEGER NULL,
	FiscalYear char(4) NULL,
	FiscalSemester INTEGER NULL
	);
 
DROP TABLE IF EXISTS FactCurrencyRate CASCADE; 
CREATE TABLE FactCurrencyRate(
	CurrencyKey int NOT NULL,
	TimeKey int NOT NULL,
	AverageRate float NOT NULL,
	EndOfDayRate float NOT NULL
);
  
	
DROP TABLE IF EXISTS FactFinance CASCADE; 
CREATE TABLE FactFinance(
	TimeKey int NULL,
	OrganizationKey int NULL,
	DepartmentGroupKey int NULL,
	ScenarioKey int NULL,
	AccountKey int NULL,
	Amount float NULL
) ;

DROP TABLE IF EXISTS FactInternetSales CASCADE; 
CREATE TABLE FactInternetSales(
	ProductKey int NOT NULL,
	OrderDateKey int NOT NULL,
	DueDateKey int NOT NULL,
	ShipDateKey int NOT NULL,
	CustomerKey int NOT NULL,
	PromotionKey int NOT NULL,
	CurrencyKey int NOT NULL,
	SalesTerritoryKey int NOT NULL,
	SalesOrderNumber varchar(20) NOT NULL,
	SalesOrderLineNumber INTEGER NOT NULL,
	RevisionNumber INTEGER NULL,
	OrderQuantity INTEGER NULL,
	UnitPrice numeric NULL,
	ExtendedAmount numeric NULL,
	UnitPriceDiscountPct float NULL,
	DiscountAmount float NULL,
	ProductStandardCost numeric NULL,
	TotalProductCost numeric NULL,
	SalesAmount numeric NULL,
	TaxAmt numeric NULL,
	Freight numeric NULL,
	CarrierTrackingNumber varchar(25) NULL,
	CustomerPONumber varchar(25) NULL
	);
--NUMBER zu INTEGER