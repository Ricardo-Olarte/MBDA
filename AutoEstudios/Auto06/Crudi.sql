CREATE OR REPLACE PACKAGE BODY PC_SalesOrderDetail IS
   PROCEDURE AD_SalesOrderDetail(xSalesOrderID IN NUMBER, xOrderQty  IN NUMBER, xProductID IN NUMBER, xUnitPriceDiscount IN NUMBER) IS
  BEGIN
    INSERT INTO SalesOrderDetail(SalesOrderID, OrderQty, ProductID, UnitPriceDiscount) VALUES (xSalesOrderID,xOrderQty,xProductID,xUnitPriceDiscount);
    COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK;
      raise_application_error(-20101,'Error al Insertar en SalesOrderDetail');
  END;
  FUNCTION CO_SalesOrderDetail RETURN XMLTYPE IS CO_XML XMLTYPE;
  BEGIN
    CO_XML := dbms_xmlgen.getxmltype(
      'SELECT * FROM SalesOrderDetail');
    RETURN CO_XML;
  END;
  FUNCTION CO_MasVendido RETURN SYS_REFCURSOR IS MasVendido SYS_REFCURSOR;
  BEGIN
    OPEN MasVendido FOR 
      SELECT * FROM HARD14;
    RETURN MasVendido;
  END;
  FUNCTION CO_MColores RETURN SYS_REFCURSOR IS Colores SYS_REFCURSOR;
  BEGIN
    OPEN Colores FOR
       SELECT T.Name_PM
			FROM  ProductModel P, XMLTABLE('count(/detalle/colores/colore)'
									passing P.detalles
								    columns Name_PM NUMBER PATH  '@precio',
                                            ProductMOdelID varchar(100) PATH  '@nombre') T;
    RETURN Colores;
  END;
END PC_SalesOrderDetail;
/
CREATE OR REPLACE PACKAGE BODY PC_SalesOrderHeader IS
  PROCEDURE AD_SalesOrderHeader(xRevisionNumber IN NUMBER, xDueDate IN DATE, xShipDate IN DATE, xStatus IN NUMBER, xOnlineOrderFlag IN CHAR, xSalessOrderNumber IN VARCHAR, xPurchaseOrderNumber IN VARCHAR, xAccountNumber IN VARCHAR, xCustomerID IN NUMBER, xShipMethod IN VARCHAR, xCreditCardApprovalCode IN VARCHAR, xCommnt IN VARCHAR) IS
  BEGIN
    INSERT INTO SalesOrderHeader(RevisionNumber, DueDate, ShipDate, Status, OnlineOrderFlag, SalessOrderNumber, PurchaseOrderNumber, AccountNumber, CustomerID, ShipMethod, CreditCardApprovalCode, Commnt) VALUES (xRevisionNumber, xDueDate, xShipDate, xStatus, xOnlineOrderFlag, xSalessOrderNumber, xPurchaseOrderNumber, xAccountNumber, xCustomerID, xShipMethod, xCreditCardApprovalCode, xCommnt);
    COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK;
      raise_application_error(-20101,'Error al Insertar en SalesOrderHeader');
  END;
  
  PROCEDURE MO_SalesOrderHeader(xSalesOrderID IN NUMBER, xFreight IN NUMBER, xShipDate IN DATE) IS
  BEGIN 
    UPDATE  SalesOrderHeader SET Freight= xFreight, ShipDate= xShipDate WHERE SalesOrderID= xSalesOrderID;
    COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK;
      raise_application_error(-20103,'Error al modificar en SalesOrderHeader');
  END;
  
  PROCEDURE EL_SalesOrderHeader(xSalesOrderID IN NUMBER) IS
  BEGIN
    DELETE FROM SalesOrderHeader WHERE (SalesOrderID=xSalesOrderID);
    COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK;
      raise_application_error(-20102,'Error al eliminar en SalesOrderHeader');
  END;
  
  FUNCTION CO_SalesOrderHeader RETURN XMLTYPE IS CO_XML XMLTYPE;
  BEGIN
    CO_XML := dbms_xmlgen.getxmltype(
      'SELECT * FROM SalesOrderHeader');
    RETURN CO_XML;
  END;
END PC_SalesOrderHeader;