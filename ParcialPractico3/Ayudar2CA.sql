/*NotaEsperada: 3.5*/
/*----------xTablas----------*/
drop table BIENES;
drop table FAMILIAS;
drop table PERSONAS;
drop table ASIGNACIONES;
drop table BIENESASIGNADOS;
drop table SONPARA;
drop table OPINIONES;
drop table OPINIONESGRUPALES;

/*----------Tablas----------*/
create table BIENES (
	codigo CHAR(7) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	medida CHAR(2) NOT NULL,
	unitario NUMBER(5) NOT NULL,
	retirado CHAR(1) NOT NULL
);

create table FAMILIAS (
	numero NUMBER(5) NOT NULL,
    representante NUMBER(5) NOT NULL
);

create table PERSONAS (
	codigo NUMBER(7) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	familia NUMBER(5)
);

create table ASIGNACIONES (
	numero NUMBER(9) NOT NULL,
	fecha DATE NOT NULL,
	aceptado CHAR(1),
	familia NUMBER(5) NOT NULL
);

create table BIENESASIGNADOS(
	asignacion NUMBER(9) NOT NULL,
    bien CHAR(7) NOT NULL
);

create table SONPARA(
    familia NUMBER(5) NOT NULL,
    bien CHAR(7) NOT NULL
);

create table OPINIONES(
    numero NUMBER(5) NOT NULL,
    fecha DATE NOT NULL,
    opinion CHAR(1) NOT NULL,
    justificacion VARCHAR(20),
    persona NUMBER(7) NOT NULL,
    bien CHAR(7) NOT NULL
);

create table OPINIONESGRUPALES(
    numero NUMBER(5) NOT NULL,
    detalle XMLTYPE,
    estrellas NUMBER(1)
);

--poblar
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#da0844', 'Tart Shells', 2, 402, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#2a9d03', 'The Pop Shoppe', 2, 7868, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#b426a1', 'Mix - Cocktai', 1, 7817, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#c7f44b', 'Nantucket - Orange', 1, 9744, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#87dc73', 'Sugar - White Packet', 1, 643, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#fd4c1f', 'Whmis - Spray Bottle', 1, 9653, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#b6318c', 'Cheese - Mozzarella', 1, 8908, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#34e5ef', 'Wine - Black', 2, 4778, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#000df3', 'Cheese - Marble', 2, 3459, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#0eb0c6', 'Bread - Italian', 1, 6484, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#312fd8', 'Sorrel - Fresh', 3, 7918, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#9597ea', 'Cup - Paper', 3, 806, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#7ab0e9', 'Ecolab Digiclean', 1, 572, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#dc627b', 'Bread - Pita', 3, 10835, 1);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#fc4fda', 'Nut - Pistachio', 2, 9709, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#3467ac', 'Banana - Green', 1, 8972, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#8ec115', 'Wine - Acient', 1, 7506, 1);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#ed5496', 'Wine - White', 3, 6058, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#c8fb20', 'Magnotta Bel', 1, 5831, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#2be3c8', 'Corn Shoots', 1, 2755, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#3123d7', 'Creme De Menthen', 1, 8740, 1);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#eac3eb', 'Wine - Periguita', 2, 515, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#461290', 'Wine - Puligny', 2, 75010, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#71b878', 'Capicola - Hot', 2, 31945, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#cedcf1', 'Soup - Campbells', 3, 62633, 1);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#81d56e', 'Sauce - Plum', 3, 4463, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#b01422', 'Ginger - Fresh', 1, 79088, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#3291a4', 'Pasta - Fettuccine', 2, 6971, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#cdf788', 'Squid Ink', 2, 63593, 0);
insert into BIENES (codigo, nombre, medida, unitario, retirado) values ('#2e34eb', 'Kellogs Cereal', 2, 12907, 0);

