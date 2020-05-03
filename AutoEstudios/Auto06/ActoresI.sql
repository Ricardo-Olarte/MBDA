CREATE OR REPLACE PACKAGE BODY PA_ADMINISTRADOR IS
  FUNCTION CO_ORdenes RETURN XMLTYPE IS CO_SalesOrderDetail_XML XMLTYPE;
  BEGIN 
    CO_SalesOrderDetail_XML := PC_SalesOrderDetail.CO_SalesOrderDetail;
    RETURN CO_SalesOrderDetail_XML;
  END;
  
  FUNCTION CO_Colores RETURN XMLTYPE IS Colores SYS_REFCURSOR;
  BEGIN 
    Colores := PC_SalesOrderDetail.CO_MColores;
    RETURN Colores;
  END;
  
  FUNCTION CO_Vendidos RETURN XMLTYPE IS Vendidos SYS_REFCURSOR;
  BEGIN 
    Vendidos := PC_SalesOrderDetail.CO_MasVendido;
    RETURN Vendidos;
  END;
END PA_ADMINISTRADOR;


CREATE OR REPLACE PACKAGE BODY PA_CLIENTE IS
  FUNCTION CO_INFORMACION RETURN XMLTYPE IS CO_SalesOrderHeader_XML XMLTYPE;
  BEGIN
    CO_SalesOrderHeader_XML :=  PC_SalesOrderHeader.CO_SalesOrderHeader;
    RETURN CO_SalesOrderHeader_XML;
  END;
END PA_CLIENTE;