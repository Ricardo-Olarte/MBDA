CREATE OR REPLACE PACKAGE PC_SalesOrderDetail IS
    PROCEDURE AD_SalesOrderDetail(xSalesOrderID IN NUMBER, xOrderQty  IN NUMBER, xProductID IN NUMBER, xUnitPriceDiscount IN NUMBER);
    FUNCTION CO_SalesOrderDetail RETURN XMLTYPE;
    FUNCTION CO_MasVendido RETURN SYS_REFCURSOR;
    FUNCTION CO_MColores RETURN SYS_REFCURSOR;
END PC_SalesOrderDetail;
/
CREATE OR REPLACE PACKAGE PC_SalesOrderHeader IS
    PROCEDURE AD_SalesOrderHeader(xRevisionNumber IN NUMBER, xDueDate IN DATE, xShipDate IN DATE, xStatus IN NUMBER, xOnlineOrderFlag IN CHAR, xSalessOrderNumber IN VARCHAR, xPurchaseOrderNumber IN VARCHAR, xAccountNumber IN VARCHAR, xCustomerID IN NUMBER, xShipMethod IN VARCHAR, xCreditCardApprovalCode IN VARCHAR, xCommnt IN VARCHAR);
    PROCEDURE MO_SalesOrderHeader(xSalesOrderID IN NUMBER, xFreight IN NUMBER, xShipDate IN DATE);
    PROCEDURE EL_SalesOrderHeader(xSalesOrderID IN NUMBER);
    FUNCTION CO_SalesOrderHeader RETURN XMLTYPE;
END PC_SalesOrderHeader;