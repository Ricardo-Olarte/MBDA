/*Insertar SalesOrderDetail*/
    begin
        PC_SalesOrderDetail.AD_SalesOrderDetail(12312, 4, 712, 0);
        PC_SalesOrderDetail.AD_SalesOrderDetail(45343, 3, 727, 0);
        PC_SalesOrderDetail.AD_SalesOrderDetail(112312, 12, 725, 0);
        PC_SalesOrderDetail.AD_SalesOrderDetail(3453443, 54, 726, 0);
    end;

/*Insertar SalesOrderHeader*/
    begin
        PC_SalesOrderHeader.AD_SalesOrderHeader(1, TO_DATE('13-Jun-2004','DD-MM-YY'), TO_DATE('08-Jun-2004','DD-MM-YY'), 5, '0', 'SO71797', 'PO16501134889', '10-4020-000142', 2, 'CARGO TRANSPORT 5', null, '86222.8072');
    end;
    
/*Modificar SalesOrderHeader*/
    EXECUTE PC_SalesOrderHeader.MO_SalesOrderHeader (49495, 2, TO_DATE('13-Jun-2004','DD-MM-YY'));
