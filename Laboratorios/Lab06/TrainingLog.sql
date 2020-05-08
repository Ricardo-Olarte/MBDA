/*TABLAS*/
CREATE TABLE Participantes(
tid VARCHAR(38) NOT NULL,
nid VARCHAR(38) NOT NULL,
email VARCHAR(50) NOT NULL,
pais VARCHAR(50) NOT NULL,
fRegistro DATE NOT NULL,
fRetiro DATE
);

CREATE TABLE Atletas(
tid VARCHAR(38) NOT NULL,
nid VARCHAR(38) NOT NULL,
rh VARCHAR(38) NOT NULL,
tSangre VARCHAR(38) NOT NULL
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

CREATE TABLE Sesiones(
dia NUMBER(10) NOT NULL,
orden NUMBER(10) NOT NULL,
duracion NUMBER(10) NOT NULL,
descripcion VARCHAR(100) NOT NULL,
atletatid VARCHAR(3) NOT NULL,
atletanid VARCHAR(15) NOT NULL
);

--------------------EVALUACIONES------------------
CREATE TABLE Evaluaciones(
numero NUMBER(10) NOT NULL,
fecha DATE NOT NULL,
puntaje NUMBER(1)NOT NULL,
comentarios VARCHAR(500),
recomendaciones XMLTYPE NOT NULL,
entrenadortid VARCHAR(3) NOT NULL,
entrenadornid VARCHAR(15) NOT NULL,
actividad NUMBER(10) NOT NULL
);
---------------------------------------------------
CREATE TABLE Similitudes(
evaluacion1tid VARCHAR(3) NOT NULL,
evaluacion1nid VARCHAR(15) NOT NULL,
evaluacion1actividad NUMBER(10) NOT NULL,
evaluacion2tid VARCHAR(3) NOT NULL,
evaluacion2nid VARCHAR(15) NOT NULL,
evaluacion2actividad NUMBER(10) NOT NULL,
porcentaje NUMBER(3) NOT NULL
);

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


/*Atributos*/
ALTER TABLE Atletas ADD CONSTRAINT CHK_tipoSangre CHECK(tSangre IN ('A', 'B', 'O', 'AB'));
ALTER TABLE Atletas ADD CONSTRAINT CHK_rh CHECK(rh IN ('+','-'));
ALTER TABLE Similitudes ADD CONSTRAINT CHK_porcentaje CHECK(porcentaje>=0 AND porcentaje<=100);
ALTER TABLE Evaluaciones ADD CONSTRAINT CHK_puntaje CHECK(puntaje>=0 AND puntaje<=5);
ALTER TABLE Actividades ADD CONSTRAINT CHK_horaInicio CHECK(MOD(horaInicio,100)<60 AND horaInicio<=2359);
ALTER TABLE Actividades ADD CONSTRAINT CHK_Duracion CHECK(tiempoTotal>0 AND tiempoTotal<24*60 );
ALTER TABLE Fotos ADD CONSTRAINT CHK_TURL CHECK(fotos LIKE '%.%');
ALTER TABLE Registros ADD CONSTRAINT CHK_hora CHECK(MOD(hora,100)<60 AND hora<=2359);
ALTER TABLE Registros ADD CONSTRAINT CHK_sensor CHECK(sensor IN ('C','V','P'));

/*Primarias*/
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
ALTER TABLE Registros ADD CONSTRAINT PK_Registros PRIMARY KEY(actividad, sensor, valor);
ALTER TABLE Planeadas ADD CONSTRAINT PK_Planeadas PRIMARY KEY(numero);
ALTER TABLE Libres ADD CONSTRAINT PK_Libres PRIMARY KEY(numero);

/*Unicas*/
ALTER TABLE Evaluaciones ADD CONSTRAINT UC_Comentarios UNIQUE(comentarios);

/*Foraneas*/
ALTER TABLE Contactos ADD CONSTRAINT FK_contactos_participantes FOREIGN KEY (participantetid, participantenid) REFERENCES Participantes(tid,nid);
ALTER TABLE Contactos ADD CONSTRAINT FK_contactos_atletas FOREIGN KEY (atletatid, atletanid) REFERENCES Atletas(tid,nid);
ALTER TABLE Atletas ADD CONSTRAINT FK_atletas_participantes FOREIGN KEY (tid, nid) REFERENCES Participantes(tid,nid);
ALTER TABLE Entrenadores ADD CONSTRAINT FK_entrenadores_participantes FOREIGN KEY (tid, nid) REFERENCES Participantes(tid,nid);
ALTER TABLE Entrenamientos ADD CONSTRAINT FK_entrenamientos_atletas FOREIGN KEY (atletatid, atletanid) REFERENCES Atletas(tid,nid);
ALTER TABLE Entrenamientos ADD CONSTRAINT FK_entrenamientos_entrenador FOREIGN KEY (entrenadortid, entrenadornid) REFERENCES Entrenadores(tid,nid);
ALTER TABLE Sesiones ADD CONSTRAINT FK_sesiones_atletas FOREIGN KEY (atletatid, atletanid) REFERENCES Atletas(tid,nid);
ALTER TABLE Similitudes ADD CONSTRAINT FK_similitudes_evaluaciones1 FOREIGN KEY (evaluacion1tid,evaluacion1nid,evaluacion1actividad) REFERENCES Evaluaciones(entrenadortid,entrenadornid,actividad);
ALTER TABLE Similitudes ADD CONSTRAINT FK_similitudes_evaluaciones2 FOREIGN KEY (evaluacion2tid,evaluacion2nid,evaluacion2actividad) REFERENCES Evaluaciones(entrenadortid,entrenadornid,actividad);
ALTER TABLE Evaluaciones ADD CONSTRAINT FK_evaluaciones_entrenador FOREIGN KEY (entrenadortid, entrenadornid) REFERENCES Entrenadores(tid,nid);
ALTER TABLE Evaluaciones ADD CONSTRAINT FK_evaluaciones_actividades FOREIGN KEY (actividad) REFERENCES Actividades(numero);
ALTER TABLE Libres ADD CONSTRAINT FK_libres_actividades FOREIGN KEY (numero) REFERENCES Actividades(numero);
ALTER TABLE Planeadas ADD CONSTRAINT FK_planeadas_actividades FOREIGN KEY (numero) REFERENCES Actividades(numero);
ALTER TABLE Planeadas ADD CONSTRAINT FK_planeadas_sesiones FOREIGN KEY (sesiondia,sesionorden) REFERENCES Sesiones(dia,orden);
ALTER TABLE Registros ADD CONSTRAINT FK_registros_actividades FOREIGN KEY (actividad) REFERENCES Actividades(numero);
ALTER TABLE Fotos ADD CONSTRAINT FK_fotos_actividades FOREIGN KEY (actividad) REFERENCES Actividades(numero);
ALTER TABLE Libres ADD CONSTRAINT FK_libres_atletas FOREIGN KEY (atletatid,atletanid) REFERENCES Atletas(tid,nid);


/*-----------------------------------------------------PoblarOk----------------------------------------------------------*/
/*Participantes*/
/* INSERT QUERY NO: 1 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '197749761-6', 'gsaker0@eventbrite.com', 'Russia', TO_DATE('23/01/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 2 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '455195302-4', 'klinggood1@addthis.com', 'Indonesia', TO_DATE('05/01/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 3 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '045687279-5', 'jpizzie2@com.com', 'Armenia', TO_DATE('12/09/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 4 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '273805402-1', 'bjakubczyk3@usatoday.com', 'Tajikistan', TO_DATE('18/09/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 5 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '950104411-4', 'ggibbieson4@webs.com', 'Portugal', TO_DATE('28/07/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 6 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '647036274-5', 'bpavlitschek5@infoseek.co.jp', 'Russia', TO_DATE('02/09/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 7 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '172032985-0', 'dverrell6@flickr.com', 'Indonesia', TO_DATE('28/03/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 8 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '755410562-0', 'rdogg7@earthlink.net', 'Finland', TO_DATE('23/06/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 9 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '991264865-X', 'tpailin8@odnoklassniki.ru', 'Indonesia', TO_DATE('13/06/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 10 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '602069722-3', 'grundle9@so-net.ne.jp', 'Portugal', TO_DATE('02/07/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 11 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '992968900-1', 'bluckena@latimes.com', 'China', TO_DATE('15/04/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 12 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '870310947-X', 'vbickb@twitter.com', 'Philippines', TO_DATE('17/01/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 13 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '238382846-7', 'rlandrieuc@howstuffworks.com', 'Indonesia', TO_DATE('10/02/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 14 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '678974743-5', 'sambrogionid@blogs.com', 'Bosnia and Herzegovina', TO_DATE('19/05/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 15 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '784756900-0', 'bcridlande@github.com', 'China', TO_DATE('08/03/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 16 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '668923305-7', 'gskrynef@amazon.com', 'Indonesia', TO_DATE('23/02/2020', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 17 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '355142112-9', 'oclemittg@europa.eu', 'Russia', TO_DATE('12/03/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 18 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '573662916-X', 'nlissendenh@hc360.com', 'Russia', TO_DATE('12/12/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 19 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '500157399-8', 'eyirrelli@amazonaws.com', 'Indonesia', TO_DATE('23/08/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 20 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '772794145-X', 'epettegreej@imageshack.us', 'Japan', TO_DATE('07/07/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 21 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '757702847-9', 'rcameronk@wikimedia.org', 'Argentina', TO_DATE('27/01/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 22 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '837085394-3', 'wbaylyl@devhub.com', 'Indonesia', TO_DATE('07/11/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 23 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '319710792-6', 'ksiggerym@friendfeed.com', 'Brazil', TO_DATE('21/01/2020', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 24 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '180974597-7', 'pdownagen@so-net.ne.jp', 'Russia', TO_DATE('08/03/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 25 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '446874057-4', 'jjaggso@wsj.com', 'Cuba', TO_DATE('24/07/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 26 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '547469553-5', 'zgutersonp@businessinsider.com', 'Peru', TO_DATE('12/10/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 27 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '268185200-5', 'jnisardq@issuu.com', 'China', TO_DATE('19/02/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 28 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '142556690-1', 'mstockbridger@cpanel.net', 'South Korea', TO_DATE('15/11/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 29 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '684999265-1', 'ltilliards@java.com', 'Kazakhstan', TO_DATE('21/02/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 30 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '191825348-X', 'tclericoatest@examiner.com', 'France', TO_DATE('06/04/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 31 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '707296260-3', 'tdisleeu@hc360.com', 'Russia', TO_DATE('18/02/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 32 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '443901069-5', 'eglaysherv@blinklist.com', 'Zambia', TO_DATE('19/12/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 33 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '980845648-0', 'jworrellw@ning.com', 'Philippines', TO_DATE('18/04/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 34 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '611298902-6', 'lkellx@phoca.cz', 'Brazil', TO_DATE('30/07/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 35 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '121113018-5', 'cclemmetty@nba.com', 'Portugal', TO_DATE('08/09/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 36 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '372528156-4', 'dburgottz@yahoo.co.jp', 'Brazil', TO_DATE('25/02/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 37 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '298997851-8', 'fburkart10@mashable.com', 'Finland', TO_DATE('22/01/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 38 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '451777530-5', 'acoumbe11@51.la', 'Brazil', TO_DATE('13/11/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 39 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '392417079-7', 'pjurewicz12@admin.ch', 'Japan', TO_DATE('27/01/2020', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 40 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '454746010-8', 'jhetterich13@businesswire.com', 'North Korea', TO_DATE('08/10/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 41 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '456830838-0', 'cgrigorio14@eepurl.com', 'China', TO_DATE('19/10/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 42 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '592057680-4', 'lharrow15@gov.uk', 'China', TO_DATE('16/11/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 43 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '126306171-0', 'agrigorushkin16@wix.com', 'Guinea', TO_DATE('10/10/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 44 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '580226529-9', 'jattac17@wiley.com', 'Indonesia', TO_DATE('13/03/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 45 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '964062243-5', 'imarco18@ftc.gov', 'China', TO_DATE('09/02/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 46 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '687114812-4', 'dgoligher19@weather.com', 'Russia', TO_DATE('03/03/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 47 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '465276430-8', 'pivey1a@twitpic.com', 'Guatemala', TO_DATE('17/12/2016', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 48 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '762138992-3', 'eleyden1b@dagondesign.com', 'Russia', TO_DATE('23/11/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 49 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '601910156-8', 'gslowly1c@scientificamerican.com', 'China', TO_DATE('06/12/2016', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 50 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '296046449-4', 'aoflaverty1d@bing.com', 'Ukraine', TO_DATE('20/09/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 51 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '278104359-1', 'lniese1e@netscape.com', 'Sierra Leone', TO_DATE('07/10/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 52 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '015569302-6', 'sspridgen1f@nymag.com', 'China', TO_DATE('14/04/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 53 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '569423977-6', 'bbloss1g@themeforest.net', 'Ukraine', TO_DATE('10/12/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 55 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '463873102-3', 'kverduin1i@cisco.com', 'Vietnam', TO_DATE('13/03/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 56 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '018084591-8', 'mnapolitano1j@networkadvertising.org', 'Argentina', TO_DATE('19/03/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 57 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '910866863-9', 'vmcconnulty1k@1688.com', 'China', TO_DATE('15/01/2020', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 58 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '964003196-8', 'bmonkhouse1l@yolasite.com', 'Azerbaijan', TO_DATE('24/03/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 59 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '285261921-0', 'makhurst1m@imageshack.us', 'Poland', TO_DATE('23/10/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 60 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '940525951-2', 'gschollar1n@e-recht24.de', 'China', TO_DATE('07/01/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 61 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '631444051-3', 'bchick1o@squidoo.com', 'Russia', TO_DATE('13/12/2016', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 62 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '289676896-3', 'sbarkhouse1p@cargocollective.com', 'Japan', TO_DATE('26/01/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 63 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '368740104-9', 'lhryskiewicz1q@nydailynews.com', 'Armenia', TO_DATE('21/07/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 64 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '395213209-8', 'rmurrthum1r@gnu.org', 'Tunisia', TO_DATE('25/07/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 65 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '834957005-9', 'hdukesbury1s@cocolog-nifty.com', 'Colombia', TO_DATE('14/10/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 66 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '913934158-5', 'sheakins1t@twitter.com', 'France', TO_DATE('28/10/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 67 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '510050937-6', 'yalger1u@whitehouse.gov', 'China', TO_DATE('11/12/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 68 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '359642935-8', 'esyddon1v@zdnet.com', 'China', TO_DATE('20/01/2020', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 69 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '197048671-6', 'dscolland1w@ed.gov', 'Indonesia', TO_DATE('30/08/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 70 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '363975018-7', 'flindenbluth1x@sakura.ne.jp', 'Indonesia', TO_DATE('02/01/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 71 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '459345336-4', 'hlinnane1y@bloglines.com', 'Indonesia', TO_DATE('08/01/2020', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 72 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '833159155-0', 'ifaraker1z@vimeo.com', 'Russia', TO_DATE('05/01/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 73 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '953327467-0', 'mshepherdson20@sciencedirect.com', 'United States', TO_DATE('16/08/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 74 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '740756795-6', 'ibarwick21@trellian.com', 'Indonesia', TO_DATE('30/09/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 75 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '312774947-3', 'rcarthy22@seattletimes.com', 'Portugal', TO_DATE('26/02/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 76 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '375333599-1', 'gpaullin23@twitpic.com', 'Russia', TO_DATE('26/02/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 77 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '839847753-9', 'cmicka24@163.com', 'China', TO_DATE('21/11/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 78 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '004636878-7', 'abourges25@biglobe.ne.jp', 'Ghana', TO_DATE('13/03/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 79 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '456090223-2', 'gcutsforth26@dyndns.org', 'China', TO_DATE('17/08/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 80 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '119422242-0', 'ckovnot27@nba.com', 'Sweden', TO_DATE('17/03/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 81 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '597250522-3', 'tdoerffer28@bbc.co.uk', 'United States', TO_DATE('27/02/2020', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 82 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '737483599-X', 'cjesper29@virginia.edu', 'Ukraine', TO_DATE('19/10/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 83 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '361471821-2', 'dsmithend2a@instagram.com', 'China', TO_DATE('29/05/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 84 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '607030235-4', 'pdancer2b@bbc.co.uk', 'Indonesia', TO_DATE('14/08/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 85 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '972810091-4', 'dainscow2c@walmart.com', 'Macedonia', TO_DATE('20/02/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 86 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '463580860-2', 'eadds2d@elegantthemes.com', 'China', TO_DATE('19/08/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 87 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '223880374-2', 'akimbley2e@sciencedirect.com', 'Syria', TO_DATE('15/11/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 88 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '266303961-6', 'atopling2f@who.int', 'Japan', TO_DATE('30/11/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 89 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '038152999-1', 'jhirjak2g@reverbnation.com', 'Nicaragua', TO_DATE('29/12/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 90 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '503460435-3', 'pboulding2h@twitpic.com', 'Thailand', TO_DATE('24/04/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 91 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '717261326-0', 'vmccarly2i@lycos.com', 'El Salvador', TO_DATE('04/02/2018', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 92 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '168019397-X', 'lhadwen2j@tinypic.com', 'Sweden', TO_DATE('06/07/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 93 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'TI', '417890203-2', 'gspolton2k@cnet.com', 'Poland', TO_DATE('07/05/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 94 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '141956269-X', 'pgarley2l@printfriendly.com', 'China', TO_DATE('11/12/2016', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 95 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '530963119-4', 'mreedick2m@goodreads.com', 'Sweden', TO_DATE('20/11/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 96 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '725641380-7', 'skubicki2n@example.com', 'Norway', TO_DATE('06/11/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 97 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '074127804-9', 'bmityashin2o@msn.com', 'Indonesia', TO_DATE('25/11/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 98 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '197026365-2', 'dcaddie2p@tripadvisor.com', 'Sweden', TO_DATE('11/10/2017', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 99 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '018071734-0', 'kgrangier2q@washington.edu', 'China', TO_DATE('27/12/2016', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 100 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CE', '545671317-9', 'ymacdougall2r@friendfeed.com', 'Kenya', TO_DATE('20/10/2019', 'dd/mm/yyyy'),null
);

/* INSERT QUERY NO: 100 */
INSERT INTO Participantes(tid, nid, email, pais, fRegistro, fRetiro)
VALUES
(
'CC', '423029084-5', 'pruebaprueba@friendfeed.com', 'Colombia', TO_DATE('20/10/2019', 'dd/mm/yyyy'),null
);

/*Atletas*/
/* INSERT QUERY NO: 1 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '197749761-6', '+', 'B'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '455195302-4', '+', 'B'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '045687279-5', '+', 'B'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '273805402-1', '+', 'O'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '950104411-4', '-', 'B'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '647036274-5', '+', 'A'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '172032985-0', '+', 'B'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '755410562-0', '-', 'AB'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '991264865-X', '-', 'A'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '602069722-3', '+', 'AB'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '992968900-1', '-', 'B'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '870310947-X', '+', 'A'
);

/* INSERT QUERY NO: 13 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '238382846-7', '-', 'A'
);

/* INSERT QUERY NO: 14 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '678974743-5', '+', 'AB'
);

/* INSERT QUERY NO: 15 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '784756900-0', '-', 'AB'
);

/* INSERT QUERY NO: 16 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '668923305-7', '+', 'A'
);

/* INSERT QUERY NO: 17 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '355142112-9', '-', 'O'
);

/* INSERT QUERY NO: 18 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '573662916-X', '+', 'B'
);

/* INSERT QUERY NO: 19 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '500157399-8', '-', 'O'
);

/* INSERT QUERY NO: 20 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '772794145-X', '-', 'O'
);

/* INSERT QUERY NO: 21 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '757702847-9', '+', 'A'
);

/* INSERT QUERY NO: 22 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '837085394-3', '-', 'O'
);

/* INSERT QUERY NO: 23 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '319710792-6', '-', 'O'
);

/* INSERT QUERY NO: 24 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '180974597-7', '+', 'O'
);

/* INSERT QUERY NO: 25 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '446874057-4', '+', 'A'
);

/* INSERT QUERY NO: 26 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '547469553-5', '+', 'B'
);

/* INSERT QUERY NO: 27 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '268185200-5', '+', 'B'
);

/* INSERT QUERY NO: 28 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '142556690-1', '-', 'AB'
);

/* INSERT QUERY NO: 29 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '684999265-1', '-', 'B'
);

/* INSERT QUERY NO: 30 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '191825348-X', '-', 'B'
);

/* INSERT QUERY NO: 31 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '707296260-3', '-', 'O'
);

/* INSERT QUERY NO: 32 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '443901069-5', '-', 'A'
);

/* INSERT QUERY NO: 33 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '980845648-0', '-', 'O'
);

/* INSERT QUERY NO: 34 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '611298902-6', '+', 'B'
);

/* INSERT QUERY NO: 35 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '121113018-5', '+', 'AB'
);

/* INSERT QUERY NO: 36 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '372528156-4', '+', 'A'
);

/* INSERT QUERY NO: 37 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '298997851-8', '+', 'O'
);

/* INSERT QUERY NO: 38 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '451777530-5', '+', 'B'
);

/* INSERT QUERY NO: 39 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '392417079-7', '+', 'B'
);

/* INSERT QUERY NO: 40 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '454746010-8', '-', 'A'
);

/* INSERT QUERY NO: 41 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '456830838-0', '-', 'O'
);

/* INSERT QUERY NO: 42 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '592057680-4', '+', 'B'
);

/* INSERT QUERY NO: 43 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '126306171-0', '+', 'A'
);

/* INSERT QUERY NO: 44 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '580226529-9', '-', 'O'
);

/* INSERT QUERY NO: 45 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '964062243-5', '+', 'AB'
);

/* INSERT QUERY NO: 46 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '687114812-4', '+', 'O'
);

/* INSERT QUERY NO: 47 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '465276430-8', '+', 'A'
);

/* INSERT QUERY NO: 48 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CE', '762138992-3', '+', 'B'
);

/* INSERT QUERY NO: 49 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'CC', '601910156-8', '+', 'B'
);

/* INSERT QUERY NO: 50 */
INSERT INTO Atletas(tid, nid, rh, tSangre)
VALUES
(
'TI', '296046449-4', '+', 'B'
);

/*Entrenadores*/
/* INSERT QUERY NO: 1 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '278104359-1', '143eHzpf3UjJLXFKGCikhoztJFh45WixWz'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '015569302-6', '1BtrzQ1Zr7atdktLcu5DtZtnoB6Z5LdXgx'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '569423977-6', '1FcXcPqzo6HkZrUM9Cic7eF5L7x9p9ezyk'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '423029084-5', '17toWsK1VhkeRiTcif9trbodaDGBKWRf6W'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '463873102-3', '1Fe6idk7zUHPK2q2BM5RNCt4uoHPQGDsqB'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '018084591-8', '1FNV9jW19MyTVBt83GM9YeAhsFbjShdsUd'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '910866863-9', '1poiWf9kzpHBgLfWunVuSWNGNTkhWZh84'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '964003196-8', '1781xAdP23JcHNjCavvLjSiSY5zLKdbb2X'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '285261921-0', '113nDUg5r6Azs7y7593NLzYfing5CfJtF'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '940525951-2', '1MhoeyrzRfsxiVZdHPcAZY2uqSPkabugJt'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '631444051-3', '1G9P5h5u6aQ2f1CQHoUMBe4qNLKJBWRN69'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '289676896-3', '16N5Bj8xJBVgY5pVn9qVLxiK91H3N7tu5Q'
);

/* INSERT QUERY NO: 13 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '368740104-9', '19CVqr8uJDGeKtpw8zRMekigKcU88YP5bm'
);

/* INSERT QUERY NO: 14 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '395213209-8', '1MYrWEX8WtnKeY8Mv8eLpaXpVjzZLWr8bw'
);

/* INSERT QUERY NO: 15 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '834957005-9', '1AKBiH7JdwHCCusucYEPv4RC5omJan5968'
);

/* INSERT QUERY NO: 16 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '913934158-5', '12XFwjBbhfBfJv6pgcaeTJgNh1SiLVApRv'
);

/* INSERT QUERY NO: 17 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '510050937-6', '1DPMph6WgKXQgf29JUaGuSZ5Vc7i1KA4cK'
);

/* INSERT QUERY NO: 18 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '359642935-8', '1AogKDXbL7d5fd22DZvtCoe9dWdYVswzoP'
);

/* INSERT QUERY NO: 19 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '197048671-6', '17y3d8HCAwoRADTBqDkvG3PnsFvB3WGq1w'
);

/* INSERT QUERY NO: 20 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '363975018-7', '164PAF53YV3fMxcHYx4bAVkm6fSzomNVj5'
);

/* INSERT QUERY NO: 21 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '459345336-4', '1866QUV6yGCQfMmZK9g2noAkmkpfWbaRx1'
);

/* INSERT QUERY NO: 22 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '833159155-0', '1GZsgBYgAPtH2KTggYPRq2wBXbWJtuGHVy'
);

/* INSERT QUERY NO: 23 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '953327467-0', '163yA66LcCBo1U8neFgEFBWQGbnGpnmNvc'
);

/* INSERT QUERY NO: 24 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '740756795-6', '18EE6wDBcrbMGJxu4hWcvkanuwM1NEZRx7'
);

/* INSERT QUERY NO: 25 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '312774947-3', '1PgJHeT4LGxWYeAE9SbGgjTwVQ6uvZBN5D'
);

/* INSERT QUERY NO: 26 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '375333599-1', '1MixNnDnfxXcrnHTASt9JJFRvxR5pEk1a9'
);

/* INSERT QUERY NO: 27 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '839847753-9', '163bF2i9C48b2NVbzbYC8qQYe1T7S1wiMT'
);

/* INSERT QUERY NO: 28 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '004636878-7', '1Cv7LMA2aKMJPTh5xmKPE1wD2BVLYeB1Ce'
);

/* INSERT QUERY NO: 29 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '456090223-2', '1HmpALnfsdrsUNrMXnrfiuQS9bD6HcAz8F'
);

/* INSERT QUERY NO: 30 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '119422242-0', '13CGFH1ArqRnuFMi5rH8RXSpmEmQbgEtPc'
);

/* INSERT QUERY NO: 31 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '597250522-3', '1NZueogU4dy61KxbxwG6TSo19EnDA7NaZp'
);

/* INSERT QUERY NO: 32 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '737483599-X', '1EDyYLzxDmxqZ6pzozqpDtUCb37cCHAaKQ'
);

/* INSERT QUERY NO: 33 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '361471821-2', '1CUU8aLHcvQ1yC5kDtnp4CyReK3e227bqu'
);

/* INSERT QUERY NO: 34 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '607030235-4', '1C4W4WENiTWoU6KnWneb5mbq3SuZ5gDA1r'
);

/* INSERT QUERY NO: 35 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '972810091-4', '1EzHLwm1iG4fNNhjmVWhueLgZpfACQBZNh'
);

/* INSERT QUERY NO: 36 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '463580860-2', '1L2mqsvqUbToGJeC8XKT8xqZsokXVU8Tti'
);

/* INSERT QUERY NO: 37 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '223880374-2', '1JVk1SYp4U3zwfCov9dNU5mWYjVym73cFP'
);

/* INSERT QUERY NO: 38 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '266303961-6', '18jgqbzW9N4m3PcTA2AJx1J8f9HyVJpuTr'
);

/* INSERT QUERY NO: 39 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '038152999-1', '1PngN7FbWvC3cCxbbnw4tUUuJQX1SdrFKx'
);

/* INSERT QUERY NO: 40 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '503460435-3', '1Ksmmiv3yT9HoqNTBqQKwpa7rYo5vWhYiw'
);

/* INSERT QUERY NO: 41 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '717261326-0', '1Ldkjs7KV1abjQ7mdXXEQtnadYp5KufQBq'
);

/* INSERT QUERY NO: 42 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '168019397-X', '1LKCBDMHU7JeiEBmChCdU7LTDoJtbvHCA9'
);

/* INSERT QUERY NO: 43 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'TI', '417890203-2', '12Cj8AfihdvLW847WEbUK2jC2zCUfTtd4n'
);

/* INSERT QUERY NO: 44 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '141956269-X', '19Gb8dANA8Mdh2UxU3BP3aosYp3GSUTLyC'
);

/* INSERT QUERY NO: 45 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '530963119-4', '17kbQ2BcL2BLpNegfGDeJAorjaZFS9ahwk'
);

/* INSERT QUERY NO: 46 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '725641380-7', '1PpdnvViDLir331HWQDhoV2zqwGwXiqPp6'
);

/* INSERT QUERY NO: 47 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CC', '074127804-9', '1JxMs3SnbZfztZWc8MhxfmvMhQGnovSrN8'
);

/* INSERT QUERY NO: 48 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '197026365-2', '14SZMbHaHDaLiCSpp4C351pPRtzT1GkcUU'
);

/* INSERT QUERY NO: 49 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '018071734-0', '15mbQiYTu61SPmwpWtw6YaEbaZFAvgXrGB'
);

/* INSERT QUERY NO: 50 */
INSERT INTO Entrenadores(tid, nid, seguro)
VALUES
(
'CE', '545671317-9', '1LYM3bESdg9PpH3yLRHEFRs83oN7UG8DpU'
);

/*Sesiones*/
/* INSERT QUERY NO: 1 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(18, 98, 105, 'Puncture wound with foreign body unspecified hip sequela', 'CE', '197749761-6');

/* INSERT QUERY NO: 2 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(0, 6, 332, 'Unsp injury of adductor musc fasc tend left thigh subs', 'CC', '455195302-4');

/* INSERT QUERY NO: 3 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(16, 12, 238, 'Lac wo fb of left great toe w damage to nail sequela', 'TI', '045687279-5');

/* INSERT QUERY NO: 4 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(22, 76, 122, 'Mucopolysaccharidosis type I', 'CE', '273805402-1');

/* INSERT QUERY NO: 5 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(5,51, 187, 'Unsp mtrcy rider injured in clsn w oth and unsp mv in traf', 'CE', '950104411-4'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(26, 33, 113, 'Adverse effect of smallpox vaccines subsequent encounter', 'CE', '647036274-5');

/* INSERT QUERY NO: 7 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(4, 35, 162, 'Other conjunctivitis', 'CE', '172032985-0');

/* INSERT QUERY NO: 8 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(22, 48, 130, 'Traum rupt of unsp ligmt of l rng fngr at MCP IP jt sequela', 'CE', '755410562-0');

/* INSERT QUERY NO: 9 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(16, 77, 69, 'Maternal care for Anti A sensitization first tri unsp', 'CE', '991264865-X');

/* INSERT QUERY NO: 10 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(28, 42, 94, 'Pneumoconiosis due to other dust containing silica', 'CC', '602069722-3');

/* INSERT QUERY NO: 11 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(8, 42, 73, 'Disord of branched chain amino-acid metab  fatty acid metab', 'CE', '992968900-1');

/* INSERT QUERY NO: 12 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(1, 54, 352, 'Unsp pedl cyclst injured in nonclsn trnsp acc nontraf init', 'CE', '870310947-X');

/* INSERT QUERY NO: 13 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(14, 28, 248, 'Other secondary gout left hand', 'TI', '238382846-7');

/* INSERT QUERY NO: 14 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(12, 87, 128, 'Tuberculosis of other specified organs', 'CC', '678974743-5');

/* INSERT QUERY NO: 15 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(4, 2, 341, 'Contact with nonpowered hand tool', 'TI', '784756900-0');

/* INSERT QUERY NO: 16 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(12, 90, 339, 'Glaucoma w increased episcleral venous pressure bilateral', 'CE', '668923305-7');

/* INSERT QUERY NO: 17 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(24, 47, 254, 'Disloc of unsp interphaln joint of r little finger sequela', 'TI', '355142112-9');

/* INSERT QUERY NO: 18 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(30, 28, 154, 'Other specified diabetes mellitus with hyperglycemia', 'CC', '573662916-X');

/* INSERT QUERY NO: 19 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(4, 97, 202, 'Minor lacerat femoral vein at hip and thigh level left leg', 'TI', '500157399-8');

/* INSERT QUERY NO: 20 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(30, 6, 215, 'Frostbite with tissue necrosis of wrist', 'TI', '772794145-X');

/* INSERT QUERY NO: 21 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(24, 12, 247, 'Nondisp fx of shaft of 2nd MC bone r hand init for opn fx', 'TI', '757702847-9');

/* INSERT QUERY NO: 22 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(19, 72, 233, 'Burn of second degree of right ankle', 'TI', '837085394-3');

/* INSERT QUERY NO: 24 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(5, 81, 102, 'Unsp injury of unspecified tibial artery unspecified leg', 'CE', '180974597-7');

/* INSERT QUERY NO: 25 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(30, 22, 231, 'Displ osteochon fx unsp patella subs for clos fx w nonunion', 'TI', '446874057-4');

/* INSERT QUERY NO: 26 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(26, 20, 279, 'Otosclerosis involving oval window nonobliterative', 'CC', '547469553-5');

/* INSERT QUERY NO: 27 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(8, 73, 69, 'Nondisp commnt fx unsp patella 7thR', 'CC', '268185200-5');

/* INSERT QUERY NO: 28 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(23, 73, 171, 'Inj musc fasc tend at shldr up arm right arm sequela', 'CC', '142556690-1');

/* INSERT QUERY NO: 29 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(12, 48, 268, 'Other congenital corneal malformations', 'CE', '684999265-1');

/* INSERT QUERY NO: 30 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(31, 19, 332, 'Unspecified fracture of fifth metacarpal bone right hand', 'TI', '191825348-X');

/* INSERT QUERY NO: 31 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(19, 7, 351, 'Disp fx of dist phalanx of r mid fngr 7thK', 'CE', '707296260-3');

/* INSERT QUERY NO: 32 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(14, 14, 176, 'Blister nonthermal of thumb', 'CC', '443901069-5');

/* INSERT QUERY NO: 33 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(3, 50, 171, 'Injury of olfactory nerve right side subsequent encounter', 'TI', '980845648-0');

/* INSERT QUERY NO: 34 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(4, 63, 158, 'Oth complications of procedures NEC sequela', 'TI', '611298902-6');

/* INSERT QUERY NO: 35 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(14, 68, 148, 'Open bite of unsp eyelid and periocular area init encntr', 'TI', '121113018-5');

/* INSERT QUERY NO: 36 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(19, 95, 187, 'Chorioretinal scars after surgery for detachment unsp eye', 'CC', '372528156-4');

/* INSERT QUERY NO: 37 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(3, 70, 136, 'Injury of bronchus', 'CE', '298997851-8');

/* INSERT QUERY NO: 38 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(24, 81, 129, 'Nondisplaced subtrochanteric fracture of left femur sequela', 'CE', '451777530-5');

/* INSERT QUERY NO: 39 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(21, 2, 253, 'Otorrhea', 'CE', '392417079-7');

/* INSERT QUERY NO: 40 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(26, 76, 137, 'Corrosion of first degree of oth site of trunk  subs encntr', 'CC', '454746010-8');

/* INSERT QUERY NO: 41 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(15, 38, 351, 'Unspecified dislocation of right radial head sequela', 'CC', '456830838-0');

/* INSERT QUERY NO: 42 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(12, 12, 69, 'Oth osteopor w current path fracture right ank ft init', 'CE', '592057680-4');

/* INSERT QUERY NO: 43 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(7, 82, 247, 'Burn of unspecified degree of neck subsequent encounter', 'CE', '126306171-0');

/* INSERT QUERY NO: 44 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(20, 78, 67, 'Nondisp avuls fx tuberosity of unsp calcaneus 7thG', 'CC', '580226529-9');

/* INSERT QUERY NO: 45 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(19, 37, 220, 'Pathological fracture in neoplastic disease left tibia', 'TI', '964062243-5');

/* INSERT QUERY NO: 46 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(22, 55, 347, 'Other specified diabetes mellitus with diabetic arthropathy', 'TI', '687114812-4');

/* INSERT QUERY NO: 47 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(25, 96, 95, 'Disp fx of 4th metatarsal bone r ft 7thG', 'TI', '465276430-8');

/* INSERT QUERY NO: 48 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(23, 40, 196, 'Urgent care center as place', 'CE', '762138992-3');

/* INSERT QUERY NO: 49 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(25, 34, 338, 'Viral infection unspecified', 'CC', '601910156-8');

/* INSERT QUERY NO: 50 */
INSERT INTO Sesiones(dia, orden, duracion, descripcion, atletatid, atletanid)
VALUES(10, 69, 355, 'Chronic lymphocytic leukemia of B-cell type in remission', 'TI', '296046449-4');

/*Actividades*/
/* INSERT QUERY NO: 1 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(1, TO_DATE('30/08/2019', 'dd/mm/yyyy'), 700, 92, 94);

/* INSERT QUERY NO: 2 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(2, TO_DATE('22/06/2019', 'dd/mm/yyyy'), 2000, 118, 94);

/* INSERT QUERY NO: 3 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(3, TO_DATE('19/06/2019', 'dd/mm/yyyy'), 1400, 96, 94);

/* INSERT QUERY NO: 4 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(4, TO_DATE('20/10/2019', 'dd/mm/yyyy'), 700, 111, 94);

/* INSERT QUERY NO: 5 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(5, TO_DATE('04/02/2020', 'dd/mm/yyyy'), 2000, 49, 94);

/* INSERT QUERY NO: 6 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(6, TO_DATE('25/12/2019', 'dd/mm/yyyy'), 800, 107, 94);

/* INSERT QUERY NO: 7 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(7, TO_DATE('29/06/2019', 'dd/mm/yyyy'), 1800, 58, 94);

/* INSERT QUERY NO: 8 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(8, TO_DATE('16/04/2019', 'dd/mm/yyyy'), 1400, 93, 94);

/* INSERT QUERY NO: 9 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(9, TO_DATE('05/12/2019', 'dd/mm/yyyy'), 800, 117, 94);

/* INSERT QUERY NO: 10 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(10, TO_DATE('04/09/2019', 'dd/mm/yyyy'), 1400, 87, 94);

/* INSERT QUERY NO: 11 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(11, TO_DATE('20/04/2019', 'dd/mm/yyyy'), 1300, 108, 94);

/* INSERT QUERY NO: 12 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(12, TO_DATE('11/10/2019', 'dd/mm/yyyy'), 1400, 32, 94);

/* INSERT QUERY NO: 13 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(13, TO_DATE('09/10/2019', 'dd/mm/yyyy'), 900, 77, 94);

/* INSERT QUERY NO: 14 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(14, TO_DATE('26/10/2019', 'dd/mm/yyyy'), 1700, 81, 94);

/* INSERT QUERY NO: 15 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(15, TO_DATE('07/10/2019', 'dd/mm/yyyy'), 1800, 71, 94);

/* INSERT QUERY NO: 16 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(16, TO_DATE('05/09/2019', 'dd/mm/yyyy'), 1500, 56, 94);

/* INSERT QUERY NO: 17 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(17, TO_DATE('28/11/2019', 'dd/mm/yyyy'), 700, 52, 94);

/* INSERT QUERY NO: 18 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(18, TO_DATE('11/01/2020', 'dd/mm/yyyy'), 1000, 40, 94);

/* INSERT QUERY NO: 19 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(19, TO_DATE('07/09/2019', 'dd/mm/yyyy'), 1600, 79, 94);

/* INSERT QUERY NO: 20 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(20, TO_DATE('24/02/2020', 'dd/mm/yyyy'), 1800, 53, 94);

/* INSERT QUERY NO: 21 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(21, TO_DATE('19/12/2019', 'dd/mm/yyyy'), 900, 88, 94);

/* INSERT QUERY NO: 22 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(22, TO_DATE('31/08/2019', 'dd/mm/yyyy'), 700, 42, 94);

/* INSERT QUERY NO: 23 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(23, TO_DATE('25/02/2020', 'dd/mm/yyyy'), 2000, 47, 94);

/* INSERT QUERY NO: 24 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(24, TO_DATE('21/12/2019', 'dd/mm/yyyy'), 1600, 53, 94);

/* INSERT QUERY NO: 25 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(25, TO_DATE('24/11/2019', 'dd/mm/yyyy'), 2000, 85, 94);

/* INSERT QUERY NO: 26 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(26, TO_DATE('08/01/2020', 'dd/mm/yyyy'), 1600, 118, 94);

/* INSERT QUERY NO: 27 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(27, TO_DATE('27/02/2020', 'dd/mm/yyyy'), 1600, 53, 94);

/* INSERT QUERY NO: 28 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(28, TO_DATE('21/06/2019', 'dd/mm/yyyy'), 1500, 109, 94);

/* INSERT QUERY NO: 29 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(29, TO_DATE('21/07/2019', 'dd/mm/yyyy'), 700, 89, 94);

/* INSERT QUERY NO: 30 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(30, TO_DATE('10/07/2019', 'dd/mm/yyyy'), 1400, 115, 94);

/* INSERT QUERY NO: 31 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(31, TO_DATE('20/06/2019', 'dd/mm/yyyy'), 900, 98, 94);

/* INSERT QUERY NO: 32 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(32, TO_DATE('14/07/2019', 'dd/mm/yyyy'), 1000, 48, 94);

/* INSERT QUERY NO: 33 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(33, TO_DATE('06/06/2019', 'dd/mm/yyyy'), 1800, 95, 94);

/* INSERT QUERY NO: 34 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(34, TO_DATE('22/05/2019', 'dd/mm/yyyy'), 1100, 81, 94);

/* INSERT QUERY NO: 35 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(35, TO_DATE('14/06/2019', 'dd/mm/yyyy'), 2000, 50, 94);

/* INSERT QUERY NO: 36 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(36, TO_DATE('21/09/2019', 'dd/mm/yyyy'), 1400, 55, 94);

/* INSERT QUERY NO: 37 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES
(37, TO_DATE('25/04/2019', 'dd/mm/yyyy'), 1500, 94, 94);

/* INSERT QUERY NO: 38 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES
(38, TO_DATE('04/11/2019', 'dd/mm/yyyy'), 1000, 41, 94);

/* INSERT QUERY NO: 39 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(39, TO_DATE('23/04/2019', 'dd/mm/yyyy'), 1700, 81, 94);

/* INSERT QUERY NO: 40 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(40, TO_DATE('04/11/2019', 'dd/mm/yyyy'), 1300, 104, 94);

/* INSERT QUERY NO: 41 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(41, TO_DATE('17/12/2019', 'dd/mm/yyyy'), 800, 114, 94);

/* INSERT QUERY NO: 42 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(42, TO_DATE('07/12/2019', 'dd/mm/yyyy'), 800, 86, 94);

/* INSERT QUERY NO: 43 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(43, TO_DATE('11/12/2019', 'dd/mm/yyyy'), 1100, 47, 94);

/* INSERT QUERY NO: 44 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(44, TO_DATE('09/07/2019', 'dd/mm/yyyy'), 1700, 58, 94);

/* INSERT QUERY NO: 45 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(45, TO_DATE('13/12/2019', 'dd/mm/yyyy'), 1800, 38, 94);

/* INSERT QUERY NO: 46 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(46, TO_DATE('06/02/2020', 'dd/mm/yyyy'), 1300, 115, 94);

/* INSERT QUERY NO: 47 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(47, TO_DATE('11/05/2019', 'dd/mm/yyyy'), 1400, 116, 94);

/* INSERT QUERY NO: 48 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(48, TO_DATE('17/07/2019', 'dd/mm/yyyy'), 1700, 39, 94);

/* INSERT QUERY NO: 49 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(49, TO_DATE('06/12/2019', 'dd/mm/yyyy'), 900, 36, 94);

/* INSERT QUERY NO: 50 */
INSERT INTO Actividades(numero, fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
VALUES(50, TO_DATE('20/09/2019', 'dd/mm/yyyy'), 1000, 93, 94);

/*Registros*/
/* INSERT QUERY NO: 1 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(50, TO_DATE('06/11/2019', 'dd/mm/yyyy'), 1500, 'V', 131694, 1);

/* INSERT QUERY NO: 2 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(49, TO_DATE('10/02/2020', 'dd/mm/yyyy'), 700, 'V', 138223, 2);

/* INSERT QUERY NO: 3 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(48, TO_DATE('07/07/2019', 'dd/mm/yyyy'), 1000, 'C', 96831, 3);

/* INSERT QUERY NO: 4 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(47, TO_DATE('31/12/2019', 'dd/mm/yyyy'), 1300, 'C', 360936, 4);

/* INSERT QUERY NO: 5 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(46, TO_DATE('26/11/2019', 'dd/mm/yyyy'), 1300, 'V', 151263, 5);

/* INSERT QUERY NO: 6 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(45, TO_DATE('10/05/2019', 'dd/mm/yyyy'), 1500, 'P', 189483, 6);

/* INSERT QUERY NO: 7 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(44, TO_DATE('14/12/2019', 'dd/mm/yyyy'), 1000, 'V', 215087, 7);

/* INSERT QUERY NO: 8 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(43, TO_DATE('03/05/2019', 'dd/mm/yyyy'), 1500, 'C', 219105, 8);

/* INSERT QUERY NO: 9 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(42, TO_DATE('19/12/2019', 'dd/mm/yyyy'), 1400, 'V', 312272, 9);

/* INSERT QUERY NO: 10 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(41, TO_DATE('23/05/2019', 'dd/mm/yyyy'), 1300, 'V', 114708, 10);

/* INSERT QUERY NO: 11 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(40, TO_DATE('05/05/2019', 'dd/mm/yyyy'), 1400, 'P', 226230, 11);

/* INSERT QUERY NO: 12 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(39, TO_DATE('09/05/2019', 'dd/mm/yyyy'), 800, 'V', 324914, 12);

/* INSERT QUERY NO: 13 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(38, TO_DATE('21/03/2019', 'dd/mm/yyyy'), 700, 'C', 212151, 13);

/* INSERT QUERY NO: 14 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(37, TO_DATE('04/07/2019', 'dd/mm/yyyy'), 1100, 'V', 75627, 14);

/* INSERT QUERY NO: 15 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(36, TO_DATE('05/08/2019', 'dd/mm/yyyy'), 700, 'P', 222280, 15);

/* INSERT QUERY NO: 16 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(35, TO_DATE('14/01/2020', 'dd/mm/yyyy'), 2000, 'V', 218979, 16);

/* INSERT QUERY NO: 17 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(34, TO_DATE('15/10/2019', 'dd/mm/yyyy'), 1400, 'C', 314327, 17);

/* INSERT QUERY NO: 18 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(33, TO_DATE('16/01/2020', 'dd/mm/yyyy'), 1000, 'C', 103105, 18);

/* INSERT QUERY NO: 19 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(32, TO_DATE('28/08/2019', 'dd/mm/yyyy'), 1500, 'V', 247225, 19);

/* INSERT QUERY NO: 20 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(31, TO_DATE('01/11/2019', 'dd/mm/yyyy'), 1700, 'P', 269022, 20);

/* INSERT QUERY NO: 21 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(30, TO_DATE('21/01/2020', 'dd/mm/yyyy'), 1700, 'V', 273640, 21);

/* INSERT QUERY NO: 22 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(29, TO_DATE('25/05/2019', 'dd/mm/yyyy'), 1400, 'C', 392353, 22);

/* INSERT QUERY NO: 23 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(28, TO_DATE('17/03/2019', 'dd/mm/yyyy'), 1300, 'V', 364540, 23);

/* INSERT QUERY NO: 24 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(27, TO_DATE('04/04/2019', 'dd/mm/yyyy'), 900, 'C', 77706, 24);

/* INSERT QUERY NO: 25 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(26, TO_DATE('12/03/2019', 'dd/mm/yyyy'), 1000, 'C', 385481, 25);

/* INSERT QUERY NO: 26 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(25, TO_DATE('25/07/2019', 'dd/mm/yyyy'), 1100, 'P', 221821, 26);

/* INSERT QUERY NO: 27 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(24, TO_DATE('07/02/2020', 'dd/mm/yyyy'), 700, 'P', 136114, 27);

/* INSERT QUERY NO: 28 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(23, TO_DATE('06/08/2019', 'dd/mm/yyyy'), 1800, 'V', 222806, 28);

/* INSERT QUERY NO: 29 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(22, TO_DATE('29/06/2019', 'dd/mm/yyyy'), 900, 'C', 76009, 29);

/* INSERT QUERY NO: 30 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(21, TO_DATE('06/09/2019', 'dd/mm/yyyy'), 1500, 'V', 321240, 30);

/* INSERT QUERY NO: 31 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(20, TO_DATE('21/08/2019', 'dd/mm/yyyy'), 2000, 'P', 290439, 31);

/* INSERT QUERY NO: 32 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(19, TO_DATE('06/04/2019', 'dd/mm/yyyy'), 1800, 'P', 385323, 32);

/* INSERT QUERY NO: 33 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(18, TO_DATE('26/10/2019', 'dd/mm/yyyy'), 1300, 'P', 78433, 33);

/* INSERT QUERY NO: 34 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(17, TO_DATE('10/08/2019', 'dd/mm/yyyy'), 1300, 'V', 94380, 34);

/* INSERT QUERY NO: 35 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(16, TO_DATE('27/11/2019', 'dd/mm/yyyy'), 800, 'V', 352738, 35);

/* INSERT QUERY NO: 36 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(15, TO_DATE('24/04/2019', 'dd/mm/yyyy'), 900, 'C', 167227, 36);

/* INSERT QUERY NO: 37 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(14, TO_DATE('01/06/2019', 'dd/mm/yyyy'), 1800, 'V', 242090, 37);

/* INSERT QUERY NO: 38 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(13, TO_DATE('26/09/2019', 'dd/mm/yyyy'), 800, 'C', 110291, 38);

/* INSERT QUERY NO: 39 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(12, TO_DATE('12/11/2019', 'dd/mm/yyyy'), 1800, 'P', 338630, 39);

/* INSERT QUERY NO: 40 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES
(11, TO_DATE('11/06/2019', 'dd/mm/yyyy'), 1600, 'V', 177405, 40);

/* INSERT QUERY NO: 41 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(10, TO_DATE('19/06/2019', 'dd/mm/yyyy'), 1300, 'V', 187583, 41);

/* INSERT QUERY NO: 42 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(9, TO_DATE('19/02/2020', 'dd/mm/yyyy'), 1800, 'P', 338234, 42);

/* INSERT QUERY NO: 43 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(8, TO_DATE('03/08/2019', 'dd/mm/yyyy'), 1000, 'C', 203808, 43);

/* INSERT QUERY NO: 44 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(7, TO_DATE('05/12/2019', 'dd/mm/yyyy'), 900, 'P', 113119, 44);

/* INSERT QUERY NO: 45 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(6, TO_DATE('25/10/2019', 'dd/mm/yyyy'), 1400, 'C', 333956, 45);

/* INSERT QUERY NO: 46 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(5, TO_DATE('29/09/2019', 'dd/mm/yyyy'), 1300, 'P', 57975, 46);

/* INSERT QUERY NO: 47 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(4, TO_DATE('27/01/2020', 'dd/mm/yyyy'), 2000, 'C', 138832, 47);

/* INSERT QUERY NO: 48 */
INSERT INTO Registros(numero, fecha, hora, sensor, valor, actividad)
VALUES(3, TO_DATE('16/12/2019', 'dd/mm/yyyy'), 2000, 'C', 204821, 48);

/*-------------------------------------------------------------------Evaluaciones---------------------------------------------------*/
/* INSERT QUERY NO: 1 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
1, TO_DATE('06/12/2019', 'dd/mm/yyyy'), 3, 'Malformation of placenta', '<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "0"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CE', '278104359-1',1
);


/* INSERT QUERY NO: 2 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
2, TO_DATE('11/02/2020', 'dd/mm/yyyy'), 0, '4-part fracture of surgical neck of left humerus initial encounter for open fracture', '	<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "4"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CC', '015569302-6',2
);


/* INSERT QUERY NO: 3 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
3, TO_DATE('08/08/2019', 'dd/mm/yyyy'), 2, 'Carbuncle of left lower limb', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CC', '569423977-6',3
);
		
	
/* INSERT QUERY NO: 5 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
5, TO_DATE('07/04/2019', 'dd/mm/yyyy'), 0, 'Corrosion of third degree of unspecified knee initial encounter', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "0"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "4"></calentamiento>
			<cadencia tipo= "bien" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CE', '463873102-3',5
);
	

/* INSERT QUERY NO: 6 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
6, TO_DATE('27/03/2019', 'dd/mm/yyyy'), 4, 'Nondisplaced fracture of lateral condyle of unspecified humerus', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "3"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "bien" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CC', '018084591-8',6
);
	

/* INSERT QUERY NO: 7 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
7, TO_DATE('23/05/2019', 'dd/mm/yyyy'), 5, 'Thoracoabdominal aortic ectasia', '<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CE', '910866863-9',7
);
	

/* INSERT QUERY NO: 8 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
8, TO_DATE('10/08/2019', 'dd/mm/yyyy'), 1, 'Cardiomyopathy in diseases classified elsewhere', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "0"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "bien" descripcion= "Cantidad de pasos adecuada" importancia= "1"></cadencia>
		</area>
	</TRecomendacion>', 'CE', '964003196-8',8
);
	

/* INSERT QUERY NO: 9 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
9, TO_DATE('19/11/2019', 'dd/mm/yyyy'), 2, 'Carbuncle of left hand', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "bien" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CE', '285261921-0',9
);
	

/* INSERT QUERY NO: 10 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
10, TO_DATE('04/02/2020', 'dd/mm/yyyy'), 2, 'Burn of unspecified degree of unspecified single finger nail except thumb sequela', '<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "4"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CE', '940525951-2',10
);
	

/* INSERT QUERY NO: 11 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
11, TO_DATE('07/12/2019', 'dd/mm/yyyy'), 5, 'Chronic mastoiditis unspecified ear', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CC', '631444051-3',11
);
	

/* INSERT QUERY NO: 12 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
12, TO_DATE('29/01/2020', 'dd/mm/yyyy'), 1, 'Acute frontal sinusitis unspecified', '<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'TI', '289676896-3',12
);
	

/* INSERT QUERY NO: 13 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
13, TO_DATE('16/01/2020', 'dd/mm/yyyy'), 3, 'Other juvenile arthritis unspecified elbow', '<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "1"></cadencia>
		</area>
	</TRecomendacion>', 'CC', '368740104-9',13
);
	

/* INSERT QUERY NO: 14 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
14, TO_DATE('15/04/2019', 'dd/mm/yyyy'), 4, 'Symblepharon bilateral', '<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "0"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "4"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'TI', '395213209-8',14
);
	

/* INSERT QUERY NO: 15 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
15, TO_DATE('21/09/2019', 'dd/mm/yyyy'), 0, 'Unspecified sprain of sternum subsequent encounter', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "1"></cadencia>
		</area>
	</TRecomendacion>', 'CC', '834957005-9',15
);
	

/* INSERT QUERY NO: 16 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
16, TO_DATE('03/07/2019', 'dd/mm/yyyy'), 0, 'Lateral subluxation of proximal end of tibia unspecified knee subsequent encounter', '<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "bien" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'TI', '913934158-5',16
);
	

/* INSERT QUERY NO: 17 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
17, TO_DATE('07/11/2019', 'dd/mm/yyyy'), 2, 'Displacement of internal fixation device of unspecified bone of limb', '<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "4"></calentamiento>
			<cadencia tipo= "bien" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CE', '510050937-6',17
);
	

/* INSERT QUERY NO: 18 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
18, TO_DATE('02/06/2019', 'dd/mm/yyyy'), 4, 'Displaced transcondylar fracture of unspecified humerus', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CE', '359642935-8',18
);
	

/* INSERT QUERY NO: 19 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
19, TO_DATE('19/12/2019', 'dd/mm/yyyy'), 4, 'Thoracogenic scoliosis thoracic region', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "0"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'TI', '197048671-6',19
);
	

/* INSERT QUERY NO: 20 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
20, TO_DATE('10/02/2020', 'dd/mm/yyyy'), 1, 'Poisoning by insulin and oral hypoglycemic antidiabetic drugs undetermined sequela', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "0"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'TI', '363975018-7',20
);
	

/* INSERT QUERY NO: 21 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
21, TO_DATE('14/07/2019', 'dd/mm/yyyy'), 3, 'Nondisplaced Type II dens fracture subsequent encounter for fracture with delayed healing', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "0"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "3"></calentamiento>
			<cadencia tipo= "bien" descripcion= "Cantidad de pasos adecuada" importancia= "0"></cadencia>
		</area>
	</TRecomendacion>', 'CC', '459345336-4',21
);
	

/* INSERT QUERY NO: 22 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
22, TO_DATE('12/05/2019', 'dd/mm/yyyy'), 1, 'Displaced comminuted fracture of unspecified patella subsequent encounter for open fracture', '<TRecomendacion>
		<area>
			<zonas tipo= "mal" descripcion= "Buen manejo del area de pesas" importancia= "0"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "1"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'TI', '833159155-0',22
);
	

/* INSERT QUERY NO: 23 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
23, TO_DATE('24/09/2019', 'dd/mm/yyyy'), 0, 'Drug-induced chronic gout unspecified elbow with tophus tophi', '<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "2"></zonas>
			<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "1"></calentamiento>
			<cadencia tipo= "mal" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
		</area>
	</TRecomendacion>', 'CE', '953327467-0',23
);

/* INSERT QUERY NO: 24 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
24, TO_DATE('04/04/2019', 'dd/mm/yyyy'), 3, 'Strain of extensor muscle fascia and tendon of left index finger at forearm level subsequent encounter', 
	'<?xml version="1.0"?>
	<TRecomendacion>
        <area>
            <zonas tipo= "bien" descripcion= "Buen manejo del area de pesas" importancia= "2">
            </zonas>
            <calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5">
            </calentamiento>
            <cadencia tipo= "bien" descripcion= "Cantidad de pasos adecuada" importancia= "3">
            </cadencia>
        </area>
	</TRecomendacion>'
, 'CC', '740756795-6',24
);

/* INSERT QUERY NO: 25 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
25, TO_DATE('10/09/2019', 'dd/mm/yyyy'), 3, 'Other meningococcal infections', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "mal" descripcion= "Mal manejo del area de pesas" importancia= "5"></zonas>
				<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
				<cadencia tipo= "bien" descripcion= "Cantidad de pasos adecuada" importancia= "3"></cadencia>
			</area>
	</TRecomendacion>
', 'CE', '312774947-3',25
);

/* INSERT QUERY NO: 26 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
26, TO_DATE('07/02/2020', 'dd/mm/yyyy'), 0, 'Contusion of spleen', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "mal" descripcion= "Poco aseo del area" importancia= "5"></zonas>
				<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Cantidad de pasos muy por debajo" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'CE', '375333599-1',26
);

/* INSERT QUERY NO: 27 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
27, TO_DATE('15/09/2019', 'dd/mm/yyyy'), 5, 'Sicca syndrome with myopathy', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "mal" descripcion= "Poco aseo del area de pesas" importancia= "5"></zonas>
				<calentamiento tipo= "mal" descripcion= "La persona no calienta antes de entrenar" importancia= "5"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Cantidad de pasos insuficiente" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'CE', '839847753-9',27
);

/* INSERT QUERY NO: 28 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
28, TO_DATE('24/02/2020', 'dd/mm/yyyy'), 1, 'Unspecified disease of inner ear unspecified ear', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Muy buen aseo del area" importancia= "5"></zonas>
				<calentamiento tipo= "bien" descripcion= "La persona siempre calienta antes de entrenar" importancia= "5"></calentamiento>
				<cadencia tipo= "bien" descripcion= "Cantidad de pasos muy por encima del promedio" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'CE', '004636878-7',28
);

/* INSERT QUERY NO: 29 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
29, TO_DATE('21/08/2019', 'dd/mm/yyyy'), 0, 'Osteochondropathy unspecified', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Muy buen aseo del area" importancia= "5"></zonas>
				<calentamiento tipo= "bien" descripcion= "La persona siempre calienta antes de entrenar" importancia= "5"></calentamiento>
				<cadencia tipo= "bien" descripcion= "Cantidad de pasos muy por encima del promedio, entrena extra" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'CC', '456090223-2',29
);

/* INSERT QUERY NO: 30 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
30, TO_DATE('26/07/2019', 'dd/mm/yyyy'), 1, 'Attic perforation of tympanic membrane bilateral',
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Muy buen aseo del area" importancia= "3"></zonas>
				<calentamiento tipo= "mal" descripcion= "Se niega a calentar" importancia= "2"></calentamiento>
				<cadencia tipo= "bien" descripcion= "Cantidad de pasos muy por encima del promedio" importancia= "1"></cadencia>
			</area>
	</TRecomendacion>
', 'CC', '119422242-0',30
);

/* INSERT QUERY NO: 31 */

INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
31, TO_DATE('17/05/2019', 'dd/mm/yyyy'), 4, 'Displaced fracture of base of fourth metacarpal bone right hand initial encounter for open fracture', 
    '<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Muy buen aseo del area" importancia= "3"></zonas>
				<calentamiento tipo= "bien" descripcion= "La persona siempre calienta antes de entrenar" importancia= "1"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio" importancia= "4"></cadencia>
			</area>
	</TRecomendacion>
', 'CE', '597250522-3',31
);
/* INSERT QUERY NO: 32 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
32, TO_DATE('15/03/2019', 'dd/mm/yyyy'), 5, 'Other fracture of shaft of right humerus subsequent encounter for fracture with nonunion',
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Muy buen aseo del area de pesas" importancia= "3"></zonas>
				<calentamiento tipo= "bien" descripcion= "La persona siempre calienta antes de entrenar" importancia= "1"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'TI', '737483599-X',32
);

/* INSERT QUERY NO: 33 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
33, TO_DATE('14/02/2020', 'dd/mm/yyyy'), 4, 'Traumatic subdural hemorrhage with loss of consciousness of unspecified duration', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "mal" descripcion= "No limpia las maquinas" importancia= "5"></zonas>
				<calentamiento tipo= "bien" descripcion= "La persona siempre calienta antes de entrenar" importancia= "1"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio" importancia= "4"></cadencia>
			</area>
	</TRecomendacion>
', 'CC', '361471821-2',33
);

/* INSERT QUERY NO: 34 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
34, TO_DATE('01/10/2019', 'dd/mm/yyyy'), 2, 'Displaced comminuted fracture of shaft of radius unspecified arm subsequent encounter for open fracture', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Muy buen aseo del area" importancia= "3"></zonas>
				<calentamiento tipo= "bien" descripcion= "La persona siempre calienta antes de entrenar" importancia= "1"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio" importancia= "4"></cadencia>
			</area>
	</TRecomendacion>
', 'TI', '607030235-4',34
);

/* INSERT QUERY NO: 35 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
35, TO_DATE('20/02/2020', 'dd/mm/yyyy'), 2, 'Chronic multifocal osteomyelitis humerus', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Muy buen aseo del area" importancia= "3"></zonas>
				<calentamiento tipo= "bien" descripcion= "La persona siempre calienta antes de entrenar" importancia= "5"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio antes del entrenamiento" importancia= "2"></cadencia>
			</area>
	</TRecomendacion>
', 'CE', '972810091-4',35
);

/* INSERT QUERY NO: 36 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
36, TO_DATE('23/11/2019', 'dd/mm/yyyy'), 4, 'Age-related osteoporosis with current pathological fracture left ankle and foot', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Muy buen aseo del area" importancia= "3"></zonas>
				<calentamiento tipo= "bien" descripcion= "La persona siempre calienta antes de entrenar" importancia= "5"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio antes del entrenamiento" importancia= "2"></cadencia>
			</area>
	</TRecomendacion>
', 'CE', '463580860-2',36
);

/* INSERT QUERY NO: 37 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
37, TO_DATE('23/10/2019', 'dd/mm/yyyy'), 0, 'Poisoning by other specified systemic anti infectives and antiparasitics undetermined subsequent encounter', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "mal" descripcion= "Pesima organizacion" importancia= "5"></zonas>
				<calentamiento tipo= "mal" descripcion= "Nunca calienta antes de entrenar" importancia= "5"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio antes del entrenamiento" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'TI', '223880374-2',37
);

/* INSERT QUERY NO: 38 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
38, TO_DATE('21/07/2019', 'dd/mm/yyyy'), 3, 'Cellulitis and acute lymphangitis of face', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Excelente organizacion" importancia= "5"></zonas>
				<calentamiento tipo= "bien" descripcion= "Excelente calentamiento" importancia= "5"></calentamiento>
				<cadencia tipo= "bien" descripcion= "Excelente cadencia" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'TI', '266303961-6',38
);

/* INSERT QUERY NO: 39 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
39, TO_DATE('09/02/2020', 'dd/mm/yyyy'), 2, 'Pathological fracture in other disease right shoulder subsequent encounter for fracture with malunion', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Excelente organizacion" importancia= "5"></zonas>
				<calentamiento tipo= "bien" descripcion= "Excelente calentamiento" importancia= "5"></calentamiento>
				<cadencia tipo= "bien" descripcion= "Excelente cadencia" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'TI', '038152999-1',39
);

/* INSERT QUERY NO: 40 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
40, TO_DATE('14/12/2019', 'dd/mm/yyyy'), 4, 'Subluxation of other parts of unspecified shoulder girdle sequela', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Excelente organizacion" importancia= "5"></zonas>
				<calentamiento tipo= "bien" descripcion= "Excelente calentamiento" importancia= "5"></calentamiento>
				<cadencia tipo= "bien" descripcion= "Excelente cadencia" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'CC', '503460435-3',40
);

/* INSERT QUERY NO: 41 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
41, TO_DATE('12/10/2019', 'dd/mm/yyyy'), 3, 'Unspecified superficial injury of lip subsequent encounter', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "mal" descripcion= "Pesima organizacion" importancia= "5"></zonas>
				<calentamiento tipo= "mal" descripcion= "Nunca calienta antes de entrenar" importancia= "5"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio antes del entrenamiento" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'TI', '717261326-0',41
);

/* INSERT QUERY NO: 42 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
42, TO_DATE('21/02/2020', 'dd/mm/yyyy'), 2, 'Displaced fracture of proximal phalanx of right ring finger subsequent encounter for fracture with delayed healing', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "mal" descripcion= "Rompio una pesa" importancia= "2"></zonas>
				<calentamiento tipo= "bien" descripcion= "Buen calentamiento" importancia= "4"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio antes del entrenamiento" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'CC', '168019397-X',42
);

/* INSERT QUERY NO: 43 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
43, TO_DATE('25/09/2019', 'dd/mm/yyyy'), 4, 'Direct infection of right shoulder in infectious and parasitic diseases classified elsewhere', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Buen manejo del espacio" importancia= "3"></zonas>
				<calentamiento tipo= "bien" descripcion= "Buen calentamiento" importancia= "3"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Falta mejorar la cadencia" importancia= "3"></cadencia>
			</area>
	</TRecomendacion>
', 'TI', '417890203-2',43
);

/* INSERT QUERY NO: 44 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
44, TO_DATE('02/05/2019', 'dd/mm/yyyy'), 2, 'Driver of three wheeled motor vehicle injured in collision with unspecified', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "mal" descripcion= "Poco ordenado" importancia= "2"></zonas>
				<calentamiento tipo= "bien" descripcion= "Buen calentamiento" importancia= "1"></calentamiento>
				<cadencia tipo= "buena" descripcion= "Mejorando la cadencia" importancia= "3"></cadencia>
			</area>
	</TRecomendacion>
', 'CC', '141956269-X',44
);

/* INSERT QUERY NO: 45 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
45, TO_DATE('22/09/2019', 'dd/mm/yyyy'), 3, 'Diabetes mellitus due to underlying condition with ketoacidosis', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "buena organizacion" importancia= "2"></zonas>
				<calentamiento tipo= "bien" descripcion= "Buen calentamiento" importancia= "4"></calentamiento>
				<cadencia tipo= "mal" descripcion= "Se niega a hacer cardio antes del entrenamiento" importancia= "5"></cadencia>
			</area>
	</TRecomendacion>
', 'CC', '530963119-4',45
);

/* INSERT QUERY NO: 46 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
46, TO_DATE('09/11/2019', 'dd/mm/yyyy'), 2, 'Other chorioretinal inflammations left eye', 
	'<?xml version="1.0"?>
	<TRecomendacion>
			<area>
				<zonas tipo= "bien" descripcion= "Buen compañerismo" importancia= "3"></zonas>
				<calentamiento tipo= "bien" descripcion= "Buen calentamiento" importancia= "3"></calentamiento>
				<cadencia tipo= "bien" descripcion= "Buena cadencia" importancia= "3"></cadencia>
			</area>
	</TRecomendacion>
', 'CE', '725641380-7',46
);

/* INSERT QUERY NO: 47 */
INSERT INTO Evaluaciones(numero, fecha, puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
VALUES
(
47, TO_DATE('09/11/2019', 'dd/mm/yyyy'), 2, 'Recomendacion de Entrenamiento', 
	'<?xml version="1.0"?>
	<TRecomendacion>
		<area>
			<zonas tipo= "bien" descripcion= "Buen compañerismo" importancia= "3"></zonas>
			<calentamiento tipo= "bien" descripcion= "Buen calentamiento" importancia= "3"></calentamiento>
			<cadencia tipo= "bien" descripcion= "Buena cadencia" importancia= "3"></cadencia>
		</area>
		<ejercicios>
			<cardio necesario="No" series="1" tiempo="32" unidad="min"></cardio>
			<pierna necesario="No" series="1" repeticiones="32"></pierna>
			<abdomen necesario="Si" series="1" repeticiones="32"></abdomen>
		</ejercicios>
	</TRecomendacion>
', 'CE', '725641380-7',47
);

/*Planeadas*/
INSERT INTO Planeadas(numero, sesiondia, sesionorden)
VALUES(1, 0, 6);
INSERT INTO Planeadas(numero, sesiondia, sesionorden)
VALUES(2, 1, 54);
INSERT INTO Planeadas(numero, sesiondia, sesionorden)
VALUES(3, 3, 50);
INSERT INTO Planeadas(numero, sesiondia, sesionorden)
VALUES(4, 3, 70);
INSERT INTO Planeadas(numero, sesiondia, sesionorden)
VALUES(5, 3, 70);

/*Libres*/
INSERT INTO Libres(numero,atletatid,atletanid) 
VALUES (38,'CE','197749761-6');

INSERT INTO Libres(numero,atletatid,atletanid) 
VALUES (39,'CC','455195302-4');

INSERT INTO Libres(numero,atletatid,atletanid) 
VALUES (40,'TI','045687279-5');

INSERT INTO Libres(numero,atletatid,atletanid) 
VALUES (41,'CE','273805402-1');

INSERT INTO Libres(numero,atletatid,atletanid) 
VALUES (42,'CE','950104411-4');

INSERT INTO Libres(numero,atletatid,atletanid) 
VALUES (45,'CE','647036274-5');

INSERT INTO Libres(numero,atletatid,atletanid) 
VALUES (46,'CE','172032985-0');

INSERT INTO Libres(numero,atletatid,atletanid) 
VALUES (43,'CE','755410562-0');

INSERT INTO Libres(numero,atletatid,atletanid) 
VALUES (44,'CE','991264865-X');

/*Entrenamientos*/
INSERT INTO Entrenamientos(atletatid,atletanid,entrenadortid,entrenadornid)
VALUES ('CC', '455195302-4', 'CE', '278104359-1');
INSERT INTO Entrenamientos(atletatid,atletanid,entrenadortid,entrenadornid)
VALUES ('CE', '870310947-X', 'CC', '015569302-6');
INSERT INTO Entrenamientos(atletatid,atletanid,entrenadortid,entrenadornid)
VALUES ('TI', '980845648-0', 'CC', '569423977-6');
INSERT INTO Entrenamientos(atletatid,atletanid,entrenadortid,entrenadornid)
VALUES ('CE', '298997851-8', 'CC', '423029084-5');
INSERT INTO Similitudes(evaluacion1tid, evaluacion1nid, evaluacion1actividad, evaluacion2tid, evaluacion2nid, evaluacion2actividad, porcentaje)
VALUES('CC', '368740104-9', 13, 'CC', '834957005-9', 15, 30);

/*Similitudes*/
INSERT INTO Similitudes(evaluacion1tid, evaluacion1nid, evaluacion1actividad, evaluacion2tid, evaluacion2nid, evaluacion2actividad, porcentaje)
VALUES('CC', '368740104-9', 13, 'CC', '459345336-4', 21, 50);
INSERT INTO Similitudes(evaluacion1tid, evaluacion1nid, evaluacion1actividad, evaluacion2tid, evaluacion2nid, evaluacion2actividad, porcentaje)
VALUES('CC', '368740104-9', 13, 'CC', '740756795-6', 24, 70);


/*xTABLAS*/

DROP TABLE Contactos;
DROP TABLE Entrenamientos;
DROP TABLE Similitudes;
DROP TABLE Fotos;
DROP TABLE Registros;
DROP TABLE Planeadas;
DROP TABLE Libres;
DROP TABLE Evaluaciones;
DROP TABLE Actividades;
DROP TABLE Sesiones;
DROP TABLE Atletas;
DROP TABLE Entrenadores;
DROP TABLE Participantes;

