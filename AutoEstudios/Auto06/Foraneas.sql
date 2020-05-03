/*---------Foraneas---------*/
ALTER TABLE CustomerAddress ADD CONSTRAINT fk_CustomerID 
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);

ALTER TABLE CustomerAddress ADD CONSTRAINT fk_AddressID 
FOREIGN KEY (AddressID) REFERENCES Address(AddressID);

ALTER TABLE SalesOrderHeader ADD CONSTRAINT fk_AddressID1 
FOREIGN KEY (BillToAddressID) REFERENCES Address(AddressID);

ALTER TABLE SalesOrderHeader ADD CONSTRAINT fk_AddressID2 
FOREIGN KEY (ShipToAddressID) REFERENCES Address(AddressID);

ALTER TABLE SalesOrderHeader ADD CONSTRAINT fk_CustomerID2 
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);

ALTER TABLE SalesOrderDetail ADD CONSTRAINT fk_SalesOrderID 
FOREIGN KEY (SalesOrderID) REFERENCES SalesOrderHeader(SalesOrderID);

ALTER TABLE SalesOrderDetail ADD CONSTRAINT fk_ProductID 
FOREIGN KEY (ProductID) REFERENCES Product(ProductID);

ALTER TABLE Product ADD CONSTRAINT fk_ProductCategoryID 
FOREIGN KEY (ProductCategoryID) REFERENCES ProductCategory(ProductCategoryID);

ALTER TABLE Product ADD CONSTRAINT fk_ProductModelID 
FOREIGN KEY (ProductModelID) REFERENCES ProductModel(ProductModelID);

ALTER TABLE ProductModelProductDescription ADD CONSTRAINT fk_ProductModelPDID 
FOREIGN KEY (ProductModelID) REFERENCES ProductModel(ProductModelID);

ALTER TABLE ProductModelProductDescription ADD CONSTRAINT fk_ProductDescriptionID 
FOREIGN KEY (ProductDescriptionID) REFERENCES ProductDescription(ProductDescriptionID);
