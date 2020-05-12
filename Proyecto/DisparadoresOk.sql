/*---------------------------------Mantener Jugador---------------------------------*/
/*Adicionar*/
INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(9291647714, 30, 'MP', 8120405);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(538947879, 26, 'CAI', 8580268);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(4264131764, 10, 'MCD', 3133944);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(5824287872, 77, 'ED', 6857010);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(3252275953, 92, 'MI', 9385516);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(8276976810, 75, 'MP', 7842317);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(3901522159, 30, 'MD', 1637693);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(6505307253, 3, 'LI', 1967931);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(9274247126, 25, 'SDI', 4557247);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(5592176544, 91, 'DC', 9551170);

/*Modificar*/
UPDATE PersonasNaturales SET correo = 'Andres@gmail.com' WHERE cedula = 8078421943;
UPDATE PersonasNaturales SET correo = 'Calderon@gmail.com' WHERE cedula = 4727151904;
UPDATE PersonasNaturales SET correo = 'Ricardo@hotmail.com' WHERE cedula = 2288338297;
UPDATE PersonasNaturales SET correo = 'Olarite@yahoo.com' WHERE cedula = 1554783540;
UPDATE PersonasNaturales SET correo = 'basestest@outlook.co' WHERE cedula = 2593333937;
UPDATE PersonasNaturales SET eps = 'Nueva EPS' WHERE cedula = 1894232270;
UPDATE PersonasNaturales SET eps = 'Colsubsidio' WHERE cedula = 396657628;
UPDATE PersonasNaturales SET eps = 'Famisanar' WHERE cedula = 6727920904;
UPDATE PersonasNaturales SET eps = 'Nueva EPS' WHERE cedula = 6763940351;
UPDATE PersonasNaturales SET eps = 'Colseguros' WHERE cedula = 7250170006;


/*---------------------------------Mantener Plantilla---------------------------------*/
/*Adiconar*/
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 6540172698, 1, 'POR');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 713217454, 1, 'LI');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 8430370510, 1, 'LD');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 7206519706, 1, 'DFC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 7446594805, 1, 'DFC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 7333255169, 1, 'MCD');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 1051499341, 1, 'MC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 4192798673, 1, 'MC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 7241835168, 1, 'EI');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 4078192125, 1, 'ED');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 758865285, 1, 'DC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 9073392748, 0, 'POR');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 8561544339, 0, 'DFC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 103955891, 0, 'DC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 4923159094, 0, 'EI');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 2998216241, 0, 'ED');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 8425971880, 0, 'MC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 991444853, 0, 'MCO');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 6809846236, 1, 'LD');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 9606300908, 1, 'DFC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 9301486272, 1, 'DFC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 3703564460, 1, 'MCD');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 8580866230, 1, 'MC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 190709149, 1, 'MCO');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 3053001940, 1, 'EI');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 2442495015, 1, 'ED');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 7947228069, 1, 'DC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 8795840143, 0, 'POR');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 9670270335, 0, 'DFC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 9312243650, 0, 'MC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 3695462724, 0, 'MCO');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 809619660, 0, 'DC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 7933126582, 0, 'EI');

