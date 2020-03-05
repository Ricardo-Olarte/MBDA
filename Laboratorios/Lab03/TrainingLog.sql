/*CICLO 1 TABLAS*/
--
/* PARTICIPANTE */

CREATE TABLE Participantes(
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL,
email VARCHAR(100) NOT NULL,
pais VARCHAR(30) NOT NULL,
fRegistro DATE NOT NULL,
fRetiro DATE
);

CREATE TABLE Atletas(
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL,
rh VARCHAR(1) NOT NULL,
tSangre VARCHAR(2) NOT NULL
);

CREATE TABLE Entrenadores(
tid VARCHAR(3) NOT NULL,
nid VARCHAR(15) NOT NULL,
seguro VARCHAR(40) NOT NULL
);

CREATE TABLE Contactos(
participantetid VARCHAR(3) NOT NULL,
participantenid VARCHAR(15) NOT NULL,
atletatid VARCHAR(3) NOT NULL,
atletanid VARCHAR(15) NOT NULL
);

CREATE TABLE Entrenamientos(
atletatid VARCHAR(3) NOT NULL,
atletanid VARCHAR(15) NOT NULL,
entrenadortid VARCHAR(3) NOT NULL,
entrenadornid VARCHAR(15) NOT NULL
);

--
/* SESIONES */

CREATE TABLE Sesiones(
dia NUMBER(10) NOT NULL,
orden NUMBER(10) NOT NULL,
duracion NUMBER(10) NOT NULL,
descripcion VARCHAR(100) NOT NULL,
atletatid VARCHAR(3) NOT NULL,
atletanid VARCHAR(15) NOT NULL
);

--
/*EVALUACIONES*/

CREATE TABLE Evaluaciones(
numero NUMBER(10) NOT NULL,
fecha DATE NOT NULL,
puntaje NUMBER(1)NOT NULL,
comentarios VARCHAR(500),
recomendaciones VARCHAR(50) NOT NULL,
entrenadortid VARCHAR(3) NOT NULL,
entrenadornid VARCHAR(15) NOT NULL,
actividad NUMBER(10) NOT NULL
);

CREATE TABLE Similitudes(
evaluacion1tid VARCHAR(3) NOT NULL,
evaluacion1nid VARCHAR(15) NOT NULL,
evaluacion1actividad NUMBER(10) NOT NULL,
evaluacion2tid VARCHAR(3) NOT NULL,
evaluacion2nid VARCHAR(15) NOT NULL,
evaluacion2actividad NUMBER(10) NOT NULL,
porcentaje NUMBER(3) NOT NULL
);

--
/*ACTIVIDADES*/

CREATE TABLE Actividades(
numero NUMBER(10) NOT NULL,
fechaInicio DATE NOT NULL,
horaInicio NUMBER(4) NOT NULL,
tiempoTotal NUMBER(4) NOT NULL,
pulsacionesProm NUMBER(10)
);

CREATE TABLE Fotos(
actividad NUMBER(10) NOT NULL,
fotos VARCHAR(150) NOT NULL
);

CREATE TABLE Registros(
numero NUMBER(10) NOT NULL,
fecha DATE NOT NULL,
hora NUMBER(4) NOT NULL,
sensor VARCHAR(1) NOT NULL,
valor NUMBER(10) NOT NULL,
actividad NUMBER(10) NOT NULL
);

CREATE TABLE Planeadas(
numero NUMBER(10) NOT NULL,
sesiondia NUMBER(10) NOT NULL,
sesionorden NUMBER(10) NOT NULL
);

CREATE TABLE Libres(
numero NUMBER(10) NOT NULL,
atletatid VARCHAR(3) NOT NULL,
atletanid VARCHAR(15) NOT NULL
);

---------------------------------------------------------------

/*CICLO 1 XTABLAS*/
--
/* PARTICIPANTE */

DROP TABLE Participantes;
DROP TABLE Atletas;
DROP TABLE Entrenadores;
DROP TABLE Contactos;
DROP TABLE Entrenamientos;

--
/* SESIONES */

DROP TABLE Sesiones;

--
/*EVALUACIONES*/

DROP TABLE Evaluaciones;
DROP TABLE Similitudes;

--
/*ACTIVIDADES*/

