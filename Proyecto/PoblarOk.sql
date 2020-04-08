/*PoblarOK*/
--Estadios--
INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(40943,'Colombia', 'Medellín - Antioquia', TO_DATE('18-Mar-1953','DD/MM-YY'), 'Estadio Atanasio Girardot');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(19000,'Colombia', 'Carretera Panamericana - SanJuanDePasto', TO_DATE('13-Jun-1954','DD-MM-YY'), 'Estadio Departamental Libertad');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(49000,'Colombia', 'Bogota DC - Bogota DC', TO_DATE('18-Ago-1938','DD-MM-YY'), 'Estadio Nemesio Camacho El Campin');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(28100,'Colombia', 'Ibagué - Tolima', TO_DATE('20-Jul-1955','DD-MM-YY'), 'Estadio Manuel Murillo Toro');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(10400,'Colombia', 'Barrancabermeja - Santander', TO_DATE('08-Feb-1990','DD-MM-YY'), 'Estadio Daniel Villa Zapata');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(46690,'Colombia', 'Barranquilla - Atlántico', TO_DATE('08-Feb-1986','DD-MM-YY'), 'Estadio Roberto Meléndez');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(32670,'Colombia', 'Manizales - Caldas', TO_DATE('18-Oct-1994','DD-MM-YY'), 'Estadio Palogrande');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(35400,'Colombia', 'Cali - Valle del Cauca', TO_DATE('23-Abr-1937','DD-MM-YY'), 'Olímpico Pascual Guerrero');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(42000,'Colombia', 'Palmira - Valle del Cauca', TO_DATE('23-Abr-2008','DD-MM-YY'), 'Estadio Deportivo Cali');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(30290,'Colombia', 'Pereira - Risaralda', TO_DATE('13-Jun-1971','DD-MM-YY'), 'Estadio Hernán Ramírez Villegas');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(14000,'Colombia', 'Rionegro - Antioquia', TO_DATE('01-Sep-1991','DD-MM-YY'), 'Estadio Alberto Grisales');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(10000,'Colombia', 'Bogota DC - Bogota DC', TO_DATE('21-Oct-1959','DD-MM-YY'), 'Metropolitano de Techo');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(14000,'Colombia', 'Envigado - Antioquia', TO_DATE('09-Ene-1992','DD-MM-YY'), 'Polideportivo Sur');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(25000,'Colombia', 'Bucaramanga - Santander', TO_DATE('12-Nov-1941','DD-MM-YY'), 'Estadio Alfonso López');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(12000,'Colombia', 'Monteria - Cordoba', TO_DATE('19-Sep-2012','DD-MM-YY'), 'Estadio Jaraguay');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(42000,'Colombia', 'Cucuta - Norte De Santander', TO_DATE('06-May-1948','DD-MM-YY'), 'Estadio General Santander');

INSERT INTO Estadios(capacidad, pais, ubicacion, inauguracion, nombre) 
VALUES(20630,'Colombia', 'Tunja - Boyaca', TO_DATE('01-Ene-1970','DD-MM-YY'), 'Estadio La Independencia');


