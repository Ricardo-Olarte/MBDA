/*---------Primarias---------*/
ALTER TABLE Customer ADD CONSTRAINT CustomerID 
PRIMARY KEY (CustomerID);

ALTER TABLE CustomerAddress ADD CONSTRAINT pk_CustADD 
PRIMARY KEY (CustomerID, AddressType);

ALTER TABLE Address ADD CONSTRAINT AddressID 
PRIMARY KEY (AddressID);  

ALTER TABLE SalesOrderHeader ADD CONSTRAINT SalesOrderID 
PRIMARY KEY (SalesOrderID);

ALTER TABLE SalesOrderDetail ADD CONSTRAINT SalesOrderDetailID 
PRIMARY KEY (SalesOrderDetailID); 

ALTER TABLE Product ADD CONSTRAINT ProductID 
PRIMARY KEY (ProductID); 

ALTER TABLE ProductModel ADD CONSTRAINT ProductModelID 
PRIMARY KEY (ProductModelID);

ALTER TABLE ProductCategory ADD CONSTRAINT ProductCategoryID 
PRIMARY KEY (ProductCategoryID);

ALTER TABLE ProductModelProductDescription ADD CONSTRAINT pk_PmodPdes 
PRIMARY KEY (ProductModelID, ProductDescriptionID);

ALTER TABLE ProductDescription ADD CONSTRAINT ProductDescriptionID 
PRIMARY KEY (ProductDescriptionID);