DROP TABLE Actividades;
DROP TABLE Fotos;
DROP TABLE Registros;
DROP TABLE Planeadas;
DROP TABLE Libres;

---------------------------------------------------------------

/*CICLO 1 PoblarOK (1) */
--
/* PARTICIPANTE */

INSERT INTO Participantes VALUES ('ABC','NIDNUM1','andres@gmail.com','Colombia',TO_DATE('04/05/2017','dd/mm/yyyy'),null);
INSERT INTO Participantes VALUES ('DEF','NIDNUM2','mateo@gmail.com','Colombia',TO_DATE('01/02/2018','dd/mm/yyyy'),null);
INSERT INTO Participantes VALUES ('GHI','NIDNUM3','jose@gmail.com','Colombia',TO_DATE('03/04/2017','dd/mm/yyyy'),null);
INSERT INTO Participantes VALUES ('JKL','NIDNUM4','ricardo@gmail.com','Italia',TO_DATE('01/05/2012','dd/mm/yyyy'),null);
INSERT INTO Participantes VALUES ('MNO','NIDNUM5','cristiano@gmail.com','Portugal',TO_DATE('01/04/2016','dd/mm/yyyy'),null);


INSERT INTO Atletas VALUES ('Aab','Anid1','+','AB');
INSERT INTO Atletas VALUES ('Acd','Anid2','-','A');
INSERT INTO Atletas VALUES ('Aef','Anid3','+','B');
INSERT INTO Atletas VALUES ('Afg','Anid4','-','B');
INSERT INTO Atletas VALUES ('Ahi','Anid5','+','A');

INSERT INTO Entrenadores VALUES ('Eab','Enid1','ABC123');
INSERT INTO Entrenadores VALUES ('Ecd','Enid2','ABC456');
INSERT INTO Entrenadores VALUES ('Eef','Enid3','ABC789');
INSERT INTO Entrenadores VALUES ('Ehi','Enid4','DEF123');
INSERT INTO Entrenadores VALUES ('Ejk','Enid5','DEF456');

INSERT INTO Contactos VALUES('ABC','NIDNUM1','Aab','Anid1');
INSERT INTO Contactos VALUES('DEF','NIDNUM2','Acd','Anid2');
INSERT INTO Contactos VALUES('GHI','NIDNUM3','Aef','Anid3');
INSERT INTO Contactos VALUES('JKL','NIDNUM4','Afg','Anid4');
INSERT INTO Contactos VALUES('MNO','NIDNUM5','Ahi','Anid5');

INSERT INTO Entrenamientos VALUES('Aab','Anid1','Eab','Enid1');
INSERT INTO Entrenamientos VALUES('Acd','Anid2','Ecd','Enid2');
INSERT INTO Entrenamientos VALUES('Aef','Anid3','Eef','Enid3');
INSERT INTO Entrenamientos VALUES('Afg','Anid4','Ehi','Enid4');
INSERT INTO Entrenamientos VALUES('Ahi','Anid5','Ejk','Enid5');

--
/* SESIONES */
INSERT INTO Sesiones VALUES(1,1,20,'Rutina de Tren Superior','Aab','Anid1');
INSERT INTO Sesiones VALUES(2,1,30,'Rutina de Tren Inferior','Acd','Anid2');
INSERT INTO Sesiones VALUES(3,1,40,'Rutina de Abdomen','Aef','Anid3');
INSERT INTO Sesiones VALUES(4,1,50,'Rutina de Pierna','Afg','Anid4');
INSERT INTO Sesiones VALUES(5,1,60,'Rutina de Brazos','Ahi','Anid5');

--
/*EVALUACIONES*/

INSERT INTO Evaluaciones VALUES (1,TO_DATE('30/06/2017','dd/mm/yyyy'),5,'Perfcecto siguio instrucciones','Bien','Eab','Enid1',1);
INSERT INTO Evaluaciones VALUES (2,TO_DATE('16/06/2017','dd/mm/yyyy'),1,'No seguia las instruccion dadas','Mal','Ecd','Enid2',2);
INSERT INTO Evaluaciones VALUES (3,TO_DATE('11/07/2017','dd/mm/yyyy'),3,'Seguia las intstrucciones pero le falta fisico','Mal','Eef','Enid3',3);
INSERT INTO Evaluaciones VALUES (4,TO_DATE('03/07/2017','dd/mm/yyyy'),4,'Muy bien, puede mejorar','Bien','Ehi','Enid4',4);
INSERT INTO Evaluaciones VALUES (5,TO_DATE('04/08/2017','dd/mm/yyyy'),2,'Pesimo Fisico','Mal','Ejk','Enid5',5);

