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


--PersonasNaturales--
INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jefferson', 'Duque', 6160094842, null, 'famisanar', 'Colombiana', TO_DATE('17-May-1987','DD-MM-YYYY'), '+', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Andres', 'Andrade', 9453082666, null, 'sanitas', 'Colombiana', TO_DATE('23-Feb-1989','DD-MM-YYYY'), '+', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Estefan', 'Arango', 3089107532, null, 'sanitas', 'Colombiana', TO_DATE('18-Ene-1994','DD-MM-YYYY'), '-', 'B');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jarlan', 'Barrera', 3988769002, null, 'famisanar', 'Colombiana', TO_DATE('16-Sep-1995','DD-MM-YYYY'), '+', 'AB');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Gustavo', 'Torres', 4312752568, null, 'famisanar', 'Colombiana', TO_DATE('15-Jun-1996','DD-MM-YYYY'), '-', 'AB');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Geisson', 'Perea', 3773945147, null, 'sanitas', 'Colombiana', TO_DATE('06-Ago-1991','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Fabian', 'Gonzales', 8356775498, null, 'sanitas', 'Colombiana', TO_DATE('23-Nov-1992','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Diego', 'Braghieri', 9751155808, null, 'sanitas', 'Argentina', TO_DATE('23-Feb-1987','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Déinner', 'Quiñones', 1264199927, null, 'famisanar', 'Colombiana', TO_DATE('16-Ago-1995','DD-MM-YYYY'), '-', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Vladimir', 'Hernández', 9017263407, null, 'famisanar', 'Colombiana', TO_DATE('08-Feb-1989','DD-MM-YYYY'), '-', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Sebastian', 'Gomez', 3532347206, null, 'famisanar', 'Colombiana', TO_DATE('03-Jun-1996','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Cristian', 'Blanco', 6215817448, null, 'famisanar', 'Colombiana', TO_DATE('29-Ene-1999','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Alberto', 'Costa', 5674156202, null, 'famisanar', 'Argentina', TO_DATE('09-Ene-1985','DD-MM-YYYY'), '+', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Yerson', 'Candelo', 2716593521, null, 'sanitas', 'Colombiana', TO_DATE('24-Feb-1992','DD-MM-YYYY'), '+', 'B');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Brayan', 'Cordoba', 1953808207, null, 'sanitas', 'Colombiana', TO_DATE('18-Sep-1999','DD-MM-YYYY'), '+', 'B');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Helibelton', 'Palacios', 4396030980, null, 'sanitas', 'Colombiana', TO_DATE('11-Jun-1993','DD-MM-YYYY'), '+', 'AB');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Yair', 'Mena', 3811377983, null, 'famisanar', 'Colombiana', TO_DATE('28-Jun-2000','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jose', 'Cuadrado', 6262475558, null, 'famisanar', 'Colombiana', TO_DATE('01-Jun-1985','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Aldair', 'Quintana', 4017598396, null, 'famisanar', 'Colombiana', TO_DATE('11-Jul-1994','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Baldomero', 'Perlaza', 4797896034, null, 'sanitas', 'Colombiana', TO_DATE('05-Jun-1992','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Yilmar', 'Velasquez', 2220648761, null, 'sanitas', 'Colombiana', TO_DATE('21-Ago-1999','DD-MM-YYYY'), '-', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Christian', 'Mafla', 4328046389, null, 'famisanar', 'Colombiana', TO_DATE('15-Ene-1993','DD-MM-YYYY'), '-', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jhohann', 'Yabur', 7476029264, null, 'famisanar', 'Colombiana', TO_DATE('05-Mar-1999','DD-MM-YYYY'), '-', 'B');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Juan', 'Uribe', 4865032661, null, 'sanitas', 'Colombiana', TO_DATE('19-May-2002','DD-MM-YYYY'), '-', 'AB');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Brayan', 'Rovira', 8570477019, null, 'sanitas', 'Colombiana', TO_DATE('02-12-1996','DD-MM-YYYY'), '-', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Yeiler', 'Goez', 5037595516, null, 'sanitas', 'Colombiana', TO_DATE('01-Nov-1999','DD-MM-YYYY'), '-', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Yerson', 'Mosquera', 9639153100, null, 'famisanar', 'Colombiana', TO_DATE('02-May-2001','DD-MM-YYYY'), '+', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Daniel', 'Muñoz', 4587825647, null, 'famisanar', 'Colombiana', TO_DATE('26-May-1996','DD-MM-YYYY'), '+', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Agustin', 'Cano', 1290851889, null, 'famisanar', 'Colombiana', TO_DATE('08-Jun-2001','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Edwin', 'Movil', 2239371861, null, 'famisanar', 'Colombiana', TO_DATE('07-May-1986','DD-MM-YYYY'), '+', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Rafael', 'Navarro', 9169806702, null, 'sanitas', 'Colombiana', TO_DATE('28-Feb-1989','DD-MM-YYYY'), '+', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Yoiver', 'Gonzales', 4520615715, null, 'sanitas', 'Colombiana', TO_DATE('21-Nov-1994','DD-MM-YYYY'), '-', 'B');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Francisco', 'Cordoba', 9983568199, null, 'famisanar', 'Colombiana', TO_DATE('08-Sep-1988','DD-MM-YYYY'), '+', 'AB');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jairo', 'Molina', 7814571878, null, 'famisanar', 'Colombiana', TO_DATE('28-Abr-1993','DD-MM-YYYY'), '-', 'AB');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Delio', 'Ramirez', 3499071510, null, 'sanitas', 'Colombiana', TO_DATE('25-Nov-2000','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Diego', 'Alvarez', 6306540318, null, 'sanitas', 'Colombiana', TO_DATE('23-Sep-1981','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Wilfrido', 'Mendoza', 8886519759, null, 'sanitas', 'Colombiana', TO_DATE('03-Feb-1993','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Mauricio', 'Casierra', 2798612409, null, 'famisanar', 'Colombiana', TO_DATE('08-12-1985','DD-MM-YYYY'), '-', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Harlen', 'Castillo', 2542654245, null, 'famisanar', 'Colombiana', TO_DATE('17-Ago-1993','DD-MM-YYYY'), '-', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Mateo', 'Cano', 7434850833, null, 'famisanar', 'Colombiana', TO_DATE('17-Sep-1997','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Cristian', 'Blanco', 1534083151, null, 'famisanar', 'Colombiana', TO_DATE('29-Ene-1999','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jorge', 'Posada', 5971739634, null, 'famisanar', 'Colombiana', TO_DATE('21-Oct-1995','DD-MM-YYYY'), '+', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Luis', 'Cardoza', 5740077037, null, 'sanitas', 'Colombiana', TO_DATE('19-12-1984','DD-MM-YYYY'), '+', 'B');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jonathan', 'Lopera', 4004213968, null, 'sanitas', 'Colombiana', TO_DATE('02-Jun-1987','DD-MM-YYYY'), '+', 'B');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Sergio', 'Avellaneda', 6997755677, null, 'sanitas', 'Colombiana', TO_DATE('26-Feb-1990','DD-MM-YYYY'), '+', 'AB');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jader', 'Maza', 1075000992, null, 'famisanar', 'Colombiana', TO_DATE('04-Nov-1994','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Michael', 'Ordoñez', 4598735722, null, 'famisanar', 'Colombiana', TO_DATE('22-Feb-1990','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Danny', 'Cano', 1267109813, null, 'famisanar', 'Colombiana', TO_DATE('12-Feb-1986','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Alejandro', 'Artunduaga', 2486035306, null, 'sanitas', 'Colombiana', TO_DATE('09-Sep-1997','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jhonny', 'Vasquez', 6611651929, null, 'sanitas', 'Colombiana', TO_DATE('23-Jul-1987','DD-MM-YYYY'), '-', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Ronaldo', 'Tavera', 6995908868, null, 'famisanar', 'Colombiana', TO_DATE('31-Jul-1995','DD-MM-YYYY'), '-', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Carlos', 'Mosquera', 6191203816, null, 'famisanar', 'Colombiana', TO_DATE('21-Sep-1994','DD-MM-YYYY'), '-', 'B');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Cesar', 'Manzano', 7060239463, null, 'sanitas', 'Colombiana', TO_DATE('03-Feb-1998','DD-MM-YYYY'), '-', 'AB');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jherson', 'Mosquera', 8304761223, null, 'sanitas', 'Colombiana', TO_DATE('18-Sep-1999','DD-MM-YYYY'), '-', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Camilo', 'Mena', 7603777600, null, 'sanitas', 'Colombiana', TO_DATE('01-Oct-2002','DD-MM-YYYY'), '-', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Jorge', 'Murillo', 2905644336, null, 'sanitas', 'Colombiana', TO_DATE('03-Ene-1996','DD-MM-YYYY'), '+', 'O');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Yadir', 'Acuña', 8926719881, null, 'famisanar', 'Colombiana', TO_DATE('21-Jun-1984','DD-MM-YYYY'), '-', 'B');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Andres', 'Rojas', 4599899676, null, 'sanitas', 'Colombiana', TO_DATE('01-Ene-1985','DD-MM-YYYY'), '-', 'AB');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Keiner', 'Jimenez', 9683801485, null, 'sanitas', 'Colombiana', TO_DATE('18-Oct-1980','DD-MM-YYYY'), '-', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Edwin', 'Trujillo', 1431088931, null, 'sanitas', 'Colombiana', TO_DATE('13-Oct-1989','DD-MM-YYYY'), '-', 'A');

INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Eder', 'Enrique', 4273190480, null, 'sanitas', 'Colombiana', TO_DATE('16-Ene-1986','DD-MM-YYYY'), '+', 'O');

---Jugadores--
INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (6160094842, 9, 'DC', 1000000000, 0, 20000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (9453082666, 10, 'MCD', 1200000000, 0, 23000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (3089107532, 24, 'ED', 750000000, 0, 8000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (3988769002, 7, 'MCO', 3000000000, 0, 40000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4312752568, 20, 'DC', 600000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (3773945147, 4, 'DFC', 800000000, 0, 10000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (8356775498, 21, 'DC', 800000000, 0, 9000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (9751155808, 5, 'DFC', 1200000000, 0, 25000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (1264199927, 23, 'EI', 850000000, 0, 12000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (9017263407, 16, 'EI', 1000000000, 0, 9000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (3532347206, 27, 'MC', 950000000, 0, 9800000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (6215817448, 15, 'ED', 350000000, 0, 4000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (5674156202, 18, 'MC', 500000000, 0, 9200000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (2716593521, 19, 'ED', 1400000000, 0, 20000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (1953808207, 34, 'DFC', 150000000, 0, 3000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4396030980, 13, 'LD', 1500000000, 0, 13000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (3811377983, 33, 'DC', 10000000, 0, 2000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (6262475558, 30, 'POR', 900000000, 0, 16000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4017598396, 1, 'POR', 600000000, 0, 11000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4797896034, 14, 'MC', 1500000000, 0, 15000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (2220648761, 29, 'CAD', 150000000, 0, 7000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4328046389, 32, 'LI', 600000000, 0, 13000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (7476029264, 26, 'MI', 250000000, 0, 4000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4865032661, 25, 'POR', 100000000, 0, 3000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (8570477019, 8, 'MCO', 1300000000, 0, 16000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (5037595516,  6, 'MCD', 200000000, 0, 5000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (9639153100, 9, 'DFC', 100000000, 0, 4000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4587825647, 23, 'LD', 1800000000, 0, 19000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (1290851889, 28, 'MC', 100000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (2239371861, 8, 'MCO', 200000000, 0, 4000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (9169806702, 17, 'MCO', 200000000, 0, 3000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4520615715, 50, 'DFC', 300000000, 0, 4000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (9983568199, 28, 'LD', 400000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (7814571878, 51, 'DC', 400000000, 0, 5200000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (3499071510, 52, 'MC', 50000000, 0, 1200000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (6306540318, 28, 'MC', 100000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (8886519759, 9, 'DC', 100000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (2798612409, 7, 'MC', 100000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (2542654245, 3, 'LI', 300000000, 0, 7000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (7434850833, 1, 'POR', 200000000, 0, 4300000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (1534083151, 10, 'MC', 75000000, 0, 2000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (5971739634, 21, 'DFC', 150000000, 0, 3000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (5740077037, 2, 'DFC', 400000000, 0, 9000000); 

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4004213968, 53, 'DFC', 600000000, 0, 10000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (6997755677, 12, 'POR', 200000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (1075000992, 54, 'LI', 250000000, 0, 6200000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4598735722, 55, 'MCO', 700000000, 0, 14000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (1267109813, 4, 'DFC', 200000000, 0, 2200000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (2486035306, 16, 'LD', 100000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (6611651929, 56, 'MCO', 400000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (6995908868, 20, 'MCO', 300000000, 0, 6400000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (6191203816, 58, 'POR', 150000000, 0, 4000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (7060239463, 59, 'MI', 75000000, 0, 2400000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (8304761223, 29, 'LD', 100000000, 0, 6000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (7603777600, 11, 'DC', 300000000, 0, 8000000);

INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (2905644336, 14, 'MCO', 100000000, 0, 6000000);

---Arbitros--
INSERT INTO Arbitros(cedula, posicion, fechaInicio, fechaFinal, puntuacionArbitraje, partido)
VALUES (8926719881, 'ARC',TO_DATE('04-Feb-2016','DD-MM-YYYY'), null, 3, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

---Amonestaciones--
INSERT INTO Amonestaciones(jugador, fecha, tarjeta, comentarios, arbitro, partido)
VALUES (8886519759, TO_DATE('24-01-2020 20:32','DD-MM-YYYY HH24:MI'), 'A', 'Falta no intencional', 8926719881, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Amonestaciones(jugador, fecha, tarjeta, comentarios, arbitro, partido)
VALUES (4797896034, TO_DATE('24-01-2020 20:48','DD-MM-YYYY HH24:MI'), 'A', 'Falta no intencional', 8926719881, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Amonestaciones(jugador, fecha, tarjeta, comentarios, arbitro, partido)
VALUES (4396030980, TO_DATE('24-01-2020 21:06','DD-MM-YYYY HH24:MI'), 'A', 'Falta no intencional', 8926719881, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Amonestaciones(jugador, fecha, tarjeta, comentarios, arbitro, partido)
VALUES (4004213968, TO_DATE('24-01-2020 21:18','DD-MM-YYYY HH24:MI'), 'A', 'Falta no intencional', 8926719881, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Amonestaciones(jugador, fecha, tarjeta, comentarios, arbitro, partido)
VALUES (9751155808, TO_DATE('24-01-2020 21:28','DD-MM-YYYY HH24:MI'), 'A', 'Falta no intencional', 8926719881, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Amonestaciones(jugador, fecha, tarjeta, comentarios, arbitro, partido)
VALUES (2798612409, TO_DATE('24-01-2020 21:34','DD-MM-YYYY HH24:MI'), 'A', 'Falta no intencional', 8926719881, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

---Atajadas--  

INSERT INTO Atajadas(jugador, partido, tiempo, paradas)
VALUES (3532347206, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 48, 7);

INSERT INTO Atajadas(jugador, partido, tiempo, paradas)
VALUES (2542654245, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 94, 0);

---Pases-- 
INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (8886519759, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 46, 78, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (2486035306, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 30, 40, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (5971739634, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 37, 32, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (4520615715, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 21, 42, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (6995908868, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 17, 20, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (4598735722, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 32, 75, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (2798612409, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 47, 39, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (9983568199, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 47, 96, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (4396030980, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 46, 78, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (6160094842, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 30, 89, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (4312752568, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 37, 82, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (3532347206, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 21, 72, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (4797896034, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 17, 69, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (1264199927, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 32, 75, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (3988769002, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 47, 90, 0);

INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (3089107532, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 47, 96, 0);

---Disparos----
INSERT INTO Disparos(jugador, partido, tiempo, acertadoGol, distancia, velocidad)
VALUES (9453082666, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 47, 0, 40, 30);

INSERT INTO Disparos(jugador, partido, tiempo, acertadoGol, distancia, velocidad)
VALUES (8570477019, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 49, 0, 40, 30);

INSERT INTO Disparos(jugador, partido, tiempo, acertadoGol, distancia, velocidad)
VALUES (6160094842, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 91, 1, 40, 70);

INSERT INTO Disparos(jugador, partido, tiempo, acertadoGol, distancia, velocidad)
VALUES (3988769002, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 48, 1, 35, 90);

---Plantillas---
INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'DC', 'Atletico Nacional', 6160094842,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'DC', 'Atletico Nacional', 4312752568,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'MI', 'Atletico Nacional', 3089107532,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'MC', 'Atletico Nacional', 3532347206,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'MC', 'Atletico Nacional', 3988769002,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'MD', 'Atletico Nacional', 1264199927,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'MCD', 'Atletico Nacional', 4797896034,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'DFC', 'Atletico Nacional', 4328046389,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'DFC', 'Atletico Nacional', 4396030980,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'DFC', 'Atletico Nacional', 4587825647,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '3-1-4-2', 'POR', 'Atletico Nacional', 6262475558,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (0, '3-1-4-2', 'ED', 'Atletico Nacional', 2716593521,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (0, '3-1-4-2', 'MCD', 'Atletico Nacional', 9453082666,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (0, '3-1-4-2', 'MCD', 'Atletico Nacional', 4797896034,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (0, '3-1-4-2', 'POR', 'Atletico Nacional', 4017598396,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (0, '3-1-4-2', 'MCO', 'Atletico Nacional', 8570477019,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (0, '3-1-4-2', 'DFC', 'Atletico Nacional', 9751155808,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'DC', 'Deportivo Pereira', 8886519759,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'MD', 'Deportivo Pereira', 5971739634,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'MC', 'Deportivo Pereira', 6995908868,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'MC', 'Deportivo Pereira', 4598735722,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'MI', 'Deportivo Pereira', 2486035306,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'MCD', 'Deportivo Pereira', 4520615715,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'LD', 'Deportivo Pereira', 9983568199,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'DFC', 'Deportivo Pereira', 4004213968,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'DFC', 'Deportivo Pereira', 5740077037,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'LI', 'Deportivo Pereira', 2798612409,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '4-1-4-1', 'POR', 'Deportivo Pereira', 2542654245,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));