--Equipos--
INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Atletico Nacional', 'Colombia', 70000000000, TO_DATE('03-Mar-1953','DD-MM-YYYY'), 'Medellín', 'El Verde Paisa', 'Estadio Atanasio Girardot');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Deportivo Pasto', 'Colombia', 10000000000, TO_DATE('01-Ene-1954','DD-MM-YYYY'), 'San Juan De Pasto', 'Los Volcanos', 'Estadio Departamental Libertad');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Independiente Santa Fe', 'Colombia', 24000000000, TO_DATE('10-Ago-1938','DD-MM-YYYY'), 'Bogota DC', 'El Cardenal', 'Estadio Nemesio Camacho El Campin');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Deportes Tolima', 'Colombia', 12000000000, TO_DATE('18-12-1954','DD-MM-YYYY'), 'Ibague', 'El Vinotinto y Oro', 'Estadio Manuel Murillo Toro');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Alianza Petrolera', 'Colombia', 10500000000, TO_DATE('01-Ene-1970','DD-MM-YYYY'), 'Barrancabermeja', 'La Máquina Amarilla', 'Estadio Daniel Villa Zapata');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Atlético Junior', 'Colombia', 30000000000, TO_DATE('11-May-1986','DD-MM-YYYY'), 'Barranquilla', 'El Tiburón', 'Estadio Roberto Meléndez');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Once Caldas', 'Colombia', 11000000000, TO_DATE('17-Mar-1961','DD-MM-YYYY'), 'Caldas', 'El Blanco Blanco', 'Estadio Palogrande');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('América de Cali', 'Colombia', 30000000000, TO_DATE('20-Jul-1937','DD-MM-YYYY'), 'Cali', 'Los Diablos Rojos', 'Olímpico Pascual Guerrero');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Deportivo Cali', 'Colombia', 30000000000, TO_DATE('01-Ene-1927','DD-MM-YYYY'), 'Cali', 'El Azucarero', 'Estadio Deportivo Cali');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Deportivo Pereira', 'Colombia', 2500000000, TO_DATE('01-May-1971','DD-MM-YYYY'), 'Pereira', 'El Grande Matecaña', 'Estadio Hernán Ramírez Villegas');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Deportivo Independiente Medellín', 'Colombia', 48000000000, TO_DATE('19-Mar-1953','DD-MM-YYYY'), 'Medellín', 'El Poderoso de la Montaña', 'Estadio Atanasio Girardot');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Rionegro', 'Colombia', 5000000000, TO_DATE('16-Jul-2008','DD-MM-YYYY'), 'Rionegro', 'El Equipo del Oriente', 'Estadio Alberto Grisales');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Club Deportivo La Equidad', 'Colombia', 15000000000, TO_DATE('01-12-1982','DD-MM-YYYY'), 'Bogota DC', 'Los Aseguradores', 'Metropolitano de Techo');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Envigado Fútbol Club', 'Colombia', 3000000000, TO_DATE('14-Oct-1989','DD-MM-YYYY'), 'Envigado', 'El Equipo Naranja', 'Polideportivo Sur');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Atlético Bucaramanga', 'Colombia', 8000000000, TO_DATE('11-May-1948','DD-MM-YYYY'), 'Bucaramanga', 'Los Búcaros', 'Estadio Alfonso López');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Jaguares', 'Colombia', 6800000000, TO_DATE('24-12-2012','DD-MM-YYYY'), 'Cordoba', 'La Garra Caribe', 'Estadio Jaraguay');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Millonarios Fútbol Club', 'Colombia', 46500000000, TO_DATE('18-Jun-1946','DD-MM-YYYY'), 'Bogota DC', 'Los Embajadores', 'Estadio Nemesio Camacho El Campin');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Cúcuta Deportivo', 'Colombia', 8500000000, TO_DATE('10-Sep-1924','DD-MM-YYYY'), 'Cucuta', 'Los Motilones', 'Estadio General Santander');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Boyaca Chico', 'Colombia', 8000000000, TO_DATE('26-Mar-2002','DD-MM-YYYY'), 'Tunja', 'Los Ajedrezados', 'Estadio La Independencia');

INSERT INTO Equipos(nombre, pais, presupuesto, fechaFundacion, ciudad, apodo, estadio)
VALUES('Patriotas Boyaca', 'Colombia', 8000000000, TO_DATE('18-Feb-2003','DD-MM-YYYY'), 'Tunja', 'Patriotas', 'Estadio La Independencia');


/*Partidos*/

--Fecha_1--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), '2-2', 'Estadio Manuel Murillo Toro');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-01-2020 16:00','DD-MM-YYYY HH24:MI'), '2-0', 'Estadio Alberto Grisales');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-01-2020 18:00','DD-MM-YYYY HH24:MI'), '0-0', 'Estadio Palogrande');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), '1-0', 'Polideportivo Sur');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-01-2020 22:00','DD-MM-YYYY HH24:MI'), '0-2', 'Estadio Alfonso López');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-01-2020 14:00','DD-MM-YYYY HH24:MI'), '2-0', 'Estadio Roberto Meléndez');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-01-2020 16:00','DD-MM-YYYY HH24:MI'), '3-1', 'Olímpico Pascual Guerrero');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-01-2020 18:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio La Independencia');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-01-2020 20:00','DD-MM-YYYY HH24:MI'), '2-0', 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-01-2020 22:00','DD-MM-YYYY HH24:MI'), '1-2', 'Estadio Nemesio Camacho El Campin');