INSERT INTO Similitudes VALUES ('Eab','Enid1',1,'Ecd','Enid2',2,50);
INSERT INTO Similitudes VALUES ('Ecd','Enid2',2,'Eef','Enid3',3,20);
INSERT INTO Similitudes VALUES ('Eef','Enid3',3,'Ehi','Enid4',4,16);
INSERT INTO Similitudes VALUES ('Ehi','Enid4',4,'Ejk','Enid5',5,89);
INSERT INTO Similitudes VALUES ('Ejk','Enid5',5,'Eab','Enid1',1,37);

--
/*ACTIVIDADES*/

INSERT INTO Actividades VALUES (1, TO_DATE('10/06/2020','dd/mm/yyyy'), 700, 60, 85);
INSERT INTO Actividades VALUES (2, TO_DATE('20/06/2020','dd/mm/yyyy'), 800, 120, 85);
INSERT INTO Actividades VALUES (3, TO_DATE('17/06/2020','dd/mm/yyyy'), 900, 120, 75);
INSERT INTO Actividades VALUES (4, TO_DATE('16/06/2020','dd/mm/yyyy'), 1100, 300, 123);
INSERT INTO Actividades VALUES (5, TO_DATE('11/06/2020','dd/mm/yyyy'), 1600, 92, 80);

INSERT INTO Fotos VALUES (1, 'asd.jepg');
INSERT INTO Fotos VALUES (2, 'qwe.jpg');
INSERT INTO Fotos VALUES (3, 'zxc.png');
INSERT INTO Fotos VALUES (4, 'fgh.png');
INSERT INTO Fotos VALUES (5, 'rty.jpg');

INSERT INTO Registros VALUES (1,TO_DATE('10/06/2020','dd/mm/yyyy'),800,'C',100,1);
INSERT INTO Registros VALUES (2,TO_DATE('20/06/2020','dd/mm/yyyy'),700,'V',125,2);
INSERT INTO Registros VALUES (3,TO_DATE('16/06/2020','dd/mm/yyyy'),1100,'P',48,3);
INSERT INTO Registros VALUES (4,TO_DATE('11/06/2020','dd/mm/yyyy'),1200,'C',369,4);
INSERT INTO Registros VALUES (5,TO_DATE('13/06/2020','dd/mm/yyyy'),2230,'V',142,5);

INSERT INTO Planeadas VALUES(2,1,1);
INSERT INTO Planeadas VALUES(3,2,1);
INSERT INTO Planeadas VALUES(4,3,1);
INSERT INTO Planeadas VALUES(5,4,1);
INSERT INTO Planeadas VALUES(1,5,1);

INSERT INTO Libres VALUES (2,'Aab','Anid1');
INSERT INTO Libres VALUES (1,'Acd','Anid2');
INSERT INTO Libres VALUES (3,'Aef','Anid3');
INSERT INTO Libres VALUES (5,'Afg','Anid4');
INSERT INTO Libres VALUES (4,'Ahi','Anid5');

/*CICLO 1 PoblarNoOK (2 y 3) */

---(2)---
/*
Se intentan validar la integridad de los atributos tales como:
    - No exceder longitud predeterminada
    - NO ingresar atributos de otro tipo (ej: donde pide NUMBER meter un VARCHAR)
*/
INSERT INTO Participantes VALUES ('ABC878','NIDNUM1','andres@gmail.com','Colombia',TO_DATE('04/05/2017','dd/mm/yyyy'),null);
INSERT INTO Atletas VALUES ('Aab','Anid1',15,'AB');
INSERT INTO Entrenadores VALUES (789798,'Enid2','ABC456');
INSERT INTO Contactos VALUES('ABC','NIDNUM1',13245,'Anid1');
INSERT INTO Entrenamientos VALUES(7987987,'Anid1','Eab','Enid1');
INSERT INTO Similitudes VALUES (79879879,'Enid1',1,'Ecd','Enid2',2,50);
INSERT INTO Evaluaciones VALUES (1,'adfasdfas',5,'Perfcecto siguio instrucciones','Bien','Eab','Enid1',1);
INSERT INTO Similitudes VALUES ('Eab','Enid1',1,'Ecd','Enid2',2,'asdasd');
INSERT INTO Actividades VALUES ('asdas', TO_DATE('10/06/2020','dd/mm/yyyy'), 700, 60, 85);
INSERT INTO Fotos VALUES ('asda', 'asd.jepg');
INSERT INTO Registros VALUES (1,TO_DATE('10/06/2020','dd/mm/yyyy'),800,'C','asda',1);
INSERT INTO Planeadas VALUES(1,'asa',1);
INSERT INTO Libres VALUES (1123421423412,'Acd','Anid2');

