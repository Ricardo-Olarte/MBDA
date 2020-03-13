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
    CatalogDescription VARCHAR(255)
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

/*---------Atributos, Primarias, Únicas, Foraneas---------*/
/*---------Primarias---------*/
ALTER TABLE Customer ADD CONSTRAINT CustomerID PRIMARY KEY (CustomerID);
ALTER TABLE CustomerAddress ADD CONSTRAINT pk_CustADD PRIMARY KEY (CustomerID, AddressType);
ALTER TABLE Address ADD CONSTRAINT AddressID PRIMARY KEY (AddressID);  
ALTER TABLE SalesOrderHeader ADD CONSTRAINT SalesOrderID PRIMARY KEY (SalesOrderID);
ALTER TABLE SalesOrderDetail ADD CONSTRAINT SalesOrderDetailID PRIMARY KEY (SalesOrderDetailID); 
ALTER TABLE Product ADD CONSTRAINT ProductID PRIMARY KEY (ProductID); 
ALTER TABLE ProductModel ADD CONSTRAINT ProductModelID PRIMARY KEY (ProductModelID);
ALTER TABLE ProductCategory ADD CONSTRAINT ProductCategoryID PRIMARY KEY (ProductCategoryID);
ALTER TABLE ProductModelProductDescription ADD CONSTRAINT pk_PmodPdes PRIMARY KEY (ProductModelID, ProductDescriptionID);
ALTER TABLE ProductDescription ADD CONSTRAINT ProductDescriptionID PRIMARY KEY (ProductDescriptionID);

