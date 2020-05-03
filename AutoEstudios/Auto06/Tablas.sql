/*---------Tablas---------*/

CREATE TABLE Customer (
    CustomerID NUMBER(11) NOT NULL,
    NameStyle VARCHAR(50) NOT NULL,
    Title VARCHAR(8),
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    Suffix_s VARCHAR(10),
    CompanyName VARCHAR(128),
    SalesPerson VARCHAR(256),
    EmailAddress VARCHAR(50),
    Phone VARCHAR(25),
    PasswordHash VARCHAR(128) NOT NULL,
    PasswordSalt VARCHAR(10) NOT NULL
);

CREATE TABLE CustomerAddress (
    CustomerID NUMBER(11) NOT NULL,
    AddressID NUMBER(11) NOT NULL,
    AddressType VARCHAR(50) NOT NULL
);

CREATE TABLE Address (
    AddressID NUMBER(11) NOT NULL,
    AddressLine1 VARCHAR(60),
    AddressLine2 VARCHAR(60),
    City VARCHAR(60),
    StateProvince VARCHAR(60),
    CountyRegion VARCHAR(60),
    PostalCode VARCHAR(60)
);

CREATE TABLE SalesOrderHeader (
    SalesOrderID NUMBER(11) NOT NULL,
    RevisionNumber NUMBER(11) NOT NULL,
    OrderDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ShipDate DATE NOT NULL,
    Status NUMBER(11) NOT NULL,
    OnlineOrderFlag CHAR(1) NOT NULL,
    SalessOrderNumber VARCHAR(15),
    PurchaseOrderNumber VARCHAR(15),
    AccountNumber VARCHAR(25),
    CustomerID NUMBER(11) NOT NULL,
    ShipToAddressID NUMBER(11),
    BillToAddressID NUMBER(11),
    ShipMethod VARCHAR(50) NOT NULL,
    CreditCardApprovalCode VARCHAR(15),
    SubTotal NUMBER(10,2) NOT NULL,
    TaxAmt NUMBER(10,2) NOT NULL,
    Freight NUMBER(10,2) NOT NULL,
    Commnt VARCHAR(255)
);

CREATE TABLE SalesOrderDetail (
    SalesOrderID NUMBER(11) NOT NULL,
    SalesOrderDetailID NUMBER(11) NOT NULL,
    OrderQty NUMBER(11) NOT NULL,
    ProductID NUMBER(11),
    UnitPrice NUMBER(10,2) NOT NULL,
    UnitPriceDiscount NUMBER(10,2) NOT NULL
);

CREATE TABLE Product (
    ProductID NUMBER(11) NOT NULL,
    Name_P VARCHAR(50) NOT NULL,
    ProductNumber VARCHAR(25) NOT NULL,
    Color VARCHAR(15),
    StandardCost NUMBER(10,2) NOT NULL,
    ListPrice NUMBER(10,2) NOT NULL,
    Sze VARCHAR(5),
    Weight NUMBER(8,2),
    ProductCategoryID NUMBER(11),
    ProductModelID NUMBER(11),
    SellStartDate DATE NOT NULL,
    SellEndDate DATE,
    DiscontinuedDate DATE,
    ThumbnailPhotoFileName VARCHAR(50)
);

CREATE TABLE ProductModel (
	ProductModelID NUMBER(11) NOT NULL,
	Name_PM VARCHAR(50) NOT NULL,
	CatalogDescription VARCHAR(255),
	Detalle XMLTYPE NOT NULL
);

CREATE TABLE ProductCategory (
    ProductCategoryID NUMBER(11) NOT NULL,
    ParentProductCategoryID NUMBER(11),
    Name_C VARCHAR(50) NOT NULL
);

CREATE TABLE ProductModelProductDescription (
    ProductModelID NUMBER(11) NOT NULL,
    ProductDescriptionID NUMBER(11) NOT NULL,
    Culture CHAR(6) NOT NULL
);

CREATE TABLE ProductDescription (
    ProductDescriptionID NUMBER(11) NOT NULL,
    Description_PM VARCHAR(255) NOT NULL
);