/*Modificar*/
UPDATE Plantillas SET formacion = '5-4-1' WHERE partido = TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI') AND equipo = 'Deportes Tolima';
UPDATE Plantillas SET formacion = '5-3-2' WHERE partido = TO_DATE('24-01-2020 16:00','DD-MM-YYYY HH24:MI') AND equipo = 'Rionegro';
UPDATE Plantillas SET formacion = '5-2-2-1' WHERE partido = TO_DATE('24-01-2020 18:00','DD-MM-YYYY HH24:MI') AND equipo = 'Once Caldas';
UPDATE Plantillas SET formacion = '5-2-1-2' WHERE partido = TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI') AND equipo = 'Envigado Fútbol Club';
UPDATE Plantillas SET formacion = '4-5-1' WHERE partido = TO_DATE('24-01-2020 22:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atlético Bucaramanga';
UPDATE Plantillas SET formacion = '4-4-2' WHERE partido = TO_DATE('25-01-2020 14:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atlético Junior';
UPDATE Plantillas SET formacion = '4-4-1-1' WHERE partido = TO_DATE('25-01-2020 16:00','DD-MM-YYYY HH24:MI') AND equipo = 'América de Cali';
UPDATE Plantillas SET formacion = '4-3-3' WHERE partido = TO_DATE('25-01-2020 18:00','DD-MM-YYYY HH24:MI') AND equipo = 'Patriotas Boyaca';
UPDATE Plantillas SET formacion = '4-3-2-1' WHERE partido = TO_DATE('25-01-2020 20:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atletico Nacional';
UPDATE Plantillas SET formacion = '4-3-1-2' WHERE partido = TO_DATE('25-01-2020 22:00','DD-MM-YYYY HH24:MI') AND equipo = 'Millonarios Fútbol Club';

/*---------------------------------Mantener Equipo---------------------------------*/
/*Adicionar*/
INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('Real Madrid',  70000000000, TO_DATE('03-Mar-1953','DD-MM-YYYY'), 'Bogota Dc', 'Estadio Atanasio Girardot');

INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('Manchester United',  10000000000, TO_DATE('01-Ene-1954','DD-MM-YYYY'), 'Cali', 'Estadio Departamental Libertad');

INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('Manchester City',  24000000000, TO_DATE('10-Ago-1938','DD-MM-YYYY'), 'Cali', 'Estadio Nemesio Camacho El Campin');

INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('Atletico Madrid',  12000000000, TO_DATE('18-12-1954','DD-MM-YYYY'), 'Bogota DC', 'Estadio Manuel Murillo Toro');

INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('Liverpool',  10500000000, TO_DATE('01-Ene-1970','DD-MM-YYYY'), 'Barrancabermeja', 'Estadio Daniel Villa Zapata');

INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('Barcelona',  30000000000, TO_DATE('11-May-1986','DD-MM-YYYY'), 'Barranquilla', 'Estadio Roberto Meléndez');

INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('Juventus',  11000000000, TO_DATE('17-Mar-1961','DD-MM-YYYY'), 'Chia', 'Estadio Palogrande');

INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('Bayern Munchen',  30000000000, TO_DATE('20-Jul-1937','DD-MM-YYYY'), 'Santander', 'Olímpico Pascual Guerrero');

INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('AS Monaco',  30000000000, TO_DATE('01-Ene-1927','DD-MM-YYYY'), 'Medellin', 'Estadio Deportivo Cali');

INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
VALUES('Napoles',  2500000000, TO_DATE('01-May-1971','DD-MM-YYYY'), 'Pereira', 'Estadio Hernán Ramírez Villegas');

/*Modificar*/
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'Los Vikingos', estadio = 'Estadio Nemesio Camacho El Campin' WHERE nombre = 'Real Madrid';
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'Los Diablos Rojos', estadio = 'Estadio Manuel Murillo Toro' WHERE nombre = 'Manchester United';
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'Los ciudadanos', estadio = 'Estadio Hernán Ramírez Villegas' WHERE nombre = 'Manchester City';
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'Los Colchoneros', estadio = 'Estadio Nemesio Camacho El Campin' WHERE nombre = 'Atletico Madrid';
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'Los Rojos', estadio = 'Olímpico Pascual Guerrero' WHERE nombre = 'Liverpool';
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'Los Cules', estadio = 'Estadio Roberto Meléndez' WHERE nombre = 'Barcelona';
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'La Vecchia Signora', estadio = 'Estadio Roberto Meléndez' WHERE nombre = 'Juventus';
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'Los Bavaros', estadio = 'Estadio Departamental Libertad' WHERE nombre = 'Bayern Munchen';
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'Rouge et Blanc', estadio = 'Estadio Daniel Villa Zapata' WHERE nombre = 'AS Monaco';
UPDATE Equipos SET presupuesto = 99999990000, apodo = 'Gli Azzurri', estadio = 'Estadio Palogrande' WHERE nombre = 'Napoles';


/*---------------------------------Mantener Estadio---------------------------------*/
/*Adicionar*/
INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(40943, 'Medellín - Antioquia', 'Santiago Bernabeu');

INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(19000, 'Carretera Panamericana - SanJuanDePasto', 'Wanda Metropolitano');

INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(49000, 'Bogota DC - Bogota DC', 'Old Traford');

INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(28100, 'Ibagué - Tolima', 'Emirates Stadium');

INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(10400, 'Barrancabermeja - Santander', 'Juventus Stadium');

INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(46690, 'Barranquilla - Atlántico', 'Camp Now');

INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(32670, 'Manizales - Caldas', 'Parq Des Principes');

INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(35400, 'Cali - Valle del Cauca', 'Sayayines Stadium');

INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(42000, 'Palmira - Valle del Cauca', 'Vicente Calderon');

INSERT INTO Estadios(capacidad, ubicacion, nombre) 
VALUES(30290, 'Pereira - Risaralda', 'Anfield');

/*Modificar*/
UPDATE Estadios SET capacidad = 43214 WHERE nombre = 'Santiago Bernabeu';
UPDATE Estadios SET capacidad = 76453 WHERE nombre = 'Wanda Metropolitano';
UPDATE Estadios SET capacidad = 87574 WHERE nombre = 'Old Traford';
UPDATE Estadios SET capacidad = 96564 WHERE nombre = 'Emirates Stadium';
UPDATE Estadios SET capacidad = 36453 WHERE nombre = 'Juventus Stadium';
UPDATE Estadios SET capacidad = 85664 WHERE nombre = 'Camp Now';
UPDATE Estadios SET capacidad = 12354 WHERE nombre = 'Parq Des Principes';
UPDATE Estadios SET capacidad = 84593 WHERE nombre = 'Sayayines Stadium';
UPDATE Estadios SET capacidad = 99999 WHERE nombre = 'Vicente Calderon';
UPDATE Estadios SET capacidad = 47564 WHERE nombre = 'Anfield';


/*---------------------------------Registrar Partido---------------------------------*/
/*Adicionar*/
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2020 14:00','DD-MM-YYYY HH24:MI'), '02-02', 'Santiago Bernabeu');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2020 16:00','DD-MM-YYYY HH24:MI'), '02-02', 'Wanda Metropolitano');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2020 18:00','DD-MM-YYYY HH24:MI'), '04-03', 'Old Traford');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2020 20:00','DD-MM-YYYY HH24:MI'), '04-02', 'Emirates Stadium');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2020 22:00','DD-MM-YYYY HH24:MI'), '01-02', 'Juventus Stadium');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2020 14:00','DD-MM-YYYY HH24:MI'), '02-02', 'Camp Now');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2020 16:00','DD-MM-YYYY HH24:MI'), '03-02', 'Parq Des Principes');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2020 18:00','DD-MM-YYYY HH24:MI'), '04-01', 'Sayayines Stadium');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2020 20:00','DD-MM-YYYY HH24:MI'), '02-05', 'Vicente Calderon');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2020 22:00','DD-MM-YYYY HH24:MI'), '01-02', 'Anfield');