insert into FAMILIAS (numero, representante) values (1,42);
insert into FAMILIAS (numero, representante) values (2,34);
insert into FAMILIAS (numero, representante) values (3,37);
insert into FAMILIAS (numero, representante) values (4,38);
insert into FAMILIAS (numero, representante) values (5,49);
insert into FAMILIAS (numero, representante) values (6,50);
insert into FAMILIAS (numero, representante) values (7,35);
insert into FAMILIAS (numero, representante) values (8,39);
insert into FAMILIAS (numero, representante) values (9,26);
insert into FAMILIAS (numero, representante) values (10,24);

insert into PERSONAS (codigo, nombre, familia) values (1, 'Kevan Orcas', 9);
insert into PERSONAS (codigo, nombre, familia) values (2, 'Cynthie Calvey', 2);
insert into PERSONAS (codigo, nombre, familia) values (3, 'Mordecai Drayn', 3);
insert into PERSONAS (codigo, nombre, familia) values (4, 'Melinda Velareal', 5);
insert into PERSONAS (codigo, nombre, familia) values (5, 'Natividad Rudkin', 4);
insert into PERSONAS (codigo, nombre, familia) values (6, 'Diann Kielty', 6);
insert into PERSONAS (codigo, nombre, familia) values (7, 'Stacee Rettie', 7);
insert into PERSONAS (codigo, nombre, familia) values (8, 'Claudius Francois', 9);
insert into PERSONAS (codigo, nombre, familia) values (9, 'Camila Strettell', 4);
insert into PERSONAS (codigo, nombre, familia) values (10, 'Vivie MacPaik', 4);
insert into PERSONAS (codigo, nombre, familia) values (11, 'Petr Leifer', 9);
insert into PERSONAS (codigo, nombre, familia) values (12, 'Mara Wake', 6);
insert into PERSONAS (codigo, nombre, familia) values (13, 'Elsa Roisen', 1);
insert into PERSONAS (codigo, nombre, familia) values (14, 'Ingamar Elgar', 5);
insert into PERSONAS (codigo, nombre, familia) values (15, 'Cad Greer', 4);
insert into PERSONAS (codigo, nombre, familia) values (16, 'Reinaldo Scarfe', 3);
insert into PERSONAS (codigo, nombre, familia) values (17, 'Garrick Sewley', 1);
insert into PERSONAS (codigo, nombre, familia) values (18, 'Kimberlyn Mannakee', 4);
insert into PERSONAS (codigo, nombre, familia) values (19, 'Genovera Jouannisson', 2);
insert into PERSONAS (codigo, nombre, familia) values (20, 'Boycey Oakton', 10);
insert into PERSONAS (codigo, nombre, familia) values (21, 'Merla Leneham', 2);
insert into PERSONAS (codigo, nombre, familia) values (22, 'Julio Mathewson', 3);
insert into PERSONAS (codigo, nombre, familia) values (23, 'Tabatha Brasseur', 6);
insert into PERSONAS (codigo, nombre, familia) values (24, 'Shanta Rumbold', 10);
insert into PERSONAS (codigo, nombre, familia) values (25, 'Dory Chadbourn', 3);
insert into PERSONAS (codigo, nombre, familia) values (26, 'Cornelia Gremain', 9);
insert into PERSONAS (codigo, nombre, familia) values (27, 'Say Wotherspoon', 1);
insert into PERSONAS (codigo, nombre, familia) values (28, 'Brant Puddifer', 3);
insert into PERSONAS (codigo, nombre, familia) values (29, 'Blancha Rathjen', 2);
insert into PERSONAS (codigo, nombre, familia) values (30, 'Den Sibary', 7);
insert into PERSONAS (codigo, nombre, familia) values (31, 'Ofelia Ringwood', 1);
insert into PERSONAS (codigo, nombre, familia) values (32, 'Isabel McAlindon', 2);
insert into PERSONAS (codigo, nombre, familia) values (33, 'Molly Purcell', 5);
insert into PERSONAS (codigo, nombre, familia) values (34, 'Homerus Richardt', 2);
insert into PERSONAS (codigo, nombre, familia) values (35, 'Roger Cashley', 7);
insert into PERSONAS (codigo, nombre, familia) values (36, 'Caye De Vaux', 1);
insert into PERSONAS (codigo, nombre, familia) values (37, 'Reuven Vieyra', 3);
insert into PERSONAS (codigo, nombre, familia) values (38, 'Sibella Staddart', 4);
insert into PERSONAS (codigo, nombre, familia) values (39, 'Roseann Igoe', 8);
insert into PERSONAS (codigo, nombre, familia) values (40, 'Burl Swatridge', 1);
insert into PERSONAS (codigo, nombre, familia) values (41, 'Chevy Edgell', 6);
insert into PERSONAS (codigo, nombre, familia) values (42, 'Kaye Menham', 1);
insert into PERSONAS (codigo, nombre, familia) values (43, 'Ronny De Marchi', 5);
insert into PERSONAS (codigo, nombre, familia) values (44, 'Maiga McCrae', 5);
insert into PERSONAS (codigo, nombre, familia) values (45, 'Bryana Lampaert', 6);
insert into PERSONAS (codigo, nombre, familia) values (46, 'Kanya Tolworth', 6);
insert into PERSONAS (codigo, nombre, familia) values (47, 'Everett Charpling', 6);
insert into PERSONAS (codigo, nombre, familia) values (48, 'Spense Pahler', 5);
insert into PERSONAS (codigo, nombre, familia) values (49, 'Aldrich Boatwright', 5);
insert into PERSONAS (codigo, nombre, familia) values (50, 'Klarrisa Bennitt', 6);


insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (1, TO_DATE('05/01/2019','DD/MM/YYYY') , 1, 2);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (2, TO_DATE('08/01/2019','DD/MM/YYYY'), 1, 10);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (3, TO_DATE('14/02/2019','DD/MM/YYYY'), 1, 5);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (4, TO_DATE('08/02/2019','DD/MM/YYYY'), 1, 1);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (5, TO_DATE('10/10/2019','DD/MM/YYYY'), 1, 7);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (6, TO_DATE('29/11/2019','DD/MM/YYYY'), 1, 5);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (7, TO_DATE('11/01/2020','DD/MM/YYYY'), 1, 10);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (8, TO_DATE('10/02/2020','DD/MM/YYYY'), 0, 3);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (9, TO_DATE('17/03/2020','DD/MM/YYYY'), 1, 5);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (10, TO_DATE('05/04/2020','DD/MM/YYYY'), 1, 3);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (11, TO_DATE('01/05/2020','DD/MM/YYYY'), 1, 1);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (12, TO_DATE('02/06/2020','DD/MM/YYYY'), 1, 1);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (13, TO_DATE('31/07/2020','DD/MM/YYYY'), 1, 1);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (14, TO_DATE('19/08/2020','DD/MM/YYYY'), NULL, 8);
insert into ASIGNACIONES (numero, fecha, aceptado, familia) values (15, TO_DATE('02/10/2020','DD/MM/YYYY'), NULL, 2);