--Fecha_2--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('28-01-2020 14:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio Palogrande');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('28-01-2020 16:00','DD-MM-YYYY HH24:MI'), '2-1', 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('28-01-2020 18:00','DD-MM-YYYY HH24:MI'), '0-0', 'Estadio Deportivo Cali');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('28-01-2020 20:00','DD-MM-YYYY HH24:MI'), '2-2', 'Estadio Jaraguay');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('28-01-2020 22:00','DD-MM-YYYY HH24:MI'), '1-0', 'Estadio La Independencia');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), '3-4', 'Metropolitano de Techo');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio Departamental Libertad');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-01-2020 18:00','DD-MM-YYYY HH24:MI'), '1-0', 'Estadio Daniel Villa Zapata');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-01-2020 20:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio Nemesio Camacho El Campin');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-01-2020 22:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio General Santander');

--Fecha_3--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-02-2020 14:00','DD-MM-YYYY HH24:MI'), '1-0', 'Olímpico Pascual Guerrero');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-02-2020 16:00','DD-MM-YYYY HH24:MI'), '1-0', 'Estadio Alberto Grisales');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-02-2020 18:00','DD-MM-YYYY HH24:MI'), '0-0', 'Estadio La Independencia');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-02-2020 20:00','DD-MM-YYYY HH24:MI'), '0-1', 'Estadio Daniel Villa Zapata');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-02-2020 22:00','DD-MM-YYYY HH24:MI'), '0-1', 'Polideportivo Sur');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('02-02-2020 14:00','DD-MM-YYYY HH24:MI'), '1-0', 'Estadio Roberto Meléndez');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('02-02-2020 16:00','DD-MM-YYYY HH24:MI'), '2-2', 'Estadio Nemesio Camacho El Campin');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('02-02-2020 18:00','DD-MM-YYYY HH24:MI'), '0-0', 'Estadio Alfonso López');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('02-02-2020 20:00','DD-MM-YYYY HH24:MI'), '1-2', 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('02-02-2020 22:00','DD-MM-YYYY HH24:MI'), '2-0', 'Estadio Hernán Ramírez Villegas');

--Fecha_4--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-02-2020 14:00','DD-MM-YYYY HH24:MI'), '4-1', 'Estadio Jaraguay');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-02-2020 16:00','DD-MM-YYYY HH24:MI'), '3-3', 'Metropolitano de Techo');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-02-2020 18:00','DD-MM-YYYY HH24:MI'), '0-3', 'Estadio La Independencia');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-02-2020 20:00','DD-MM-YYYY HH24:MI'), '3-1', 'Estadio Nemesio Camacho El Campin');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-02-2020 22:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio Palogrande');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-02-2020 14:00','DD-MM-YYYY HH24:MI'), '2-1', 'Estadio Deportivo Cali');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-02-2020 16:00','DD-MM-YYYY HH24:MI'), '3-0', 'Estadio Manuel Murillo Toro');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-02-2020 18:00','DD-MM-YYYY HH24:MI'), '3-1', 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-02-2020 20:00','DD-MM-YYYY HH24:MI'), '4-0', 'Estadio Departamental Libertad');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-02-2020 22:00','DD-MM-YYYY HH24:MI'), '0-2', 'Estadio General Santander');

--Fecha_5--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-02-2020 14:00','DD-MM-YYYY HH24:MI'), '0-2', 'Estadio La Independencia');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-02-2020 16:00','DD-MM-YYYY HH24:MI'), '0-0', 'Estadio General Santander');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-02-2020 18:00','DD-MM-YYYY HH24:MI'), '1-0', 'Estadio Hernán Ramírez Villegas');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-02-2020 20:00','DD-MM-YYYY HH24:MI'), '4-0', 'Polideportivo Sur');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-02-2020 22:00','DD-MM-YYYY HH24:MI'), '0-0', 'Estadio Roberto Meléndez');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('16-02-2020 14:00','DD-MM-YYYY HH24:MI'), '2-2', 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('16-02-2020 16:00','DD-MM-YYYY HH24:MI'), '2-0', 'Olímpico Pascual Guerrero');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('16-02-2020 18:00','DD-MM-YYYY HH24:MI'), '1-0', 'Estadio Daniel Villa Zapata');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('16-02-2020 20:00','DD-MM-YYYY HH24:MI'), '2-1', 'Estadio Nemesio Camacho El Campin');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('16-02-2020 22:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio Alberto Grisales');

