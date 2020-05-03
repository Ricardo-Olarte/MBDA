/*---------------------------------------------Consultas---------------------------------------------*/

/* 1. Show the CompanyName for James D. Kramer */
	SELECT CompanyName
	FROM Customer
	WHERE FirstName='James' AND MiddleName='D.' AND LastName='Kramer';

/* 2. Show all the addresses listed for 'Progressive Sports' where the AddressID < 470*/
	SELECT CompanyName,AddressType,AddressLine1
	FROM Customer JOIN CustomerAddress
		ON (Customer.CustomerID=CustomerAddress.CustomerID)
					JOIN Address
		ON (CustomerAddress.AddressID=Address.AddressID)
	WHERE CompanyName='Progressive Sports' AND Address.AddressID<470;
	
/* 3. Show OrdeQty, the Name and the ListPrice of the order made by CustomerID 61 */
	SELECT OrderQty,Name_P,ListPrice
	FROM SalesOrderHeader JOIN SalesOrderDetail
        ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
					JOIN Product
        ON SalesOrderDetail.ProductID=Product.ProductID
	WHERE CustomerID=61;
	
	--1.Los modelos de un tipo de tela dado (Jersey)
	SELECT ProductModelID, Name_PM
	FROM ProductModel
	WHERE EXTRACT(Detalle, '/detalle/Tela[text()= "&Tela"]/text()') IS NOT NULL;

	--2. Los modelos que vienen en el mayor número de colores
	SELECT ProductModelID, Name_PM
	FROM ProductModel
	WHERE TO_NUMBER(EXTRACT(Detalle, 'count(/detalle/Colores/Color)')) = (SELECT max(TO_NUMBER(EXTRACT(Detalle, 'count(/detalle/Colores/Color)')))
																		  FROM ProductModel);

	--3.Los modelos rosados para mujeres descritos como sensacionales
	SELECT ProductModelID, Name_PM
	FROM ProductModel
	WHERE EXTRACT(Detalle, '/detalle/Tela[(/detalle/Genero/text() = "women") and (/detalle/Descripcion/text() = "Sensational") ]/text()') IS NOT NULL;

	--4.Los modelos de una marca dada (Merelle) 
	SELECT ProductModelID, Name_PM
	FROM ProductModel
	WHERE EXTRACT(Detalle, '/detalle/Marca[text()= "&Marca"]/text()') IS NOT NULL;

	--5.Los modelos que lograron una evaluación de 5 el año pasado.
	SELECT ProductModelID, Name_PM
	FROM ProductModel
	WHERE EXTRACT(Detalle, '/detalle/Evaluaciones/Evaluacion[@año=19 and @calificacion=5]/@año') IS NOT NULL;

	/*Propuestas*/
	--1. Los Modelos Con Mas evaluaciones
	SELECT ProductModelID, Name_PM
	FROM ProductModel
	WHERE TO_NUMBER(EXTRACT(Detalle, 'count(/detalle/Evaluaciones/Evaluacion)')) = (SELECT max(TO_NUMBER(EXTRACT(Detalle, 'count(/detalle/Evaluaciones/Evaluacion)')))
																					FROM ProductModel);
																		
	--2. Los Modelos con tallas Unicas
	SELECT ProductModelID, Name_PM
	FROM ProductModel
	WHERE TO_NUMBER(EXTRACT(Detalle, 'count(/detalle/Tallas/Talla)')) = 1;

	--3. Promedio De Evaluacion de todos los modelos de los productos
	SELECT ProductModelID, Name_PM, TO_NUMBER(EXTRACT(Detalle, 'sum(/detalle/Evaluaciones/Evaluacion/@calificacion)'))/
		   TO_NUMBER(EXTRACT(Detalle, 'count(/detalle/Evaluaciones/Evaluacion/@calificacion)')) AS Promedio_Evaluacion
	FROM ProductModel;

	--4 La evaluacion de los modelos en un año dado
	SELECT ProductModelID, Name_PM, EXTRACT(Detalle, '/detalle/Evaluaciones/Evaluacion[@año=&x]/@calificacion') AS Evaluacion
	FROM ProductModel
	WHERE EXTRACT(Detalle, '/detalle/Evaluaciones/Evaluacion[@año=&x]/@calificacion') IS NOT NULL;