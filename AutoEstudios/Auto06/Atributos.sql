/*----Atributos--Tuplas----*/

/*El valor de descuento máximo es de 10%.*/
ALTER TABLE SalesOrderDetail ADD CONSTRAINT CK_DESCUENTO CHECK (UnitPriceDiscount <= 0.1);