--Fecha_6--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-02-2020 14:00','DD-MM-YYYY HH24:MI'), '4-1', 'Metropolitano de Techo');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-02-2020 16:00','DD-MM-YYYY HH24:MI'), '0-0', 'Estadio Palogrande');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-02-2020 18:00','DD-MM-YYYY HH24:MI'), '2-3', 'Estadio Deportivo Cali');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-02-2020 20:00','DD-MM-YYYY HH24:MI'), '0-0', 'Estadio Manuel Murillo Toro');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-02-2020 22:00','DD-MM-YYYY HH24:MI'), '1-3', 'Estadio Jaraguay');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-02-2020 14:00','DD-MM-YYYY HH24:MI'), '2-0', 'Estadio Alfonso López');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-02-2020 16:00','DD-MM-YYYY HH24:MI'), '1-0', 'Estadio Departamental Libertad');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-02-2020 18:00','DD-MM-YYYY HH24:MI'), '1-3', 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-02-2020 20:00','DD-MM-YYYY HH24:MI'), '0-1', 'Estadio La Independencia');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-02-2020 22:00','DD-MM-YYYY HH24:MI'), '2-0', 'Estadio Nemesio Camacho El Campin');

--Fecha_7--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-02-2020 14:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio Alberto Grisales');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-02-2020 16:00','DD-MM-YYYY HH24:MI'), '1-3', 'Estadio Hernán Ramírez Villegas');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-02-2020 18:00','DD-MM-YYYY HH24:MI'), '0-0', 'Estadio Nemesio Camacho El Campin');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-02-2020 20:00','DD-MM-YYYY HH24:MI'), '1-2', 'Estadio Departamental Libertad');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('29-02-2020 22:00','DD-MM-YYYY HH24:MI'), '1-1', 'Olímpico Pascual Guerrero');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-03-2020 14:00','DD-MM-YYYY HH24:MI'), '0-1', 'Estadio General Santander');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-03-2020 16:00','DD-MM-YYYY HH24:MI'), '3-2', 'Estadio Roberto Meléndez');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-03-2020 18:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-03-2020 20:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio La Independencia');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('01-03-2020 22:00','DD-MM-YYYY HH24:MI'), '0-1', 'Estadio Daniel Villa Zapata');

--Fecha_8--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'), '1-0', 'Estadio Manuel Murillo Toro');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-03-2020 16:00','DD-MM-YYYY HH24:MI'), '0-3', 'Estadio Jaraguay');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-03-2020 18:00','DD-MM-YYYY HH24:MI'), '2-2', 'Estadio Nemesio Camacho El Campin');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-03-2020 20:00','DD-MM-YYYY HH24:MI'), '1-1', 'Metropolitano de Techo');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('07-03-2020 22:00','DD-MM-YYYY HH24:MI'), '2-2', 'Estadio Deportivo Cali');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'), '2-2', 'Polideportivo Sur');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-03-2020 16:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio Palogrande');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-03-2020 18:00','DD-MM-YYYY HH24:MI'), '1-0', 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-03-2020 20:00','DD-MM-YYYY HH24:MI'), '1-1', 'Estadio Alfonso López');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('08-03-2020 22:00','DD-MM-YYYY HH24:MI'), '2-2', 'Estadio La Independencia');

--Fecha_9--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('14-03-2020 14:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Roberto Meléndez');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('14-03-2020 16:00','DD-MM-YYYY HH24:MI'), null, 'Olímpico Pascual Guerrero');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('14-03-2020 18:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Departamental Libertad');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('14-03-2020 20:00','DD-MM-YYYY HH24:MI'), null, 'Metropolitano de Techo');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('14-03-2020 22:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Hernán Ramírez Villegas');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-03-2020 14:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-03-2020 16:00','DD-MM-YYYY HH24:MI'), null, 'Estadio General Santander');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-03-2020 18:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Daniel Villa Zapata');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-03-2020 20:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Nemesio Camacho El Campin');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('15-03-2020 22:00','DD-MM-YYYY HH24:MI'), null, 'Estadio La Independencia');