/*Modificar*/
UPDATE Partidos SET marcadorFinal = '02-02' WHERE partidoFecha = TO_DATE('22-03-2020 14:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '01-06' WHERE partidoFecha = TO_DATE('22-03-2020 16:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '00-00' WHERE partidoFecha = TO_DATE('22-03-2020 18:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '00-01' WHERE partidoFecha = TO_DATE('22-03-2020 20:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '01-03' WHERE partidoFecha = TO_DATE('22-03-2020 22:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '03-02' WHERE partidoFecha = TO_DATE('23-03-2020 14:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '03-03' WHERE partidoFecha = TO_DATE('23-03-2020 16:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '04-08' WHERE partidoFecha = TO_DATE('23-03-2020 18:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '01-01' WHERE partidoFecha = TO_DATE('23-03-2020 20:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '04-01' WHERE partidoFecha = TO_DATE('23-03-2020 22:00','DD-MM-YYYY HH24:MI');

/*Eliminar*/
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('14-03-2020 14:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('14-03-2020 16:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('14-03-2020 18:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('14-03-2020 20:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('14-03-2020 22:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('15-03-2020 14:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('15-03-2020 16:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('15-03-2020 18:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('15-03-2020 20:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('15-03-2020 22:00','DD-MM-YYYY HH24:MI');

/*---------------------------------Mantener Arbitro---------------------------------*/
/*Adicionar*/
INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(1442236020, TO_DATE('1979-09-05', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(8182902750, TO_DATE('1996-11-28', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(9399531885, TO_DATE('1998-06-18', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(6712312616, TO_DATE('1986-05-29', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(9585222521, TO_DATE('1983-01-20', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(508674895, TO_DATE('1983-07-12', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(6026925671, TO_DATE('1990-01-23', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(7480252394, TO_DATE('1977-09-14', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(2406814574, TO_DATE('1979-04-12', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(8662744853, TO_DATE('1972-08-04', 'YYYY-MM-DD'), null);

/*Modificar*/
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-14', 'YYYY-MM-DD'), puntuacionarbitraje = 4, posicion = 'VAR' WHERE cedula = 1442236020;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-13', 'YYYY-MM-DD'), puntuacionarbitraje = 1, posicion = 'AFL' WHERE cedula = 8182902750;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-12', 'YYYY-MM-DD'), puntuacionarbitraje = 3, posicion = 'VAR' WHERE cedula = 9399531885;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-11', 'YYYY-MM-DD'), puntuacionarbitraje = 5, posicion = 'VAR' WHERE cedula = 6712312616;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-10', 'YYYY-MM-DD'), puntuacionarbitraje = 5, posicion = 'AFL' WHERE cedula = 9585222521;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-09', 'YYYY-MM-DD'), puntuacionarbitraje = 2, posicion = 'VAR' WHERE cedula = 508674895;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-08', 'YYYY-MM-DD'), puntuacionarbitraje = 3, posicion = 'AFL' WHERE cedula = 6026925671;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-07', 'YYYY-MM-DD'), puntuacionarbitraje = 4, posicion = 'AFL' WHERE cedula = 7480252394;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-06', 'YYYY-MM-DD'), puntuacionarbitraje = 2, posicion = 'VAR' WHERE cedula = 2406814574;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-04-05', 'YYYY-MM-DD'), puntuacionarbitraje = 4, posicion = 'VAR' WHERE cedula = 8662744853;

/*---------------------------------Registrar Evento---------------------------------*/
/*Adicionar*/
--Tg_Ad_Eventos
INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(14, 758865285, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(38, 7020950151, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(52, 758865285, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(90, 5940422660, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(1, 9073392748, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(2, 9073392748, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(3, 7582069659, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(4, 6540172698, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(6, 4359639120, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(9, 7446594805, TO_DATE('07-03-2020 14:00','DD-MM-YYYY HH24:MI'));

--Tg_Ad_Disparos
INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 72, 50, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 1, 8078421943);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 72, 50, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 33, 4727151904);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 72, 50, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 54, 2288338297);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 72, 50, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 93, 1554783540);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 72, 50, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 43, 2593333937);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 72, 50, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 21, 1894232270);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 72, 50, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 12, 396657628);

--Tg_Ad_Amonestacion
INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 90, 7582069659, 'A', 'Falta Intencional', 344394667);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 52, 6540172698, 'A', 'Falta Intencional', 344394667);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 38, 7582069659, 'A', 'Falta Intencional', 344394667);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 14, 6540172698, 'A', 'Falta Intencional', 344394667);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 91, 5105300751, 'A', 'Falta Intencional', 344394667);


--Tg_Ad_Pase
INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(20, 48, 1, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 1, 8078421943);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(20, 48, 1, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 33, 4727151904);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(20, 48, 1, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 54, 2288338297);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(20, 48, 1, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 93, 1554783540);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(20, 48, 1, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 43, 2593333937);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(20, 48, 1, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 21, 1894232270);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(20, 48, 1, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 12, 396657628);

--Tg_Ad_Atajada
INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 1, 7582069659, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 33, 7582069659, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 54, 7582069659, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 93, 7582069659, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 43, 7582069659, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 21, 7582069659, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 12, 7582069659, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 88, 7582069659, 76, 7);