insert into BIENESASIGNADOS (asignacion, bien) values (1, '#2e34eb');
insert into BIENESASIGNADOS (asignacion, bien) values (1, '#87dc73');
insert into BIENESASIGNADOS (asignacion, bien) values (1, '#3123d7');
insert into BIENESASIGNADOS (asignacion, bien) values (1, '#87dc73');
insert into BIENESASIGNADOS (asignacion, bien) values (1, '#3467ac');
insert into BIENESASIGNADOS (asignacion, bien) values (2, '#3467ac');
insert into BIENESASIGNADOS (asignacion, bien) values (2, '#cedcf1');
insert into BIENESASIGNADOS (asignacion, bien) values (3, '#87dc73');
insert into BIENESASIGNADOS (asignacion, bien) values (3, '#8ec115');
insert into BIENESASIGNADOS (asignacion, bien) values (3, '#3467ac');
insert into BIENESASIGNADOS (asignacion, bien) values (3, '#000df3');
insert into BIENESASIGNADOS (asignacion, bien) values (3, '#3123d7');
insert into BIENESASIGNADOS (asignacion, bien) values (4, '#2e34eb');
insert into BIENESASIGNADOS (asignacion, bien) values (4, '#3291a4');
insert into BIENESASIGNADOS (asignacion, bien) values (4, '#3467ac');
insert into BIENESASIGNADOS (asignacion, bien) values (4, '#cedcf1');
insert into BIENESASIGNADOS (asignacion, bien) values (5, '#2e34eb');
insert into BIENESASIGNADOS (asignacion, bien) values (5, '#3291a4');
insert into BIENESASIGNADOS (asignacion, bien) values (5, '#000df3');
insert into BIENESASIGNADOS (asignacion, bien) values (6, '#2e34eb');
insert into BIENESASIGNADOS (asignacion, bien) values (6, '#3291a4');
insert into BIENESASIGNADOS (asignacion, bien) values (7, '#8ec115');
insert into BIENESASIGNADOS (asignacion, bien) values (7, '#87dc73');
insert into BIENESASIGNADOS (asignacion, bien) values (8, '#000df3');
insert into BIENESASIGNADOS (asignacion, bien) values (8, '#cedcf1');
insert into BIENESASIGNADOS (asignacion, bien) values (9, '#cedcf1');
insert into BIENESASIGNADOS (asignacion, bien) values (10, '#000df3');
insert into BIENESASIGNADOS (asignacion, bien) values (10, '#cedcf1');
insert into BIENESASIGNADOS (asignacion, bien) values (11, '#3291a4');
insert into BIENESASIGNADOS (asignacion, bien) values (11, '#000df3');
insert into BIENESASIGNADOS (asignacion, bien) values (11, '#87dc73');
insert into BIENESASIGNADOS (asignacion, bien) values (11, '#2e34eb');
insert into BIENESASIGNADOS (asignacion, bien) values (13, '#000df3');
insert into BIENESASIGNADOS (asignacion, bien) values (13, '#2e34eb');
insert into BIENESASIGNADOS (asignacion, bien) values (13, '#87dc73');
insert into BIENESASIGNADOS (asignacion, bien) values (14, '#000df3');
insert into BIENESASIGNADOS (asignacion, bien) values (14, '#3291a4');
insert into BIENESASIGNADOS (asignacion, bien) values (14, '#3467ac');
insert into BIENESASIGNADOS (asignacion, bien) values (14, '#cedcf1');
insert into BIENESASIGNADOS (asignacion, bien) values (15, '#3123d7');
insert into BIENESASIGNADOS (asignacion, bien) values (15, '#000df3');
insert into BIENESASIGNADOS (asignacion, bien) values (15, '#8ec115');

/*----------Atributos----------*/
ALTER TABLE OPINIONESGRUPALES
ADD CONSTRAINT  CK_OpinionesGps_TEstrellas CHECK (estrellas >= 1 AND estrellas <= 5);

ALTER TABLE OPINIONES
ADD CONSTRAINT  CK_Opiniones_TOpinion CHECK (opinion IN ('E','B','R','M'));

/*----------Primarias----------*/

ALTER TABLE BIENES ADD CONSTRAINT PK_Bienes
PRIMARY KEY (codigo);

ALTER TABLE FAMILIAS ADD CONSTRAINT PK_Familias
PRIMARY KEY (numero);

ALTER TABLE PERSONAS ADD CONSTRAINT PK_Personas
PRIMARY KEY (codigo);

ALTER TABLE ASIGNACIONES ADD CONSTRAINT PK_Asignaciones
PRIMARY KEY (numero);

ALTER TABLE BIENESASIGNADOS ADD CONSTRAINT PK_BienesAsignados
PRIMARY KEY (asignacion, bien);

ALTER TABLE SONPARA ADD CONSTRAINT PK_SonPara
PRIMARY KEY (familia, bien);

ALTER TABLE OPINIONES ADD CONSTRAINT PK_Opiniones
PRIMARY KEY (numero);

ALTER TABLE OPINIONESGRUPALES ADD CONSTRAINT PK_OpinionesGrupales
PRIMARY KEY (numero);