/*---------Foraneas---------*/
ALTER TABLE CustomerAddress ADD CONSTRAINT fk_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
ALTER TABLE CustomerAddress ADD CONSTRAINT fk_AddressID FOREIGN KEY (AddressID) REFERENCES Address(AddressID);
ALTER TABLE SalesOrderHeader ADD CONSTRAINT fk_AddressID1 FOREIGN KEY (BillToAddressID) REFERENCES Address(AddressID);
ALTER TABLE SalesOrderHeader ADD CONSTRAINT fk_AddressID2 FOREIGN KEY (ShipToAddressID) REFERENCES Address(AddressID);
ALTER TABLE SalesOrderHeader ADD CONSTRAINT fk_CustomerID2 FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
ALTER TABLE SalesOrderDetail ADD CONSTRAINT fk_SalesOrderID FOREIGN KEY (SalesOrderID) REFERENCES SalesOrderHeader(SalesOrderID);
ALTER TABLE SalesOrderDetail ADD CONSTRAINT fk_ProductID FOREIGN KEY (ProductID) REFERENCES Product(ProductID);
ALTER TABLE Product ADD CONSTRAINT fk_ProductCategoryID FOREIGN KEY (ProductCategoryID) REFERENCES ProductCategory(ProductCategoryID);
ALTER TABLE Product ADD CONSTRAINT fk_ProductModelID FOREIGN KEY (ProductModelID) REFERENCES ProductModel(ProductModelID);
ALTER TABLE ProductModelProductDescription ADD CONSTRAINT fk_ProductModelPDID FOREIGN KEY (ProductModelID) REFERENCES ProductModel(ProductModelID);
ALTER TABLE ProductModelProductDescription ADD CONSTRAINT fk_ProductDescriptionID FOREIGN KEY (ProductDescriptionID) REFERENCES ProductDescription(ProductDescriptionID);
/*POBLAROK*/
/*Customer*/
INSERT INTO Customer(CustomerID, NameStyle, Title, FirstName, MiddleName, LastName, Suffix_S, CompanyName, SalesPerson, EmailAddress, Phone, PasswordHash, PasswordSalt)
VALUES(1, 0, 'Mr.', 'Orlando', 'N.', 'Gee', 'NULL', 'A Bike Store', 'adventure-workspamela0', 'orlando0@adventure-works.com', '245-555-0173', 'L/Rlwxzp4w7RWmEgXX+/A7cXaePEPcp+KwQhl2fJL7w=', '1KjXYs4=');
INSERT INTO Customer(CustomerID, NameStyle, Title, FirstName, MiddleName, LastName, Suffix_S, CompanyName, SalesPerson, EmailAddress, Phone, PasswordHash, PasswordSalt)
VALUES(2, 0, 'Mr.', 'Keith', 'NULL', 'Harris', 'NULL', 'Progressive Sports', 'adventure-worksdavid8', 'keith0@adventure-works.com', '170-555-0127', 'YPdtRdvqeAhj6wyxEsFdshBDNXxkCXn+CRgbvJItknw=', 'fs1ZGhY=');
/*Address*/
INSERT INTO Address(AddressID, AddressLine1, AddressLine2, City, StateProvince, CountyRegion, PostalCode)
VALUES(1, '6388 Lake City Way', '8713 Yosemite Ct.', 'Burnaby', 'British Columbia', 'Canada', 'V5A 3A6');
INSERT INTO Address(AddressID, AddressLine1, AddressLine2, City, StateProvince, CountyRegion, PostalCode)
VALUES(2, '8713 Yosemite Ct.', '1318 Lasalle Street', 'Bothell', 'Washington', 'United States', '98011');
INSERT INTO Address(AddressID, AddressLine1, AddressLine2, City, StateProvince, CountyRegion, PostalCode)
VALUES(3, '1318 Lasalle Street', 'NULL', 'Bothell', 'Washington', 'United States', '98011');
INSERT INTO Address(AddressID, AddressLine1, AddressLine2, City, StateProvince, CountyRegion, PostalCode)
VALUES(4, '9178 Jumping St.', 'NULL', 'Dallas', 'Texas', 'United States', '75201');
/*CustomerAddress*/
INSERT INTO CustomerAddress(CustomerID, AddressID, AddressType) VALUES(1, 1, 'Main Office');
INSERT INTO CustomerAddress(CustomerID, AddressID, AddressType) VALUES(1, 2, 'Shipping');
INSERT INTO CustomerAddress(CustomerID, AddressID, AddressType) VALUES(2, 3, 'Main Office');
INSERT INTO CustomerAddress(CustomerID, AddressID, AddressType) VALUES(2, 4, 'Shipping');
/*PRODUCTCATEGORY*/
INSERT INTO PRODUCTCATEGORY(PRODUCTCATEGORYID, PARENTPRODUCTCATEGORYID, NAME_C) VALUES(1, null, 'Bikes');
INSERT INTO PRODUCTCATEGORY(PRODUCTCATEGORYID, PARENTPRODUCTCATEGORYID, NAME_C) VALUES(2, null, 'Components');
/*PRODUCTMODEL*/
INSERT INTO PRODUCTMODEL(ProductModelID, NAME_PM, CATALOGDESCRIPTION) VALUES(1, 'Classic Vest', 'NULL');
INSERT INTO PRODUCTMODEL(ProductModelID, NAME_PM, CATALOGDESCRIPTION) VALUES(2, 'Cycling Cap', 'NULL');
/*PRODUCT*/
INSERT INTO PRODUCT(ProductID, NAME_P, ProductNumber, Color, StandardCost, ListPrice, Sze, Weight, PRODUCTCATEGORYID, ProductModelID, SellStartDate, SellEndDate, DISCONTINUEDDATE, THUMBNAILPHOTOFILENAME)
VALUES(1, 'HL Road Frame - Black ,  58', 'FR-R92B-58', 'Black', 1059.31, 1431.5, 58, 1016.04, 1, 2, TO_DATE('01-Jun-1998','DD-MM-YYYY'), null, null, null);
INSERT INTO PRODUCT(ProductID, NAME_P, ProductNumber, Color, StandardCost, ListPrice, Sze, Weight, PRODUCTCATEGORYID, ProductModelID, SellStartDate, SellEndDate, DISCONTINUEDDATE, THUMBNAILPHOTOFILENAME)
VALUES(2, 'HL Road Frame - Red, 58', 'FR-R92R-58', 'Red', 1059.31, 1431.5, 58, 1016.04, 1, 2, TO_DATE('01-Jun-1998','DD-MM-YY'), null, null, null);
INSERT INTO PRODUCT(ProductID, NAME_P, ProductNumber, Color, StandardCost, ListPrice, Sze, Weight, PRODUCTCATEGORYID, ProductModelID, SellStartDate, SellEndDate, DISCONTINUEDDATE, THUMBNAILPHOTOFILENAME)
VALUES(3, 'HL Road Frame - Blue, 58', 'FR-R92BB-58', 'Red', 1059.31, 1431.5, 58, 1016.04, 1, 2, TO_DATE('01-Jun-1998','DD-MM-YY'), null, TO_DATE('01-Jun-2022','DD-MM-YY'), null);

