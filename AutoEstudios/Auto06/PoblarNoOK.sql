/*---------------------------------------------POBLAR_NO_OK---------------------------------------------*/
/*------------Customer------------*/
INSERT INTO Customer(CustomerID, NameStyle, Title, FirstName, MiddleName, LastName, Suffix_S, CompanyName, SalesPerson, EmailAddress, Phone, PasswordHash, PasswordSalt)
VALUES(1, 0, 'Mr.', 'Orlando', 1123123123, 1231, 'NULL', 1231, 12341, 'orlando0@adventure-works.com', '245-555-0173', 'L/Rlwxzp4w7RWmEgXX+/A7cXaePEPcp+KwQhl2fJL7w=', '1KjXYs4=');

/*------------Address------------*/
INSERT INTO Address(AddressID, AddressLine1, AddressLine2, City, StateProvince, CountyRegion, PostalCode)
VALUES(445, '6388 Lake City Way', 'NULL', 1231231, 'British Columbia', 1231312, 'V5A 3A6');

/*------------CustomerAddress------------*/
INSERT INTO CustomerAddress(CustomerID, AddressID, AddressType)
VALUES(1, 'asdasdas', 123123);

/*------------ProductDescription------------*/
INSERT INTO PRODUCTDESCRIPTION(PRODUCTDESCRIPTIONID, DESCRIPTION_PM)
VALUES(3, 1241241358123);

/*------------ProductModel------------*/
INSERT INTO PRODUCTMODEL(ProductModelID, NAME_PM, CATALOGDESCRIPTION)
VALUES('asdasdasdas', 32444441412, 'NULL');

/*------------ProductModelProductDescription------------*/
INSERT INTO ProductModelProductDescription(PRODUCTMODELID, PRODUCTDESCRIPTIONID, Culture)
VALUES(5, 'asdsafalsfadsfasdf', 'en');

/*------------ProductCategory------------*/
INSERT INTO PRODUCTCATEGORY(PRODUCTCATEGORYID, PARENTPRODUCTCATEGORYID, NAME_C)
VALUES(1, null, 12312312);

/*------------Product------------*/
INSERT INTO PRODUCT(ProductID, NAME_P, ProductNumber, Color, StandardCost, ListPrice, Sze, Weight, PRODUCTCATEGORYID, ProductModelID, SellStartDate, SellEndDate, DISCONTINUEDDATE, THUMBNAILPHOTOFILENAME)
VALUES(680, 'HL Road Frame - Black ,  58', 'FR-R92B-58', 'Black', 1059.31, 1431.5, 58, 1016.04, 18, 6, '01-Jun-1998', null, null, null);

/*------------SalesOrderHeader------------*/
INSERT INTO SALESORDERHEADER(SalesOrderID, RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
VALUES(71915, 1, TO_DATE('01-Jun-2004','DD-MM-YY'), TO_DATE('13-Jun-2004','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 71915, 'PO2349143275', '10-4020-000006', 6, 445, 445, 'CARGO TRANSPORT 5', null, 2137.23,170.98,53.43,2361.6403);

/*------------SalesOrderDetail------------*/
INSERT INTO SALESORDERDETAIL(SalesOrderID, SALESORDERDETAILID, OrderQty, ProductID, UnitPrice, UNITPRICEDISCOUNT)
VALUES(71780, '110619', '2', '748', '818.7', 0);