/*----------Unicas----------*/
ALTER TABLE OPINIONES ADD CONSTRAINT UK_Opiniones
UNIQUE (justificacion);

/*----------Foraneas----------*/
ALTER TABLE ASIGNACIONES ADD CONSTRAINT FK_Asignaciones_Familia 
FOREIGN KEY (familia) REFERENCES FAMILIAS(numero);

ALTER TABLE BIENESASIGNADOS ADD CONSTRAINT FK_BinesAsignados_Asignaciones
FOREIGN KEY (asignacion) REFERENCES Asignaciones(numero);

ALTER TABLE BIENESASIGNADOS ADD CONSTRAINT FK_BinesAsignados_Bien
FOREIGN KEY (bien) REFERENCES Bienes(Codigo);

ALTER TABLE FAMILIAS ADD CONSTRAINT FK_Familias_Personas
FOREIGN KEY (representante) REFERENCES PERSONAS(Codigo);

ALTER TABLE PERSONAS ADD CONSTRAINT FK_Personas_Familias
FOREIGN KEY (familia) REFERENCES FAMILIAS(numero);

ALTER TABLE SONPARA ADD CONSTRAINT FK_SonPara_Familias
FOREIGN KEY (familia) REFERENCES FAMILIAS(numero);

ALTER TABLE SONPARA ADD CONSTRAINT FK_SonPara_Bienes
FOREIGN KEY (bien) REFERENCES Bienes(Codigo);

ALTER TABLE OPINIONES ADD CONSTRAINT FK_Opiniones_Bienes
FOREIGN KEY (bien) REFERENCES Bienes(Codigo);

ALTER TABLE OPINIONES ADD CONSTRAINT FK_Opiniones_Familias
FOREIGN KEY (persona) REFERENCES PERSONAS(codigo);

ALTER TABLE OPINIONESGRUPALES ADD CONSTRAINT FK_OpinionesGrupales_Opiniones
FOREIGN KEY (numero) REFERENCES OPINIONES(numero);

/*PoblarOK*/

INSERT INTO Opiniones (numero, fecha, opinion, justificacion, persona, bien) 
VALUES (1, sysdate, 'E', 'Bien', 1, '#da0844');
INSERT INTO Opiniones (numero, fecha, opinion, justificacion, persona, bien) 
VALUES (2, sysdate, 'B', 'Bien2', 2, '#2a9d03');
INSERT INTO Opiniones (numero, fecha, opinion, justificacion, persona, bien) 
VALUES (3, sysdate, 'R', 'Maso', 3, '#b426a1');
INSERT INTO Opiniones (numero, fecha, opinion, justificacion, persona, bien) 
VALUES (4, sysdate, 'M', 'MalEstado', 4, '#c7f44b');
INSERT INTO Opiniones (numero, fecha, opinion, justificacion, persona, bien) 
VALUES (5, sysdate, 'E', 'Bien35', 5, '#87dc73');

INSERT INTO OpinionesGrupales (numero, detalle, estrellas)
VALUES (1, null, 4);
INSERT INTO OpinionesGrupales (numero, detalle, estrellas)
VALUES (2, null, 4);

/*PoblarNoOK*/
--CK_Opiniones_TOpinion
INSERT INTO Opiniones (numero, fecha, opinion, justificacion, persona, bien) 
VALUES (6, sysdate, 'H', 'Bien35', 5, '#87dc73');

--CK_OpinionesGps_TEstrellas
INSERT INTO OpinionesGrupales (numero, detalle, estrellas)
VALUES (5, null, 9);

/*Consulta*/
SELECT codigo, nombre, count(Bienes.codigo) AS NumerosOpinionesExcelencia
FROM Bienes, Opiniones
WHERE Bienes.codigo = Opiniones.bien AND Opiniones.opinion='E'
      AND  Opiniones.fecha > (sysdate-31)
GROUP BY codigo, nombre
ORDER BY count(Bienes.codigo) DESC;