---(3)---
/*
Se intentan validar la integridad de los atributos tales como:
    - TipoSangre que este entre los valores A, B, O, AB
    - Puntaje no mayor a 5
    - Porcentaje no mayor a 100
    - Hora no mayor a 2400
    - Fotos con al menos un 1 '.'
    - Sensor entre los valores C)adenciomentro, V)elocimetro, P)ulsometro
*/
INSERT INTO Atletas VALUES ('Aab','Anid1','+','KK');
INSERT INTO Evaluaciones VALUES (1,TO_DATE('30/06/2017','dd/mm/yyyy'),789,'Perfcecto siguio instrucciones','Bien','Eab','Enid1',1);
INSERT INTO Similitudes VALUES ('Eab','Enid1',1,'Ecd','Enid2',2,200);
INSERT INTO Actividades VALUES (1, TO_DATE('10/06/2020','dd/mm/yyyy'), 5000, 60, 85);
INSERT INTO Fotos VALUES (2, 'qwejpg');
INSERT INTO Registros VALUES (1,TO_DATE('10/06/2020','dd/mm/yyyy'),800,'X',100,1);

/*CICLO 1 XPoblar(Eliminar los datos) */

DELETE FROM Participantes;
DELETE FROM Atletas;
DELETE FROM Entrenadores;
DELETE FROM Contactos;
DELETE FROM Entrenamientos;
DELETE FROM Similitudes;
DELETE FROM Evaluaciones;
DELETE FROM Similitudes;
DELETE FROM Actividades;
DELETE FROM Fotos;
DELETE FROM Registros;
DELETE FROM Planeadas;
DELETE FROM Libres;

/*CICLO 1 PoblarOK (1) */
--
/* PARTICIPANTE */

INSERT INTO Participantes VALUES ('ABC','NIDNUM1','andres@gmail.com','Colombia',TO_DATE('04/05/2017','dd/mm/yyyy'),null);
INSERT INTO Participantes VALUES ('DEF','NIDNUM2','mateo@gmail.com','Colombia',TO_DATE('01/02/2018','dd/mm/yyyy'),null);
INSERT INTO Participantes VALUES ('GHI','NIDNUM3','jose@gmail.com','Colombia',TO_DATE('03/04/2017','dd/mm/yyyy'),null);
INSERT INTO Participantes VALUES ('JKL','NIDNUM4','ricardo@gmail.com','Italia',TO_DATE('01/05/2012','dd/mm/yyyy'),null);
INSERT INTO Participantes VALUES ('MNO','NIDNUM5','cristiano@gmail.com','Portugal',TO_DATE('01/04/2016','dd/mm/yyyy'),null);


INSERT INTO Atletas VALUES ('Aab','Anid1','+','AB');
INSERT INTO Atletas VALUES ('Acd','Anid2','-','A');
INSERT INTO Atletas VALUES ('Aef','Anid3','+','B');
INSERT INTO Atletas VALUES ('Afg','Anid4','-','B');
INSERT INTO Atletas VALUES ('Ahi','Anid5','+','A');

INSERT INTO Entrenadores VALUES ('Eab','Enid1','ABC123');
INSERT INTO Entrenadores VALUES ('Ecd','Enid2','ABC456');
INSERT INTO Entrenadores VALUES ('Eef','Enid3','ABC789');
INSERT INTO Entrenadores VALUES ('Ehi','Enid4','DEF123');
INSERT INTO Entrenadores VALUES ('Ejk','Enid5','DEF456');

