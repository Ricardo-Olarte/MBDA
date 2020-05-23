/*---------------------------------Mantener Plantilla---------------------------------*/
/*Eliminar*/
--SELECT * FROM Convocados;
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI') AND equipo = 'Deportes Tolima';
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 16:00','DD-MM-YYYY HH24:MI') AND equipo = 'Rionegro';
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 18:00','DD-MM-YYYY HH24:MI') AND equipo = 'Once Caldas';
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI') AND equipo = 'Envigado Fútbol Club';
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 22:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atlético Bucaramanga';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 14:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atlético Junior';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 16:00','DD-MM-YYYY HH24:MI') AND equipo = 'América de Cali';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 18:00','DD-MM-YYYY HH24:MI') AND equipo = 'Patriotas Boyaca';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 20:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atletico Nacional';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 22:00','DD-MM-YYYY HH24:MI') AND equipo = 'Millonarios Fútbol Club';
--SELECT * FROM Convocados;


/*---------------------------------Mantener Estadio---------------------------------*/
/*Eliminar*/
--SELECT * FROM Equipos;
--SELECT * FROM Partidos;
DELETE FROM Estadios WHERE nombre = 'Santiago Bernabeu';
DELETE FROM Estadios WHERE nombre = 'Wanda Metropolitano';
DELETE FROM Estadios WHERE nombre = 'Old Traford';
DELETE FROM Estadios WHERE nombre = 'Emirates Stadium';
DELETE FROM Estadios WHERE nombre = 'Juventus Stadium';
DELETE FROM Estadios WHERE nombre = 'Camp Now';
DELETE FROM Estadios WHERE nombre = 'Parq Des Principes';
DELETE FROM Estadios WHERE nombre = 'Sayayines Stadium';
DELETE FROM Estadios WHERE nombre = 'Vicente Calderon';
DELETE FROM Estadios WHERE nombre = 'Anfield';
--SELECT * FROM Equipos;
--SELECT * FROM Partidos;