/*DTD*/
/*

<?xml version="1.0"?>

<!DOCTYPE Detalles[
	<!ELEMENT Detalles (comentarios, sugerencias, reclamos)>

	<!ELEMENT comentarios (adjetivo,descripcion?, puntaje)>
	<!ELEMENT sugerencias (adjetivo,descripcion?, puntaje, idea)>
	<!ELEMENT reclamos (adjetivo,descripcion?, puntaje, valoracion?)>
	
	<!ATTLIST comentarios
	  adjetivo CDATA #REQUIRED
	  descripcion CDATA
	  puntaje CDATA #REQUIRED>
	
	<!ATTLIST sugerencias
	  adjetivo CDATA #REQUIRED
	  descripcion CDATA
	  puntaje CDATA #REQUIRED
	  idea CDATA #REQUIRED>
	  
	<!ATTLIST reclamos
	  adjetivo CDATA #REQUIRED
	  descripcion CDATA
	  puntaje CDATA #REQUIRED
	  valoracion CDATA>
]>


*/
/*PoblarXML*/

UPDATE OpinionesGrupales SET detalle = '<?xml version="1.0"?>
<Detalles>
    <comentarios>
        <adjetivo> realizado </adjetivo>
        <puntaje> 5 </puntaje>
    </comentarios>
    <sugerencias>
        <adjetivo> Mejorar </adjetivo>
        <puntaje> 5 </puntaje>
        <idea> reinicio </idea>
    </sugerencias>
    <reclamos>
        <adjetivo> daños </adjetivo>
        <puntaje> 5 </puntaje>
        <valoración> 3201021 </valoración>
    </reclamos>
</Detalles>
' WHERE numero=1;


UPDATE OpinionesGrupales SET detalle = '<?xml version="1.0"?>
<Detalles>
    <comentarios>
        <adjetivo> realizado </adjetivo>
        <puntaje> 5 </puntaje>
        <descripción> intento de mejora del bien </descripción>
    </comentarios>
    <sugerencias>
        <adjetivo> Mejorar </adjetivo>
        <puntaje> 1 </puntaje>
        <idea> actualizar </idea>
    </sugerencias>
    <reclamos>
        <adjetivo> daños </adjetivo>
        <puntaje> 1 </puntaje>
        <valoración> 13242 </valoración>
    </reclamos>
</Detalles>
' WHERE numero=2;


/*Consulta*/
SELECT codigo, nombre, count(Opiniones.numero) AS NumeroOpiniones, count(OpinionesGrupales.numero)
FROM Bienes, Opiniones, OpinionesGrupales
WHERE Bienes.codigo = Opiniones.bien AND Opiniones.opinion='E'
      AND  OpinionesGrupales.numero = Opiniones.numero
      AND  EXTRACT(detalle, 'Detalles/reclamos/adjetivo/text()') IS NOT NULL
GROUP BY codigo, nombre
ORDER BY count(Bienes.codigo) DESC;


/*Tupla*/

/*Disparadores*/
--Adicion
CREATE OR REPLACE TRIGGER Tg_Ad_Opiniones
    BEFORE INSERT ON Opiniones
    FOR EACH ROW
    DECLARE
        Cant NUMBER(10);
        Estado CHAR(1);
        Cant2 NUMBER(10);
    BEGIN
        SELECT Count(*)+1  INTO Cant FROM Opiniones ;
        :new.numero := Cant;
        :new.fecha := sysdate;
        
        SELECT retirado INTO Estado FROM Bienes WHERE codigo = :new.bien;
        
        IF (Estado = '1')
        THEN
			RAISE_APPLICATION_ERROR(-20202,'EL Bien ha sido retirado');
	    END IF;
        
        SELECT count(*) INTO Cant2 FROM SonPara, Bienes, Personas, Familias WHERE SonPara.bien = Bienes.codigo AND SonPara.familia = Familias.numero
                AND Personas.familia = Familias.numero AND Personas.codigo = :new.persona;
                
        IF (Cant2 = 0)
        THEN
			RAISE_APPLICATION_ERROR(-20202,'La persona no fue asignada a el bien propuesto');
	    END IF;      
        
