/*---------------------------------Mantener Jugador---------------------------------*/
/*Adiconar*/
INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(383045219, 30, 'MP', 8120405);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(1619112980, 26, 'CAI', 8580268);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(344394667, 10, 'MCD', 3133944);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(6812319878, 77, 'ED', 6857010);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(4881458060, 92, 'MI', 9385516);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(8442758898, 75, 'MP', 7842317);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(2966846225, 30, 'MD', 1637693);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(591684115, 3, 'LI', 1967931);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(6657208211, 25, 'SDI', 4557247);

INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
VALUES(6508542865, 91, 'DC', 9551170);

/*Modificar*/
UPDATE PersonasNaturales SET primerNombre = 'Andres' WHERE cedula = 7250170006;
UPDATE PersonasNaturales SET primerApellido = 'Calderon' WHERE cedula = 7250170006;
UPDATE PersonasNaturales SET primerNombre = 'ASA' WHERE cedula = 7250170006;
UPDATE PersonasNaturales SET nacionalidad = 'Cordoba' WHERE cedula = 7250170006;
UPDATE PersonasNaturales SET rh = '+' WHERE cedula = 7250170006;
UPDATE PersonasNaturales SET sangre = 'A' WHERE cedula = 7250170006;
UPDATE PersonasNaturales SET primerNombre = 'Ricardo' WHERE cedula = 2288338297;
UPDATE PersonasNaturales SET primerApellido = 'Olarite' WHERE cedula = 2288338297;
UPDATE PersonasNaturales SET sangre = 'B' WHERE cedula = 2288338297;
UPDATE PersonasNaturales SET nacionalidad = 'Italia' WHERE cedula = 2288338297;
UPDATE PersonasNaturales SET rh = '+' WHERE cedula = 2288338297;

/*Eliminar*/
DELETE FROM Jugadores WHERE cedula = 4208645920;
DELETE FROM Jugadores WHERE cedula = 5552430554;
DELETE FROM Jugadores WHERE cedula = 9882745630;
DELETE FROM Jugadores WHERE cedula = 116780096;
DELETE FROM Jugadores WHERE cedula = 3058989027;
DELETE FROM Jugadores WHERE cedula = 7641147947;
DELETE FROM Jugadores WHERE cedula = 9494346583;
DELETE FROM Jugadores WHERE cedula = 9965709297;
DELETE FROM Jugadores WHERE cedula = 8810383827;
DELETE FROM Jugadores WHERE cedula = 6412407705;

/*---------------------------------Mantener Plantilla---------------------------------*/
/*Adiconar*/
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 6575911454, 1, 'MC');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 713217454, 1, 'MC');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 8430370510, 1, 'MC');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 7206519706, 1, 'MC');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 7446594805, 1, 'MC');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 7333255169, 0, 'MCO');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 1051499341, 0, 'MCO');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 4192798673, 0, 'MCO');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 7241835168, 0, 'MCO');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 4078192125, 0, 'MCO');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 758865285, 0, 'MCO');

INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 9073392748, 1, 'POR');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 8561544339, 1, 'POR');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 8425971880, 1, 'POR');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 991444853, 1, 'POR');
INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
VALUES('Deportes Tolima', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 103955891, 1, 'POR');