INSERT INTO Contactos VALUES('ABC','NIDNUM1','Aab','Anid1');
INSERT INTO Contactos VALUES('DEF','NIDNUM2','Acd','Anid2');
INSERT INTO Contactos VALUES('GHI','NIDNUM3','Aef','Anid3');
INSERT INTO Contactos VALUES('JKL','NIDNUM4','Afg','Anid4');
INSERT INTO Contactos VALUES('MNO','NIDNUM5','Ahi','Anid5');

INSERT INTO Entrenamientos VALUES('Aab','Anid1','Eab','Enid1');
INSERT INTO Entrenamientos VALUES('Acd','Anid2','Ecd','Enid2');
INSERT INTO Entrenamientos VALUES('Aef','Anid3','Eef','Enid3');
INSERT INTO Entrenamientos VALUES('Afg','Anid4','Ehi','Enid4');
INSERT INTO Entrenamientos VALUES('Ahi','Anid5','Ejk','Enid5');

--
/* SESIONES */
INSERT INTO Sesiones VALUES(1,1,20,'Rutina de Tren Superior','Aab','Anid1');
INSERT INTO Sesiones VALUES(2,1,30,'Rutina de Tren Inferior','Acd','Anid2');
INSERT INTO Sesiones VALUES(3,1,40,'Rutina de Abdomen','Aef','Anid3');
INSERT INTO Sesiones VALUES(4,1,50,'Rutina de Pierna','Afg','Anid4');
INSERT INTO Sesiones VALUES(5,1,60,'Rutina de Brazos','Ahi','Anid5');

--
/*EVALUACIONES*/

INSERT INTO Evaluaciones VALUES (1,TO_DATE('30/06/2017','dd/mm/yyyy'),5,'Perfcecto siguio instrucciones','Bien','Eab','Enid1',1);
INSERT INTO Evaluaciones VALUES (2,TO_DATE('16/06/2017','dd/mm/yyyy'),1,'No seguia las instruccion dadas','Mal','Ecd','Enid2',2);
INSERT INTO Evaluaciones VALUES (3,TO_DATE('11/07/2017','dd/mm/yyyy'),3,'Seguia las intstrucciones pero le falta fisico','Mal','Eef','Enid3',3);
INSERT INTO Evaluaciones VALUES (4,TO_DATE('03/07/2017','dd/mm/yyyy'),4,'Muy bien, puede mejorar','Bien','Ehi','Enid4',4);
INSERT INTO Evaluaciones VALUES (5,TO_DATE('04/08/2017','dd/mm/yyyy'),2,'Pesimo Fisico','Mal','Ejk','Enid5',5);

INSERT INTO Similitudes VALUES ('Eab','Enid1',1,'Ecd','Enid2',2,50);
INSERT INTO Similitudes VALUES ('Ecd','Enid2',2,'Eef','Enid3',3,20);
INSERT INTO Similitudes VALUES ('Eef','Enid3',3,'Ehi','Enid4',4,16);
INSERT INTO Similitudes VALUES ('Ehi','Enid4',4,'Ejk','Enid5',5,89);
INSERT INTO Similitudes VALUES ('Ejk','Enid5',5,'Eab','Enid1',1,37);

--
/*ACTIVIDADES*/

INSERT INTO Actividades VALUES (1, TO_DATE('10/06/2020','dd/mm/yyyy'), 700, 60, 85);
INSERT INTO Actividades VALUES (2, TO_DATE('20/06/2020','dd/mm/yyyy'), 800, 120, 85);
INSERT INTO Actividades VALUES (3, TO_DATE('17/06/2020','dd/mm/yyyy'), 900, 120, 75);
INSERT INTO Actividades VALUES (4, TO_DATE('16/06/2020','dd/mm/yyyy'), 1100, 300, 123);
INSERT INTO Actividades VALUES (5, TO_DATE('11/06/2020','dd/mm/yyyy'), 1600, 92, 80);

INSERT INTO Fotos VALUES (1, 'asd.jepg');
INSERT INTO Fotos VALUES (2, 'qwe.jpg');
INSERT INTO Fotos VALUES (3, 'zxc.png');
INSERT INTO Fotos VALUES (4, 'fgh.png');
INSERT INTO Fotos VALUES (5, 'rty.jpg');

