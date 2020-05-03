/*Disparadores*/
/*AD_SalesOrderDetail*/
CREATE OR REPLACE TRIGGER AD_SalesOrderDetail
BEFORE INSERT ON SalesOrderDetail
FOR EACH ROW
DECLARE
    N_OrdenDetalle NUMBER;
    Unit_Price NUMBER(38);
BEGIN
    SELECT COUNT(*)+1 INTO N_OrdenDetalle FROM SalesOrderDetail; :new.SalesOrderDetailID := N_OrdenDetalle;
    
    SELECT ListPrice  INTO Unit_Price
           FROM SalesOrderDetail, Product
           WHERE SalesOrderDetail.ProductID = Product.ProductID AND SalesOrderDetail.ProductID = :new.ProductID
           GROUP BY ListPrice; :new.UnitPrice := Unit_Price;
           
    IF :new.UnitPriceDiscount IS NULL THEN
       :new.UnitPriceDiscount := 0;
    END IF;
    
END AD_SalesOrderDetail;
/
/*AD_SalesOrderHeaderAuto*/
CREATE OR REPLACE TRIGGER AD_SalesOrderHeader
BEFORE INSERT ON SalesOrderHeader
FOR EACH ROW
DECLARE
    N_Orden NUMBER;
    Dir_Cobro NUMBER;
    Dir_Envio NUMBER;
    Sub_Total NUMBER(10,2);
    Dir_Cobro2 NUMBER;
    Dir_Envio2 NUMBER;
BEGIN
    SELECT COUNT(*)+1 INTO N_Orden FROM SalesOrderHeader; :new.SalesOrderID := N_Orden;
    :new.OrderDate := SYSDATE();
    SELECT DISTINCT(CustomerAddress.AddressID)  INTO Dir_Cobro
           FROM CustomerAddress, Customer, SalesOrderHeader
           WHERE CustomerAddress.CustomerID = Customer.CustomerID AND Customer.CustomerID = SalesOrderHeader.CustomerID AND Customer.CustomerID = :new.CustomerID
                 AND CustomerAddress.AddressType = 'Main Office'; :new.BillToAddressID := Dir_Cobro;
    
    IF Dir_Cobro IS NULL THEN
        :new.BillToAddressID := 448;
    END IF;
    
    SELECT DISTINCT(CustomerAddress.AddressID)  INTO Dir_envio
           FROM CustomerAddress, Customer, SalesOrderHeader
           WHERE CustomerAddress.CustomerID = Customer.CustomerID AND Customer.CustomerID = SalesOrderHeader.CustomerID AND Customer.CustomerID = :new.CustomerID
                 AND CustomerAddress.AddressType = 'Shipping'; 
                 
    IF Dir_envio IS NULL THEN
        :new.ShipToAddressID := 297;
    END IF;
    
    :new.ShipToAddressID := Dir_envio;
                 
    SELECT sum(SalesOrderDetail.OrderQty*SalesOrderDetail.UnitPrice) INTO Sub_Total
           FROM SalesOrderHeader, SalesOrderDetail
           WHERE SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID; :new.SubTotal := Sub_Total;
           
    :new.Freight := 75;
    
    SELECT DISTINCT(CustomerAddress.AddressID)  INTO Dir_Cobro2
       FROM CustomerAddress, Customer, SalesOrderHeader
       WHERE CustomerAddress.CustomerID = Customer.CustomerID AND Customer.CustomerID = SalesOrderHeader.CustomerID AND Customer.CustomerID = :new.CustomerID
             AND CustomerAddress.AddressType = 'Main Office';
    IF Dir_Cobro2 <> :new.BillToAddressID  THEN
      :new.BillToAddressID := Dir_Cobro;
    END IF;
    
    SELECT DISTINCT(CustomerAddress.AddressID)  INTO Dir_Envio2
       FROM CustomerAddress, Customer, SalesOrderHeader
       WHERE CustomerAddress.CustomerID = Customer.CustomerID AND Customer.CustomerID = SalesOrderHeader.CustomerID AND Customer.CustomerID = :new.CustomerID
             AND CustomerAddress.AddressType = 'Main Office';
    IF :new.ShipToAddressID  IS NULL THEN
      :new.ShipToAddressID := Dir_Envio2;
    END IF;
    
    IF :new.TaxAmt  IS NULL THEN
        :new.TaxAmt := :new.SubTotal*0.125;
    END IF;
             
END AD_SalesOrderHeader;
/
/*MO_SalesOrderHeader*/
CREATE OR REPLACE TRIGGER MO_SalesOrderHeader
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
END MO_SalesOrderHeader;
/

/*EL_SalesOrderHeader*/
CREATE OR REPLACE TRIGGER EL_SalesOrderHeader
BEFORE DELETE ON SalesOrderHeader
FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20004,'No se puede eliminar');
END EL_SalesOrderHeader;
