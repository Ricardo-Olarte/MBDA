/*------------------AutoEstudio 5------------------*/
/*Definiendo y poblando*/
--A.  Definiendo y poblando
    --1.Modifique la creación de las tablas considerando este nuevo atributo
        CREATE TABLE ProductModel (
            ProductModelID NUMBER(11) NOT NULL,
            Name_PM VARCHAR(50) NOT NULL,
            CatalogDescription VARCHAR(255),
            Detalle XMLTYPE NOT NULL
        );
        
        ALTER TABLE ProductModel ADD CONSTRAINT ProductModelID 
        PRIMARY KEY (ProductModelID);
        
    --2. Modifique las instrucciones para poblar la tabla considerando esta información
        /*Poblar*/
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle) 
        VALUES(1, 'Classic Vest', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Cotton</Tela>
            <Colores>
                <Color>yellow</Color>
                <Color>red</Color>
                <Color>blue</Color>
            </Colores>
            <Tallas>
                <Talla>S</Talla>
                <Talla>M</Talla>
                <Talla>L</Talla>
                <Talla>XL</Talla>
            </Tallas>
            <Genero>women</Genero>
            <Descripcion>Remarkable</Descripcion>
            <Marca>Sara</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="00"
                  calificacion="3">
                </Evaluacion>
                <Evaluacion
                  año="03"
                  calificacion="5">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle)
        VALUES(2, 'Cycling Cap', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Jersey</Tela>
            <Colores>
                <Color>black</Color>
                <Color>green</Color>
                <Color>white</Color>
            </Colores>
            <Tallas>
                <Talla>M</Talla>
                <Talla>L</Talla>
                <Talla>XL</Talla>
                <Talla>XXL</Talla>
            </Tallas>
            <Genero>men</Genero>
            <Descripcion>Sensational</Descripcion>
            <Marca>Calvin Klein</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="00"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="01"
                  calificacion="2">
                </Evaluacion>
                <Evaluacion
                  año="20"
                  calificacion="5">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
        
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle)
        VALUES(3, 'Full-Finger Gloves', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Jersey</Tela>
            <Colores>
                <Color>black</Color>
                <Color>green</Color>
                <Color>white</Color>
                <Color>yellow</Color>
                <Color>red</Color>
                <Color>blue</Color>
            </Colores>
            <Tallas>
                <Talla>S</Talla>
                <Talla>M</Talla>
                <Talla>L</Talla>
                <Talla>XL</Talla>
                <Talla>XXL</Talla>
            </Tallas>
            <Genero>neutral</Genero>
            <Descripcion>Revolutionary</Descripcion>
            <Marca>Bicycle Ware House</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="18"
                  calificacion="3">
                </Evaluacion>
                <Evaluacion
                  año="19"
                  calificacion="4">
                </Evaluacion>
                <Evaluacion
                  año="20"
                  calificacion="5">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle)
        VALUES(4, 'Half-Finger Gloves', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Cambray</Tela>
            <Colores>
                <Color>black</Color>
                <Color>green</Color>
                <Color>white</Color>
                <Color>yellow</Color>
                <Color>red</Color>
                <Color>blue</Color>
            </Colores>
            <Tallas>
                <Talla>S</Talla>
                <Talla>M</Talla>
                <Talla>L</Talla>
                <Talla>XL</Talla>
                <Talla>XXL</Talla>
            </Tallas>
            <Genero>neutral</Genero>
            <Descripcion>Classic</Descripcion>
            <Marca>Bicycle Ware House</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="17"
                  calificacion="2">
                </Evaluacion>
                <Evaluacion
                  año="18"
                  calificacion="3">
                </Evaluacion>
                <Evaluacion
                  año="19"
                  calificacion="4">
                </Evaluacion>
                <Evaluacion
                  año="20"
                  calificacion="5">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
        
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle)
        VALUES(5, 'HL Mountain Frame', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Nylon</Tela>
            <Colores>
                <Color>black</Color>
                <Color>white</Color>
                <Color>blue</Color>
            </Colores>
            <Tallas>
                <Talla>S</Talla>
                <Talla>M</Talla>
                <Talla>L</Talla>
            </Tallas>
            <Genero>neutral</Genero>
            <Descripcion>GORE-TEX</Descripcion>
            <Marca>Bicycle Ware House</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="04"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="18"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="19"
                  calificacion="2">
                </Evaluacion>
                <Evaluacion
                  año="20"
                  calificacion="3">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle)
        VALUES(6, 'HL Road Frame', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Cuero</Tela>
            <Colores>
                <Color>black</Color>
                <Color>white</Color>
                <Color>blue</Color>
                <Color>red</Color>
            </Colores>
            <Tallas>
                <Talla>M</Talla>
                <Talla>L</Talla>
                <Talla>XL</Talla>
            </Tallas>
            <Genero>neutral</Genero>
            <Descripcion>Unique</Descripcion>
            <Marca>Merelle</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="17"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="18"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="19"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="20"
                  calificacion="5">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle)
        VALUES(7, 'HL Touring Frame', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Cuero</Tela>
            <Colores>
                <Color>black</Color>
                <Color>white</Color>
                <Color>blue</Color>
                <Color>red</Color>
            </Colores>
            <Tallas>
                <Talla>XS</Talla>
                <Talla>S</Talla>
                <Talla>M</Talla>
                <Talla>L</Talla>
            </Tallas>
            <Genero>boys</Genero>
            <Descripcion>Unique</Descripcion>
            <Marca>Merelle</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="10"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="15"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="17"
                  calificacion="3">
                </Evaluacion>
                <Evaluacion
                  año="18"
                  calificacion="1">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle)
        VALUES(8, 'LL Mountain Frame', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Cotton</Tela>
            <Colores>
                <Color>black</Color>
                <Color>white</Color>
                <Color>green</Color>
                <Color>red</Color>
                <Color>yellow</Color>
                <Color>blue</Color>
            </Colores>
            <Tallas>
                <Talla>L</Talla>
            </Tallas>
            <Genero>girls</Genero>
            <Descripcion>Sensational</Descripcion>
            <Marca>Adidas</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="03"
                  calificacion="4">
                </Evaluacion>
                <Evaluacion>
                  año="04"
                  calificacion="2"
                </Evaluacion>
                <Evaluacion
                  año="05"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="06"
                  calificacion="1">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle)
        VALUES(9, 'LL Road Frame', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Cotton</Tela>
            <Colores>
                <Color>black</Color>
                <Color>white</Color>
                <Color>green</Color>
                <Color>red</Color>
                <Color>yellow</Color>
                <Color>blue</Color>
            </Colores>
            <Tallas>
                <Talla>XS</Talla>
                <Talla>S</Talla>
                <Talla>M</Talla>
                <Talla>L</Talla>
                <Talla>XL</Talla>
                <Talla>XXL</Talla>
                <Talla>XXXL</Talla>
            </Tallas>
            <Genero>girls</Genero>
            <Descripcion>Classic</Descripcion>
            <Marca>Nike</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="03"
                  calificacion="4">
                </Evaluacion>
                <Evaluacion
                  año="17"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="19"
                  calificacion="5">
                </Evaluacion>
                <Evaluacion
                  año="20"
                  calificacion="1">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
        INSERT INTO ProductModel(ProductModelID, Name_PM, CatalogDescription, Detalle) 
        VALUES(10, 'Classic Vest', 'NULL',
        '<?xml version="1.0"?>
        <detalle>
            <Tela>Cotton</Tela>
            <Colores>
                <Color>yellow</Color>
                <Color>red</Color>
                <Color>blue</Color>
            </Colores>
            <Tallas>
                <Talla>S</Talla>
                <Talla>M</Talla>
                <Talla>L</Talla>
                <Talla>XL</Talla>
            </Tallas>
            <Genero>women</Genero>
            <Descripcion>Sensational</Descripcion>
            <Marca>Sara</Marca>
            <Evaluaciones>
                <Evaluacion
                  año="00"
                  calificacion="3">
                </Evaluacion>
                <Evaluacion
                  año="03"
                  calificacion="5">
                </Evaluacion>
            </Evaluaciones>
        </detalle>');
        
--B. Consultando '/detalle/Colores[count(Color) = max(/detalle/Colores/count(Color))]/count(Color)'
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
        
--C. Definiendo esquema
/*
<?xml version="1.0"?>
<!DOCTYPE detalle [
	<!ELEMENT detalle (Tela, Colores, Talla, Genero, Descripcion, Marca, Evaluaciones)>
	<!ELEMENT Tela (Tela)>
	<!ELEMENT Colores (Color+)>
	<!ELEMENT Talla (talla+)>
	<!ELEMENT Genero (genero)>
	<!ELEMENT Descripcion (#PCDATA)>
	<!ELEMENT Marca (marca?)>
	<!ELEMENT Evaluaciones (calificacion, año?)>

	<!ATTLIST Tela (Cotton, Jersey, Cambray, Nylon, Cuero) #REQUIRED>	
	<!ATTLIST Colores (yellow, red, blue, black, white, green) #REQUIRED>
	<!ATTLIST Talla ("S"|"M"|"L"|"XS"|"XM"|"XL")#REQUIRED>
	<!ATTLIST Genero (Hombre|Mujer) #REQUIRED>
	<!ATTLIST Descripcion CDATA #REQUIRED>
	<!ATTLIST Marca #IMPLIED>
	<!ATTLIST Evaluaciones calificacion ("1"|"2"|"3"|"4"|"5") #REQUIRED año CDATA #REQUIRED>
]>
<detalle>
    <Tela>Cotton</Tela>
    <Colores>
        <Color>yellow</Color>
        <Color>red</Color>
        <Color>blue</Color>
    </Colores>
    <Tallas>
        <Talla>S</Talla>
        <Talla>M</Talla>
        <Talla>L</Talla>
        <Talla>XL</Talla>
    </Tallas>
    <Genero>women</Genero>
    <Descripcion>Sensational</Descripcion>
    <Marca>Sara</Marca>
    <Evaluaciones>
        <Evaluacion
          año="00"
          calificacion="3">
        </Evaluacion>
        <Evaluacion
          año="03"
          calificacion="5">
        </Evaluacion>
    </Evaluaciones>
</detalle>
*/

--1- El genero solo puede ser hombre o mujer
--2- Los unicos valores de las calificacion de las evaluaciones es del 1 al 5
--3- Las tallar obligatorias requeridas son "S","M","L","XS","XM","XL"