INSERT INTO Registros VALUES (1,TO_DATE('10/06/2020','dd/mm/yyyy'),800,'C',100,1);
INSERT INTO Registros VALUES (2,TO_DATE('20/06/2020','dd/mm/yyyy'),700,'V',125,2);
INSERT INTO Registros VALUES (3,TO_DATE('16/06/2020','dd/mm/yyyy'),1100,'P',48,3);
INSERT INTO Registros VALUES (4,TO_DATE('11/06/2020','dd/mm/yyyy'),1200,'C',369,4);
INSERT INTO Registros VALUES (5,TO_DATE('13/06/2020','dd/mm/yyyy'),2230,'V',142,5);

INSERT INTO Planeadas VALUES(2,1,1);
INSERT INTO Planeadas VALUES(3,2,1);
INSERT INTO Planeadas VALUES(4,3,1);
INSERT INTO Planeadas VALUES(5,4,1);
INSERT INTO Planeadas VALUES(1,5,1);

INSERT INTO Libres VALUES (2,'Aab','Anid1');
INSERT INTO Libres VALUES (1,'Acd','Anid2');
INSERT INTO Libres VALUES (3,'Aef','Anid3');
INSERT INTO Libres VALUES (5,'Afg','Anid4');
INSERT INTO Libres VALUES (4,'Ahi','Anid5');

/*CICLO 1 PoblarNoOK (2 y 3) */

---(2)---
/*
Se intentan validar la integridad de los atributos tales como:
    - No exceder longitud predeterminada
    - NO ingresar atributos de otro tipo (ej: donde pide NUMBER meter un VARCHAR)
*/
INSERT INTO Participantes VALUES ('ABC878','NIDNUM1','andres@gmail.com','Colombia',TO_DATE('04/05/2017','dd/mm/yyyy'),null);
INSERT INTO Atletas VALUES ('Aab','Anid1',15,'AB');
INSERT INTO Entrenadores VALUES (789798,'Enid2','ABC456');
INSERT INTO Contactos VALUES('ABC','NIDNUM1',13245,'Anid1');
INSERT INTO Entrenamientos VALUES(7987987,'Anid1','Eab','Enid1');
INSERT INTO Similitudes VALUES (79879879,'Enid1',1,'Ecd','Enid2',2,50);
INSERT INTO Evaluaciones VALUES (1,'adfasdfas',5,'Perfcecto siguio instrucciones','Bien','Eab','Enid1',1);
INSERT INTO Similitudes VALUES ('Eab','Enid1',1,'Ecd','Enid2',2,'asdasd');
INSERT INTO Actividades VALUES ('asdas', TO_DATE('10/06/2020','dd/mm/yyyy'), 700, 60, 85);
INSERT INTO Fotos VALUES ('asda', 'asd.jepg');
INSERT INTO Registros VALUES (1,TO_DATE('10/06/2020','dd/mm/yyyy'),800,'C','asda',1);
INSERT INTO Planeadas VALUES(1,'asa',1);
INSERT INTO Libres VALUES (1123421423412,'Acd','Anid2');

---(3)---
/*
Se intentan validar la integridad de los atributos tales como:
    - TipoSangre que este entre los valores A, B, O, AB
    - Puntaje no mayor a 5
    - Porcentaje no mayor a 100
    - Hora no mayor a 2400
    - Fotos con al menos un 1 '.'
    - Sensor entre los valores C)adenciomentro, V)elocimetro, P)ulsometro
*/
INSERT INTO Atletas VALUES ('Aab','Anid1','+','KK');
INSERT INTO Evaluaciones VALUES (1,TO_DATE('30/06/2017','dd/mm/yyyy'),789,'Perfcecto siguio instrucciones','Bien','Eab','Enid1',1);
INSERT INTO Similitudes VALUES ('Eab','Enid1',1,'Ecd','Enid2',2,200);
INSERT INTO Actividades VALUES (1, TO_DATE('10/06/2020','dd/mm/yyyy'), 5000, 60, 85);
INSERT INTO Fotos VALUES (2, 'qwejpg');
INSERT INTO Registros VALUES (1,TO_DATE('10/06/2020','dd/mm/yyyy'),800,'X',100,1);

/*CICLO 1 XPoblar(Eliminar los datos) */

DELETE FROM Participantes;
DELETE FROM Atletas;
DELETE FROM Entrenadores;
DELETE FROM Contactos;
DELETE FROM Entrenamientos;
DELETE FROM Similitudes;
DELETE FROM Evaluaciones;
DELETE FROM Sesiones;
DELETE FROM Actividades;
DELETE FROM Fotos;
DELETE FROM Registros;
DELETE FROM Planeadas;
DELETE FROM Libres;