END Tg_Ad_Opiniones;


/
CREATE OR REPLACE TRIGGER Tg_Ad_OpinionesGrup
    BEFORE INSERT ON OpinionesGrupales
    FOR EACH ROW
    DECLARE
        Cant NUMBER(10);
    BEGIN
        
        SELECT count(*) INTO Cant FROM Familias WHERE representante = :new.persona;
        
        IF (Cant = 0)
        THEN
			RAISE_APPLICATION_ERROR(-20202,'La persona no es el representante');
	    END IF;   
        
END OpinionesGrupales;


--Modificacion
CREATE OR REPLACE TRIGGER Tg_Mo_Opiniones
    BEFORE UPDATE ON Opiniones
    FOR EACH ROW
    BEGIN
        IF (:old.fecha <> :new.fecha) OR  (:old.opinion <> :new.opinion) OR (:old.persona <> :new.persona) OR (:old.bien <> :new.bien)
		THEN
			RAISE_APPLICATION_ERROR(-20206,'ACTUALIZACION NO PERMITIDA');
	    END IF; 
        
END Tg_Mo_Opiniones;
/
CREATE OR REPLACE TRIGGER Tg_Mo_OpinionesGrup
    BEFORE UPDATE ON OpinionesGrupales
    FOR EACH ROW
    BEGIN
        IF (:old.detalle IS NOT NULL)
		THEN
			RAISE_APPLICATION_ERROR(-20206,'ACTUALIZACION NO PERMITIDA');
	    END IF; 
END Tg_Mo_OpinionesGrup;


--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Opiniones
    BEFORE UPDATE ON Opiniones
    FOR EACH ROW
    DECLARE
        cant NUMBER(10);
    BEGIN
        SELECT Count(*)  INTO Cant FROM Opiniones ;
        IF (:old.numero <> cant)
		THEN
			RAISE_APPLICATION_ERROR(-20206,'No se permite Eliminar');
	    END IF; 
        
END Tg_El_Opiniones;


--Necesarias En la Base
INSERT INTO SonPara VALUES (1,'#da0844');
INSERT INTO SonPara VALUES (2,'#2a9d03');

/*DisparadoresOK*/
INSERT INTO Opiniones (opinion, justificacion, persona, bien) 
VALUES ('E', 'BienDISK', 42, '#da0844');
INSERT INTO Opiniones (opinion, justificacion, persona, bien) 
VALUES ('E', 'BienDISK2', 34, '#2a9d03');
INSERT INTO Opiniones (opinion, justificacion, persona, bien) 
VALUES ('E', 'BienDISK3', 2, '#3467ac');
INSERT INTO OpinionesGrupales (numero, detalle, estrellas)
VALUES (6, null, 5);
INSERT INTO OpinionesGrupales (numero, detalle, estrellas)
VALUES (7, null, 2);


/*DisparadoresNoOK*/
INSERT INTO Opiniones (opinion, justificacion, persona, bien) 
VALUES ('E', 'BienDISK2', 2, '#cedcf1');


/*----------CrudE----------*/
CREATE OR REPLACE PACKAGE PC_OPINION IS 
    PROCEDURE AD_Opiniones (xnumero IN NUMBER, xfecha IN DATE, xopinion IN CHAR, xjustificacion IN VARCHAR, xpersona IN NUMBER, xbien IN CHAR);
	PROCEDURE MO_Opiniones (xnumero IN NUMBER, xfecha IN DATE, xopinion IN CHAR, xjustificacion IN VARCHAR, xpersona IN NUMBER, xbien IN CHAR);
	PROCEDURE EL_Opiniones (xnumero IN NUMBER);
    PROCEDURE AD_OpinionesGrup (xnumero IN NUMBER, xdetalle IN XMLTYPE, xestrellas IN NUMBER);
	PROCEDURE MO_OpinionesGrup (xnumero IN NUMBER, xdetalle IN XMLTYPE, xestrellas IN NUMBER);
	PROCEDURE EL_OpinionesGrup (xnumero IN NUMBER);
END PC_OPINION;



