--Fecha_10--
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-03-2020 14:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Nemesio Camacho El Campin');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-03-2020 16:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Jaraguay');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-03-2020 18:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Atanasio Girardot');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-03-2020 20:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Palogrande');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('22-03-2020 22:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Alberto Grisales');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-03-2020 14:00','DD-MM-YYYY HH24:MI'), null, 'Polideportivo Sur');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-03-2020 16:00','DD-MM-YYYY HH24:MI'), null, 'Estadio La Independencia');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-03-2020 18:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Alfonso López');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-03-2020 20:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Manuel Murillo Toro');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('23-03-2020 22:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Deportivo Cali');


/*Encuentros*/
--Fecha_1--
INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Deportes Tolima', 'Deportivo Independiente Medellín', TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Rionegro', 'Jaguares', TO_DATE('24-01-2020 16:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Once Caldas', 'Independiente Santa Fe', TO_DATE('24-01-2020 18:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Envigado Fútbol Club', 'Boyaca Chico', TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Atlético Bucaramanga', 'Deportivo Cali', TO_DATE('24-01-2020 22:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Atlético Junior', 'Club Deportivo La Equidad', TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('América de Cali', 'Alianza Petrolera', TO_DATE('24-01-2020 16:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Patriotas Boyaca', 'Cúcuta Deportivo', TO_DATE('24-01-2020 18:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Atletico Nacional', 'Deportivo Pereira', TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Millonarios Fútbol Club', 'Deportivo Pasto', TO_DATE('24-01-2020 22:00','DD-MM-YYYY HH24:MI'));

--Fecha_2--
INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Once Caldas', 'Atlético Bucaramanga', TO_DATE('28-01-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Deportivo Independiente Medellín', 'Rionegro', TO_DATE('28-01-2020 16:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Deportivo Cali', 'Atlético Junior', TO_DATE('28-01-2020 18:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Jaguares', 'América de Cali', TO_DATE('28-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Boyaca Chico', 'Patriotas Boyaca', TO_DATE('28-01-2020 22:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Club Deportivo La Equidad', 'Atletico Nacional', TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Deportivo Pasto', 'Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Alianza Petrolera', 'Deportivo Pereira', TO_DATE('29-01-2020 18:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Independiente Santa Fe', 'Envigado Fútbol Club', TO_DATE('29-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Cúcuta Deportivo', 'Millonarios Fútbol Club', TO_DATE('29-01-2020 22:00','DD-MM-YYYY HH24:MI'));

--Fecha_3--
INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('América de Cali', 'Boyaca Chico', TO_DATE('01-02-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Rionegro', 'Independiente Santa Fe', TO_DATE('01-02-2020 16:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Patriotas Boyaca', 'Deportivo Cali', TO_DATE('01-02-2020 18:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Alianza Petrolera', 'Deportivo Pasto', TO_DATE('01-02-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Envigado Fútbol Club', 'Once Caldas', TO_DATE('01-02-2020 22:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Atlético Junior', 'Deportivo Independiente Medellín', TO_DATE('02-02-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Millonarios Fútbol Club', 'Club Deportivo La Equidad', TO_DATE('02-02-2020 16:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Atlético Bucaramanga', 'Deportes Tolima', TO_DATE('02-02-2020 18:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Atletico Nacional', 'Jaguares', TO_DATE('02-02-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Deportivo Pereira', 'Cúcuta Deportivo', TO_DATE('02-02-2020 22:00','DD-MM-YYYY HH24:MI'));

--Fecha_4--
INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Jaguares', 'Millonarios Fútbol Club', TO_DATE('07-02-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Club Deportivo La Equidad', 'Deportivo Pereira', TO_DATE('07-02-2020 16:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Boyaca Chico', 'Atletico Nacional', TO_DATE('07-02-2020 18:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Independiente Santa Fe', 'Atlético Junior', TO_DATE('07-02-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Once Caldas', 'Rionegro', TO_DATE('07-02-2020 22:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Deportivo Cali', 'América de Cali', TO_DATE('08-02-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Deportes Tolima', 'Envigado Fútbol Club', TO_DATE('08-02-2020 16:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Deportivo Independiente Medellín', 'Patriotas Boyaca', TO_DATE('08-02-2020 18:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Deportivo Pasto', 'Atlético Bucaramanga', TO_DATE('08-02-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Encuentros (equipo1, equipo2, partido)
VALUES ('Cúcuta Deportivo', 'Alianza Petrolera', TO_DATE('08-02-2020 22:00','DD-MM-YYYY HH24:MI'));