---------------------------------------------------------------

/*CICLO 1 PROTEGIENDO*/

---(1)---

/*CICLO 1 ATRIBUTOS*/
 --
 /* PARTICIPANTE */
 
ALTER TABLE Atletas ADD CONSTRAINT CHK_tipoSangre CHECK(tSangre IN ('A', 'B', 'O', 'AB'));
ALTER TABLE Atletas ADD CONSTRAINT CHK_rh CHECK(rh IN ('+','-'));

 --
 /*EVALUACIONES*/
 
ALTER TABLE Similitudes ADD CONSTRAINT CHK_porcentaje CHECK(porcentaje>=0 AND porcentaje<=100);
ALTER TABLE Evaluaciones ADD CONSTRAINT CHK_puntaje CHECK(puntaje>=0 AND puntaje<=5);
ALTER TABLE Evaluaciones ADD CONSTRAINT CHK_recomendacion CHECK(recomendaciones IN ('muy baja','muy importante'));

 --
 /*ACTIVIDADES*/

ALTER TABLE Actividades ADD CONSTRAINT CHK_horaInicio CHECK(horaInicio>=0 AND horaInicio<=59 AND horaInicio>=100 AND horaInicio<=159 AND horaInicio>=200 AND horaInicio<=259 AND horaInicio<=300 AND horaInicio<=359 AND horaInicio<=400 AND horaInicio<=459 AND horaInicio<=500 AND horaInicio<=559 AND horaInicio<=600 AND horaInicio<=659 AND horaInicio<=700 AND horaInicio<=759 AND horaInicio<=800 AND horaInicio<=859 AND horaInicio<=900 AND horaInicio<=959 AND horaInicio<=1000 AND horaInicio<=1059 AND horaInicio>=1100 AND horaInicio<=1159 AND horaInicio>=1200 AND horaInicio<=1259 AND horaInicio<=1300 AND horaInicio<=1359 AND horaInicio<=1400 AND horaInicio<=1459 AND horaInicio<=1500 AND horaInicio<=1559 AND horaInicio<=1600 AND horaInicio<=1659 AND horaInicio<=1700 AND horaInicio<=1759 AND horaInicio<=1800 AND horaInicio<=1859 AND horaInicio<=1900 AND horaInicio<=1959 AND horaInicio<=2000 
ALTER TABLE Actividades ADD CONSTRAINT CHK_Duracion CHECK(tiempoTotal>0 AND tiempoTotal<24*60 );
ALTER TABLE Fotos ADD CONSTRAINT CHK_TURL CHECK(fotos LIKE '%.%');
ALTER TABLE Registros ADD CONSTRAINT CHK_hora CHECK(hora LIKE '[0-2][0-9][0-5][0-9]' AND hora<=2359);
ALTER TABLE Registros ADD CONSTRAINT CHK_sensor CHECK(sensor IN ('C','V','P'));

insert into registros values (1,TO_DATE('04/05/2017','dd/mm/yyyy'),10,'C',25,3);

/*CICLO 1 PRIMARIAS*/
--

ALTER TABLE Participantes ADD CONSTRAINT PK_Participantes PRIMARY KEY(tid,nid);
ALTER TABLE Atletas ADD CONSTRAINT PK_Atletas PRIMARY KEY(tid,nid);
ALTER TABLE Entrenadores ADD CONSTRAINT PK_Entrenadores PRIMARY KEY(tid,nid);
ALTER TABLE Contactos ADD CONSTRAINT PK_Contactos PRIMARY KEY(participantetid, participantenid, atletatid, atletanid);
ALTER TABLE Entrenamientos ADD CONSTRAINT PK_Entrenamientos PRIMARY KEY(Atletatid, Atletanid, Entrenadortid, Entrenadornid);

ALTER TABLE Similitudes ADD CONSTRAINT PK_Similitudes PRIMARY KEY(evaluacion1tid,evaluacion1nid,evaluacion1actividad,evaluacion2tid,evaluacion2nid,evaluacion2actividad);

ALTER TABLE Evaluaciones ADD CONSTRAINT PK_Evaluaciones PRIMARY KEY(entrenadortid, entrenadornid, actividad);
ALTER TABLE Sesiones ADD CONSTRAINT PK_Sesiones PRIMARY KEY(dia, orden);
ALTER TABLE Actividades ADD CONSTRAINT PK_Actividades PRIMARY KEY(numero);
ALTER TABLE Fotos ADD CONSTRAINT PK_Fotos PRIMARY KEY(actividad,fotos);
ALTER TABLE Registros ADD CONSTRAINT PK_Registros PRIMARY KEY(actividad);
ALTER TABLE Planeadas ADD CONSTRAINT PK_Planeadas PRIMARY KEY(numero);
ALTER TABLE Libres ADD CONSTRAINT PK_Libres PRIMARY KEY(numero);

/*CICLO 1 UNICAS */
--

ALTER TABLE Evaluaciones ADD CONSTRAINT UC_Comentarios UNIQUE(comentarios);

/*CICLO 1 FORANEAS*/
--
/* PARTICIPANTE */

ALTER TABLE Contactos ADD CONSTRAINT FK_contactos_participantes FOREIGN KEY (participantetid, participantenid) REFERENCES Participantes(tid,nid);
ALTER TABLE Contactos ADD CONSTRAINT FK_contactos_atletas FOREIGN KEY (atletatid, atletanid) REFERENCES Atletas(tid,nid);
ALTER TABLE Atletas ADD CONSTRAINT FK_atletas_participantes FOREIGN KEY (tid, nid) REFERENCES Participantes(tid,nid);
ALTER TABLE Entrenadores ADD CONSTRAINT FK_entrenadores_participantes FOREIGN KEY (tid, nid) REFERENCES Participantes(tid,nid);
ALTER TABLE Entrenamientos ADD CONSTRAINT FK_entrenamientos_atletas FOREIGN KEY (atletatid, atletanid) REFERENCES Atletas(tid,nid);
ALTER TABLE Entrenamientos ADD CONSTRAINT FK_entrenamientos_entrenador FOREIGN KEY (entrenadortid, entrenadornid) REFERENCES Entrenadores(tid,nid);

--
/*SESIONES*/

ALTER TABLE Sesiones ADD CONSTRAINT FK_sesiones_atletas FOREIGN KEY (atletatid, atletanid) REFERENCES Atletas(tid,nid);

--
/*EVALUACIONES*/

ALTER TABLE Similitudes ADD CONSTRAINT FK_similitudes_evaluaciones1 FOREIGN KEY (evaluacion1tid,evaluacion1nid,evaluacion1actividad) REFERENCES Evaluaciones(entrenadortid,entrenadornid,actividad);
ALTER TABLE Similitudes ADD CONSTRAINT FK_similitudes_evaluaciones2 FOREIGN KEY (evaluacion2tid,evaluacion2nid,evaluacion2actividad) REFERENCES Evaluaciones(entrenadortid,entrenadornid,actividad);
ALTER TABLE Evaluaciones ADD CONSTRAINT FK_evaluaciones_entrenador FOREIGN KEY (entrenadortid, entrenadornid) REFERENCES Entrenadores(tid,nid);
ALTER TABLE Evaluaciones ADD CONSTRAINT FK_evaluaciones_actividades FOREIGN KEY (actividad) REFERENCES Actividades(numero);

--
/*ACTIVIDADES*/

ALTER TABLE Libres ADD CONSTRAINT FK_libres_actividades FOREIGN KEY (numero) REFERENCES Actividades(numero);
ALTER TABLE Planeadas ADD CONSTRAINT FK_planeadas_actividades FOREIGN KEY (numero) REFERENCES Actividades(numero);
ALTER TABLE Planeadas ADD CONSTRAINT FK_planeadas_sesiones FOREIGN KEY (sesiondia,sesionorden) REFERENCES Sesiones(dia,orden);
ALTER TABLE Registros ADD CONSTRAINT FK_registros_actividades FOREIGN KEY (actividad) REFERENCES Actividades(numero);
ALTER TABLE Fotos ADD CONSTRAINT FK_fotos_actividades FOREIGN KEY (actividad) REFERENCES Actividades(numero);

--ALTER TABLE Libres ADD CONSTRAINT FK_libres_atletas FOREIGN KEY () REFERENCES Actividades(numero);--





