/*Modificar*/
UPDATE Plantillas SET equipo = 'Envigado Fútbol Club' WHERE partido = TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI') AND equipo = 'Deportes Tolima';
UPDATE Plantillas SET equipo = 'Millonarios Fútbol Club' WHERE partido = TO_DATE('24-01-2020 16:00','DD-MM-YYYY HH24:MI') AND equipo = 'Rionegro';
UPDATE Plantillas SET equipo = 'América de Cali' WHERE partido = TO_DATE('24-01-2020 18:00','DD-MM-YYYY HH24:MI') AND equipo = 'Once Caldas';
UPDATE Plantillas SET equipo = 'Atlético Junior' WHERE partido = TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI') AND equipo = 'Envigado Fútbol Club';
UPDATE Plantillas SET equipo = 'Patriotas Boyaca' WHERE partido = TO_DATE('24-01-2020 22:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atlético Bucaramanga';
UPDATE Plantillas SET partido = TO_DATE('25-01-2020 20:00','DD-MM-YYYY HH24:MI') WHERE partido = TO_DATE('25-01-2020 14:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atlético Junior';
UPDATE Plantillas SET partido = TO_DATE('25-01-2020 18:00','DD-MM-YYYY HH24:MI') WHERE partido = TO_DATE('25-01-2020 16:00','DD-MM-YYYY HH24:MI') AND equipo = 'América de Cali';
UPDATE Plantillas SET partido = TO_DATE('25-01-2020 22:00','DD-MM-YYYY HH24:MI') WHERE partido = TO_DATE('25-01-2020 18:00','DD-MM-YYYY HH24:MI') AND equipo = 'Patriotas Boyaca';
UPDATE Plantillas SET partido = TO_DATE('25-01-2020 16:00','DD-MM-YYYY HH24:MI') WHERE partido = TO_DATE('25-01-2020 20:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atletico Nacional';
UPDATE Plantillas SET partido = TO_DATE('25-01-2020 14:00','DD-MM-YYYY HH24:MI') WHERE partido = TO_DATE('25-01-2020 22:00','DD-MM-YYYY HH24:MI') AND equipo = 'Millonarios Fútbol Club';


/*---------------------------------Mantener Equipo---------------------------------*/
/*Modificar*/
UPDATE Equipos SET nombre = 'Fornite', pais = 'Argentina', ciudad = 'Mar del plata' WHERE nombre = 'Real Madrid';
UPDATE Equipos SET nombre = 'Cod Mobile', pais = 'Uruguay', ciudad = 'Ciudad De uruguay' WHERE nombre = 'Manchester United';
UPDATE Equipos SET nombre = 'Fifa 20', pais = 'Francia', ciudad = 'Paris' WHERE nombre = 'Manchester City';
UPDATE Equipos SET nombre = 'Adata', pais = 'Italia', ciudad = 'Roma' WHERE nombre = 'Atletico Madrid';
UPDATE Equipos SET nombre = 'Playstation', pais = 'Ecuador', ciudad = 'Quito' WHERE nombre = 'Liverpool';
UPDATE Equipos SET nombre = 'Altantis', pais = 'China', ciudad = 'WuHan' WHERE nombre = 'Barcelona';
UPDATE Equipos SET nombre = 'Los Angeles', pais = 'Japon', ciudad = 'Tokio' WHERE nombre = 'Juventus';
UPDATE Equipos SET nombre = 'Olimpo', pais = 'Grecia', ciudad = 'Sparta' WHERE nombre = 'Bayern Munchen';
UPDATE Equipos SET nombre = 'Soles', pais = 'Filipinas', ciudad = 'Los pastiles' WHERE nombre = 'AS Monaco';
UPDATE Equipos SET nombre = 'Lunas', pais = 'Afganistan', ciudad = 'Rasbie' WHERE nombre = 'Napoles';

/*Eliminar*/
DELETE Equipos WHERE nombre = 'Real Madrid';
DELETE Equipos WHERE nombre = 'Manchester United';
DELETE Equipos WHERE nombre = 'Manchester City';
DELETE Equipos WHERE nombre = 'Atletico Madrid';
DELETE Equipos WHERE nombre = 'Liverpool';
DELETE Equipos WHERE nombre = 'Barcelona';
DELETE Equipos WHERE nombre = 'Juventus';
DELETE Equipos WHERE nombre = 'Bayern Munchen';
DELETE Equipos WHERE nombre = 'AS Monaco';
DELETE Equipos WHERE nombre = 'Napoles';

/*---------------------------------Mantener Estadio---------------------------------*/
/*Modificar*/
UPDATE Estadios SET nombre = 'Fornite', pais = 'Argentina' WHERE nombre = 'Santiago Bernabeu';
UPDATE Estadios SET nombre = 'Cod Mobile', pais = 'Uruguay' WHERE nombre = 'Wanda Metropolitano';
UPDATE Estadios SET nombre = 'Fifa 20', pais = 'Francia' WHERE nombre = 'Old Traford';
UPDATE Estadios SET nombre = 'Adata', pais = 'Italia' WHERE nombre = 'Emirates Stadium';
UPDATE Estadios SET nombre = 'Playstation', pais = 'Ecuador' WHERE nombre = 'Juventus Stadium';
UPDATE Estadios SET nombre = 'Altantis', pais = 'China' WHERE nombre = 'Camp Now';
UPDATE Estadios SET nombre = 'Los Angeles', pais = 'Japon' WHERE nombre = 'Parq Des Principes';
UPDATE Estadios SET nombre = 'Olimpo', pais = 'Grecia' WHERE nombre = 'Sayayines Stadium';
UPDATE Estadios SET nombre = 'Soles', pais = 'Filipinas' WHERE nombre = 'Vicente Calderon';
UPDATE Estadios SET nombre = 'Lunas', pais = 'Afganistan' WHERE nombre = 'Anfield';

/*---------------------------------Registrar Partido---------------------------------*/
/*Adicionar*/
INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2022 14:00','DD-MM-YYYY HH24:MI'), '02-02', 'Santiago Bernabeu');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2023 16:00','DD-MM-YYYY HH24:MI'), '02-02', 'Wanda Metropolitano');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2024 18:00','DD-MM-YYYY HH24:MI'), '04-03', 'Old Traford');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2025 20:00','DD-MM-YYYY HH24:MI'), '04-02', 'Emirates Stadium');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('24-08-2026 22:00','DD-MM-YYYY HH24:MI'), '01-02', 'Juventus Stadium');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2027 14:00','DD-MM-YYYY HH24:MI'), '02-02', 'Camp Now');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2028 16:00','DD-MM-YYYY HH24:MI'), '03-02', 'Parq Des Principes');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2029 18:00','DD-MM-YYYY HH24:MI'), '04-01', 'Sayayines Stadium');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2030 20:00','DD-MM-YYYY HH24:MI'), '02-05', 'Vicente Calderon');

INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-09-2031 22:00','DD-MM-YYYY HH24:MI'), '01-02', 'Anfield');

/*Modificar*/
---ACA ESTOY CRACK
UPDATE Partidos SET marcadorFinal = '01-04' WHERE partidoFecha = TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '02-02' WHERE partidoFecha = TO_DATE('24-01-2020 16:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '01-02' WHERE partidoFecha = TO_DATE('24-01-2020 18:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '00-01' WHERE partidoFecha = TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '01-03' WHERE partidoFecha = TO_DATE('24-01-2020 22:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '02-02' WHERE partidoFecha = TO_DATE('25-01-2020 14:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '04-03' WHERE partidoFecha = TO_DATE('25-01-2020 16:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '07-08' WHERE partidoFecha = TO_DATE('25-01-2020 18:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '08-08' WHERE partidoFecha = TO_DATE('25-01-2020 20:00','DD-MM-YYYY HH24:MI');
UPDATE Partidos SET marcadorFinal = '08-08' WHERE partidoFecha = TO_DATE('25-01-2020 22:00','DD-MM-YYYY HH24:MI');

/*Eliminar*/
--SELECT * FROM PitadosPor;
--SELECT * FROM Plantilla;
--SELECT * FROM Encuentros;
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('24-01-2020 16:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('24-01-2020 18:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('24-01-2020 22:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('25-01-2020 14:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('25-01-2020 16:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('25-01-2020 18:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('25-01-2020 20:00','DD-MM-YYYY HH24:MI');
DELETE FROM Partidos WHERE partidoFecha = TO_DATE('25-01-2020 22:00','DD-MM-YYYY HH24:MI');
--SELECT * FROM PitadosPor;
--SELECT * FROM Plantilla;
--SELECT * FROM Encuentros;


/*---------------------------------Mantener Arbitro---------------------------------*/
/*Adicionar*/
INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(8078421943, TO_DATE('1979-09-05', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(4727151904, TO_DATE('1996-11-28', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(2288338297, TO_DATE('1998-06-18', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(1554783540, TO_DATE('1986-05-29', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(1554783540, TO_DATE('1983-01-20', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(2593333937, TO_DATE('1983-07-12', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(6727920904, TO_DATE('1990-01-23', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(6993479441, TO_DATE('1977-09-14', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(8810383827, TO_DATE('1979-04-12', 'YYYY-MM-DD'), null);

INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
VALUES(116780096, TO_DATE('1972-08-04', 'YYYY-MM-DD'), null);

/*Modificar*/
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-05-14', 'YYYY-MM-DD') WHERE cedula = 1442236020;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-06-13', 'YYYY-MM-DD') WHERE cedula = 8182902750;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-07-12', 'YYYY-MM-DD') WHERE cedula = 9399531885;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-08-11', 'YYYY-MM-DD') WHERE cedula = 6712312616;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-09-10', 'YYYY-MM-DD') WHERE cedula = 9585222521;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-10-09', 'YYYY-MM-DD') WHERE cedula = 508674895;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-11-08', 'YYYY-MM-DD') WHERE cedula = 6026925671;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-12-08', 'YYYY-MM-DD') WHERE cedula = 7480252394;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-12-23', 'YYYY-MM-DD') WHERE cedula = 2406814574;
UPDATE Arbitros SET fechaFinal = TO_DATE('2020-11-22', 'YYYY-MM-DD') WHERE cedula = 8662744853;

/*---------------------------------Registrar Evento---------------------------------*/
/*Adicionar*/
--Tg_Ad_Disparos

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 12, 53, TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 88, 7582069659);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 34, 60, TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 33, 7582069659);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 45, 52, TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 77, 7582069659);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 56, 70, TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 1, 6540172698);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 70, 59, TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 9, 7446594805);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 96, 78, TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 6, 4359639120);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 73, 12, TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 4, 6540172698);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 45, 1, TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 3, 7582069659);

INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
VALUES(1, 76, 42, TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 90, 5940422660);

--Tg_Ad_Eventos
INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(14, 758865285, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(38, 7020950151, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(52, 758865285, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(90, 5940422660, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(1, 9073392748, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(2, 9073392748, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(3, 7582069659, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(4, 6540172698, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(6, 4359639120, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

INSERT INTO Eventos(tiempo, jugador, partido)
VALUES(9, 7446594805, TO_DATE('28-07-2020 14:00','DD-MM-YYYY HH24:MI'));

--Tg_Ad_Amonestacion
INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 81, 103955891, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 85, 7582069659, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 84, 8425971880, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 77, 3754972420, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'),  83, 4359639120, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 82, 8561544339, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 79, 7241835168, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 80, 6540172698, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 76, 9413409560, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 72, 5808091049, 'A', 'Falta Intencional', 8643281335);

INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 75, 5940422660, 'A', 'Falta Intencional', 8643281335);

--Tg_Ad_Pase
INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(1, 95, 1, TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), 9, 8561544339);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(1, 95, 1, TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), 9, 7446594805);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(1, 95, 1, TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), 6, 4359639120);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(1, 95, 1, TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), 4, 6540172698);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(1, 95, 1, TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), 3, 7582069659);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(1, 95, 1, TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), 2, 9073392748);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(1, 95, 1, TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), 1, 9073392748);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(1, 95, 1, TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), 90, 5940422660);

INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
VALUES(1, 95, 1, TO_DATE('29-01-2020 14:00','DD-MM-YYYY HH24:MI'), 52, 758865285);

--Tg_Ad_Atajada
INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020', 'DD-MM-YYYY'), 80, 6540172698, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 76, 9413409560, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 72, 5808091049, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 74, 8597913327, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 58, 3848434383, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 65, 4451764485, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 70, 713217454, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 63, 7558163961, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 62, 8561544339, 76, 7);

INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
VALUES(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'), 61, 991444853, 76, 7);

/*Modificar*/
--Eventos
UPDATE Eventos SET tiempo = 23 WHERE tiempo = 14 AND jugador = 758865285 AND partido = TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI');
UPDATE Eventos SET tiempo = 77 WHERE tiempo = 38 AND jugador = 7020950151 AND partido = TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI');
UPDATE Eventos SET tiempo = 32 WHERE tiempo = 52 AND jugador = 758865285 AND partido = TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI');
UPDATE Eventos SET tiempo = 24 WHERE tiempo = 90 AND jugador = 5940422660 AND partido = TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI');
UPDATE Eventos SET tiempo = 65 WHERE tiempo = 1 AND jugador = 9073392748 AND partido = TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI');
UPDATE Eventos SET tiempo = 75 WHERE tiempo = 2 AND jugador = 9073392748 AND partido = TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI');
UPDATE Eventos SET tiempo = 87 WHERE tiempo = 3 AND jugador = 7582069659 AND partido = TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI');
UPDATE Eventos SET tiempo = 31 WHERE tiempo = 4 AND jugador = 6540172698 AND partido = TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI');
UPDATE Eventos SET tiempo = 12 WHERE tiempo = 6 AND jugador = 4359639120 AND partido = TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI');

--Amonestaciones
UPDATE Amonestaciones SET tiempo = 23 WHERE tiempo = 87 AND jugador = 356865033;
UPDATE Amonestaciones SET tiempo = 77 WHERE tiempo = 87 AND jugador = 8597913327;
UPDATE Amonestaciones SET tiempo = 32 WHERE tiempo = 92 AND jugador = 758865285;
UPDATE Amonestaciones SET tiempo = 24 WHERE tiempo = 88 AND jugador = 6891611059;
UPDATE Amonestaciones SET tiempo = 24 WHERE tiempo = 93 AND jugador = 7582069659;

--Atajadas
UPDATE Atajadas SET tiempo = 54 WHERE tiempo = 14 AND jugador = 6540172698;
UPDATE Atajadas SET tiempo = 12 WHERE tiempo = 33 AND jugador = 7582069659;
UPDATE Atajadas SET tiempo = 53 WHERE tiempo = 38 AND jugador = 7582069659;
UPDATE Atajadas SET tiempo = 43 WHERE tiempo = 52 AND jugador = 6540172698;
UPDATE Atajadas SET tiempo = 89 WHERE tiempo = 90 AND jugador = 7582069659;

--Disparos
UPDATE Disparos SET tiempo = 54 WHERE tiempo = 14 AND jugador = 758865285;
UPDATE Disparos SET tiempo = 12 WHERE tiempo = 1 AND jugador = 9073392748;
UPDATE Disparos SET tiempo = 53 WHERE tiempo = 38 AND jugador = 7020950151;
UPDATE Disparos SET tiempo = 43 WHERE tiempo = 52 AND jugador = 758865285;
UPDATE Disparos SET tiempo = 89 WHERE tiempo = 90 AND jugador = 5940422660;

--Pases
UPDATE Disparos SET tiempo = 54 WHERE tiempo = 22 AND jugador = 9812110706;
UPDATE Disparos SET tiempo = 12 WHERE tiempo = 21 AND jugador = 8425971880;
UPDATE Disparos SET tiempo = 53 WHERE tiempo = 20 AND jugador = 4923159094;
UPDATE Disparos SET tiempo = 43 WHERE tiempo = 19 AND jugador = 5940422660;
UPDATE Disparos SET tiempo = 89 WHERE tiempo = 17 AND jugador = 4192798673;


/*Eliminar*/
DELETE FROM Eventos;
DELETE FROM Amonestaciones;
DELETE FROM Atajadas;
DELETE FROM Disparos;
DELETE FROM Pases;
