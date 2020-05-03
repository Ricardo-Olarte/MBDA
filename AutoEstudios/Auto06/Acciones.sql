/*----Acciones----*/

/*Regla de negocio Si se elimina un producto las ventas se mantienen con codigo de producto desconocido.*/
ALTER TABLE SalesOrderDetail DROP CONSTRAINT fk_ProductID; 
ALTER TABLE SalesOrderDetail ADD CONSTRAINT fk_ProductID FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE SET NULL;