/*SALESORDERHEADER*/
INSERT INTO SALESORDERHEADER(SalesOrderID, RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
VALUES(1, 1, TO_DATE('01-Jun-2004','DD-MM-YY'), TO_DATE('13-Jun-2004','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71915', 'PO2349143275', '10-4020-000006', 1, 2, 1, 'CARGO TRANSPORT 5', null, 2137.23,170.98,53.43,2361.6403);
INSERT INTO SALESORDERHEADER(SalesOrderID, RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
VALUES(2, 1, TO_DATE('01-Jun-2004','DD-MM-YY'), TO_DATE('13-Jun-2004','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, 4, 3, 'CARGO TRANSPORT 5', null, 88812.86,7105.03,2220.32,98138.2131);

/*XPoblar*/
DELETE FROM SalesOrderDetail;
DELETE FROM SalesOrderHeader;
DELETE FROM Product;
DELETE FROM ProductCategory;
DELETE FROM ProductModelProductDescription;
DELETE FROM ProductModel;
DELETE FROM ProductDescription;
DELETE FROM CustomerAddress;
DELETE FROM Address;
DELETE FROM Customer;

/*XTablas*/
DROP TABLE SalesOrderDetail;
DROP TABLE SalesOrderHeader;
DROP TABLE Product;
DROP TABLE ProductCategory;
DROP TABLE ProductModelProductDescription;
DROP TABLE ProductModel;
DROP TABLE ProductDescription;
DROP TABLE CustomerAddress;
DROP TABLE Address;
DROP TABLE Customer;

/*---------AUTOESTUDIO4---------*/

/*--------Adicionando Restricciones declarativas--------*/

/*----Atributos--Tuplas----*/

/*El valor de descuento máximo es de 10%.*/
ALTER TABLE SalesOrderDetail ADD CONSTRAINT CK_DESCUENTO CHECK (UnitPriceDiscount <= 0.1);

/*----AtributosOK----*/
INSERT INTO SALESORDERDETAIL(SalesOrderID, SALESORDERDETAILID, OrderQty, ProductID, UnitPrice, UNITPRICEDISCOUNT)
VALUES(1, 1, 352, 1, 818.7, 0.03);
INSERT INTO SALESORDERDETAIL(SalesOrderID, SALESORDERDETAILID, OrderQty, ProductID, UnitPrice, UNITPRICEDISCOUNT)
VALUES(2, 2, 482, 2, 809.76, 0.05);

/*----AtributosNoOK----*/
/*Se valida que no se pudan poner descuentos superiores a 0.1 que seria equivalente a 10%
 Poniendo como valores un descuento del 0.2(20%) y uno del 0.5(50%)
 */
INSERT INTO SALESORDERDETAIL(SalesOrderID, SALESORDERDETAILID, OrderQty, ProductID, UnitPrice, UNITPRICEDISCOUNT)
VALUES(3, 1, 352, 1, 818.7, 0.2);
INSERT INTO SALESORDERDETAIL(SalesOrderID, SALESORDERDETAILID, OrderQty, ProductID, UnitPrice, UNITPRICEDISCOUNT)
VALUES(4, 2, 482, 2, 809.76, 0.5);

/*Adicionando Restricciones declarativas*/

/*----Acciones----*/

/*Regla de negocio Si se elimina un producto las ventas se mantienen con codigo de producto desconocido.*/
ALTER TABLE SalesOrderDetail DROP CONSTRAINT fk_ProductID; 
ALTER TABLE SalesOrderDetail ADD CONSTRAINT fk_ProductID FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE SET NULL;

/*----AccionesO----K*/
DELETE FROM Product WHERE ProductID = 2;
SELECT * FROM SalesOrderDetail;

/*--------Adicionando disparadores--------*/
/*Disparadores*/

/*El número de la orden, la fecha de orden, las direcciones de cobro y envío, el subtotal, el valor de imputestos y el valor de envío se generan automáticamente. */
CREATE OR REPLACE TRIGGER SalesOrderHeaderAuto
BEFORE INSERT ON SalesOrderHeader
FOR EACH ROW
DECLARE
    N_Orden NUMBER;
    Dir_Cobro NUMBER;
    Dir_Envio NUMBER;
    Sub_Total NUMBER(10,2);
BEGIN
SELECT COUNT(*)+1 INTO N_Orden FROM SalesOrderHeader; :new.SalesOrderID := N_Orden;
:new.OrderDate := SYSDATE();
SELECT DISTINCT(CustomerAddress.AddressID)  INTO Dir_Cobro
       FROM CustomerAddress, Customer, SalesOrderHeader
       WHERE CustomerAddress.CustomerID = Customer.CustomerID AND Customer.CustomerID = SalesOrderHeader.CustomerID AND Customer.CustomerID = :new.CustomerID
             AND CustomerAddress.AddressType = 'Main Office'; :new.BillToAddressID := Dir_Cobro;
             
SELECT DISTINCT(CustomerAddress.AddressID)  INTO Dir_envio
       FROM CustomerAddress, Customer, SalesOrderHeader
       WHERE CustomerAddress.CustomerID = Customer.CustomerID AND Customer.CustomerID = SalesOrderHeader.CustomerID AND Customer.CustomerID = :new.CustomerID
             AND CustomerAddress.AddressType = 'Shipping'; :new.BillToAddressID := Dir_envio;
             
SELECT sum(SalesOrderDetail.OrderQty*SalesOrderDetail.UnitPrice) INTO Sub_Total
       FROM SalesOrderHeader, SalesOrderDetail
       WHERE SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID; :new.SubTotal := Sub_Total;
       
:new.TaxAmt := 124;
:new.Freight := 75;
             
END SalesOrderHeaderAuto;


/*La dirección de cobro es la oficina principal del cliente. */
CREATE OR REPLACE TRIGGER SalesOrderHeaderDirCobro
BEFORE INSERT ON SalesOrderHeader
FOR EACH ROW
DECLARE
Dir_Cobro NUMBER;
BEGIN
SELECT DISTINCT(CustomerAddress.AddressID)  INTO Dir_Cobro
       FROM CustomerAddress, Customer, SalesOrderHeader
       WHERE CustomerAddress.CustomerID = Customer.CustomerID AND Customer.CustomerID = SalesOrderHeader.CustomerID AND Customer.CustomerID = :new.CustomerID
             AND CustomerAddress.AddressType = 'Main Office';
    IF Dir_Cobro <> :new.BillToAddressID  THEN
      :new.BillToAddressID := Dir_Cobro;
    END IF;
END SalesOrderHeaderDirCobro;

/*Si el cliente no tiene dirección de envío se envía también a la oficina principal.*/
CREATE OR REPLACE TRIGGER SalesOrderHeaderDirEnvio
BEFORE INSERT ON SalesOrderHeader
FOR EACH ROW
DECLARE
Dir_Envio NUMBER;
BEGIN
SELECT DISTINCT(CustomerAddress.AddressID)  INTO Dir_Envio
       FROM CustomerAddress, Customer, SalesOrderHeader
       WHERE CustomerAddress.CustomerID = Customer.CustomerID AND Customer.CustomerID = SalesOrderHeader.CustomerID AND Customer.CustomerID = :new.CustomerID
             AND CustomerAddress.AddressType = 'Main Office';
    IF :new.ShipToAddressID  IS NULL THEN
      :new.ShipToAddressID := Dir_Envio;
    END IF;
END SalesOrderHeaderDirEnvio;

/*Si no se indica el porcentaje de impuestos se asume un 12.5 %.*/
CREATE OR REPLACE TRIGGER Impuestos
BEFORE INSERT ON SalesOrderHeader
FOR EACH ROW
DECLARE
BEGIN
    IF :new.TaxAmt  IS NULL THEN
        :new.TaxAmt := :new.SubTotal*0.125;
    END IF;
END SalesOrderHeaderDirEnvio;

/*El número del detalle de venta y el precio unitario(precio de lista) se generan automáticamente. */
CREATE OR REPLACE TRIGGER SalesOrderDetailAuto
BEFORE INSERT ON SalesOrderDetail
FOR EACH ROW
DECLARE
    N_OrdenDetalle NUMBER;
    Unit_Price NUMBER;
BEGIN
SELECT COUNT(*)+1 INTO N_OrdenDetalle FROM SalesOrderDetail; :new.SalesOrderDetailID := N_OrdenDetalle;
SELECT ListPrice  INTO Unit_Price
       FROM SalesOrderDetail, Product
       WHERE SalesOrderDetail.ProductID = Product.ProductID AND SalesOrderDetail.ProductID = :new.ProductID; :new.UnitPrice := Unit_Price;
END SalesOrderDetailAuto;

/*Si no se indica nada, se asume que el descuento es 0.*/
CREATE OR REPLACE TRIGGER SalesOrderDetailDis
BEFORE INSERT ON SalesOrderDetail
FOR EACH ROW
BEGIN
:new.UnitPriceDiscount := 0;
END SalesOrderDetailDis;

/*Las facturas no se pueden eliminar*/
CREATE OR REPLACE TRIGGER SalesOrderDel
BEFORE DELETE ON SalesOrderHeader
FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20004,'No se puede eliminar');
END;

/*Los únicos datos que se pueden modificar son el valor del flete.(Freight) la fecha de envío.*/
CREATE OR REPLACE TRIGGER Up_SaOrHeader
BEFORE UPDATE ON SalesOrderHeader
FOR EACH ROW
BEGIN
    IF :new.SalesOrderID <> :old.SalesOrderID or :new.RevisionNumber<> :old.RevisionNumber or :new.OrderDate<>:old.OrderDate or  :new.DueDate<> :old.DueDate or
        :new.OnlineOrderFlag<> :old.OnlineOrderFlag or :new.SalessOrderNumber<>:old.SalessOrderNumber or  :new.PurchaseOrderNumber<> :old.PurchaseOrderNumber or
        :new.AccountNumber <> :old.AccountNumber or :new.CustomerID<> :old.CustomerID or :new.ShipToAddressID<>:old.ShipToAddressID or  :new.BillToAddressID<> :old.BillToAddressID or
        :new.ShipMethod <> :old.ShipMethod or :new.CreditCardApprovalCode<> :old.CreditCardApprovalCode or :new.SubTotal<>:old.SubTotal or  :new.TaxAmt<> :old.TaxAmt or  :new.Commnt<> :old.Commnt
    THEN
    :new.SalesOrderID:= :old.SalesOrderID; 
    :new.RevisionNumber:= :old.RevisionNumber;
    :new.OrderDate:= :old.OrderDate;
    :new.DueDate:= :old.DueDate;
    :new.OnlineOrderFlag:= :old.OnlineOrderFlag;
    :new.SalessOrderNumber:= :old.SalessOrderNumber;
    :new.PurchaseOrderNumber:= :old.PurchaseOrderNumber;
    :new.AccountNumber:= :old.AccountNumber; 
    :new.CustomerID:= :old.CustomerID;
    :new.ShipToAddressID:= :old.ShipToAddressID;
    :new.BillToAddressID:= :old.BillToAddressID;
    :new.ShipMethod:= :old.ShipMethod; 
    :new.CreditCardApprovalCode:= :old.CreditCardApprovalCode;
    :new.SubTotal:= :old.SubTotal;
    :new.TaxAmt:= :old.TaxAmt;
    :new.Commnt:= :old.Commnt;
  END IF; 
END;

/*xDisparadores*/
DROP TRIGGER SalesOrderHeaderAuto;
DROP TRIGGER SalesOrderHeaderDirCobro;
DROP TRIGGER SalesOrderHeaderDirEnvio;
DROP TRIGGER Impuestos;
DROP TRIGGER SalesOrderDetailAuto;
DROP TRIGGER SalesOrderDetailDis;
DROP TRIGGER SalesOrderDel;
DROP TRIGGER Up_SaOrHeader;

/*DisparadoresOK*/

    /*SalesOrderHeaderAuto*/
    INSERT INTO SALESORDERHEADER(RevisionNumber, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, ShipMethod, CREDITCARDAPPROVALCODE, Commnt)
    VALUES(3, TO_DATE('13-Jun-2004','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71915', 'PO2349143275', '10-4020-000006', 1, 'CARGO TRANSPORT 5', null,2361.6403);
    
    INSERT INTO SALESORDERHEADER(RevisionNumber, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, ShipMethod, CREDITCARDAPPROVALCODE, Commnt)
    VALUES(4, TO_DATE('13-Jun-2014','DD-MM-YY'), TO_DATE('08-Jun-2014','DD-MM-YY'), 5, 0, 'SO71915', 'PO2349143275', '10-4020-000006', 1, 'AERO TRANSPORT 5', null,2261.6301);

    INSERT INTO SALESORDERHEADER(RevisionNumber, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, ShipMethod, CREDITCARDAPPROVALCODE, Commnt)
    VALUES(5, TO_DATE('23-Jun-2020','DD-MM-YY'), TO_DATE('08-Sep-2021','DD-MM-YY'), 5, 0, 'SO71915', 'PO2349143275', '10-4020-000006', 1, 'AERO TRANSPORT 9', null,1233.1237);


    /*SalesOrderHeaderDirCobro*/
    INSERT INTO SALESORDERHEADER(RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
    VALUES(6, TO_DATE('12-Jun-2014','DD-MM-YY'), TO_DATE('13-Jun-2014','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, 4, 4, 'CARGO TRANSPORT 5', null, 88812.86,7105.03,2220.32,98138.2131);
    
    INSERT INTO SALESORDERHEADER(RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
    VALUES(7, TO_DATE('01-Jun-2024','DD-MM-YY'), TO_DATE('30-Jun-2034','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, 4, 4, 'CARGO TRANSPORT 5', null, 934.86,643.03,2220.32,98138.2131);
    
    INSERT INTO SALESORDERHEADER(RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
    VALUES(8, TO_DATE('01-Jun-2014','DD-MM-YY'), TO_DATE('23-Jun-2016','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, 4, 4, 'CARGO TRANSPORT 5', null, 1231.86,7643.03,2220.32,98138.2131);
    
    
    /*SalesOrderHeaderDirEnvio*/          
    INSERT INTO SALESORDERHEADER(RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
    VALUES(9, TO_DATE('01-Jun-2019','DD-MM-YY'), TO_DATE('30-Jun-2019','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, null, 3, 'CARGO TRANSPORT 5', null, 88812.86,7105.03,2220.32,98138.2131);
    
    INSERT INTO SALESORDERHEADER(RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
    VALUES(10, TO_DATE('01-Oct-2020','DD-MM-YY'), TO_DATE('13-Sep-2020','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, null, 3, 'CARGO TRANSPORT 5', null, 88812.86,7105.03,2220.32,98138.2131);
    
    INSERT INTO SALESORDERHEADER(RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
    VALUES(11, TO_DATE('01-Sep-2014','DD-MM-YY'), TO_DATE('23-Jun-2014','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, null, 3, 'CARGO TRANSPORT 5', null, 88812.86,7105.03,2220.32,98138.2131);
    
    /*Impuestos*/
    INSERT INTO SALESORDERHEADER(RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
    VALUES(1, TO_DATE('19-Jun-2014','DD-MM-YY'), TO_DATE('13-Sep-2020','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, 4, 3, 'CARGO TRANSPORT 5', null, 88812.86,null,2220.32,2382.2131);

    INSERT INTO SALESORDERHEADER(RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
    VALUES(1, TO_DATE('25-Jun-2018','DD-MM-YY'), TO_DATE('13-Sep-2020','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, 4, 3, 'AERO TRANSPORT 5', null, 88812.86,null,2220.32,1241.2131);

    INSERT INTO SALESORDERHEADER(RevisionNumber, OrderDate, DueDate, ShipDate, Status, ONLINEORDERFLAG, SALESSORDERNUMBER, PURCHASEORDERNUMBER, AccountNumber, CustomerID, SHIPTOADDRESSID, BILLTOADDRESSID, ShipMethod, CREDITCARDAPPROVALCODE, SubTotal, TaxAmt, Freight, Commnt)
    VALUES(1, TO_DATE('30-Jun-2020','DD-MM-YY'), TO_DATE('13-Sep-2020','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, 0, 'SO71938', 'PO8468183315', '10-4020-000016', 2, 4, 3, 'CARGO TRANSPORT 12', null, 88812.86,null,2220.32,98138.2131);

    /*SalesOrderDetailAuto*/
    INSERT INTO SALESORDERDETAIL(SalesOrderID, OrderQty, ProductID, UNITPRICEDISCOUNT)
    VALUES(1, 100, 1, 0.1);
    
    /*SalesOrderDel*/
    DELETE FROM SalesOrderHeader WHERE SalesOrderID = 1;

    /*Up_SaOrHeader*/
    UPDATE SalesOrderHeader SET Freight= 458 WHERE SalesOrderID= 2;
    