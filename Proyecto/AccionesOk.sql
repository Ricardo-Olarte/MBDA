/*---------------------------------Mantener Jugador---------------------------------*/
/*Eliminar*/
SELECT * FROM Convocados;
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI') AND equipo = 'Deportes Tolima';
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 16:00','DD-MM-YYYY HH24:MI') AND equipo = 'Rionegro';
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 18:00','DD-MM-YYYY HH24:MI') AND equipo = 'Once Caldas';
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI') AND equipo = 'Envigado F�tbol Club';
DELETE FROM Plantillas WHERE partido = TO_DATE('24-01-2020 22:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atl�tico Bucaramanga';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 14:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atl�tico Junior';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 16:00','DD-MM-YYYY HH24:MI') AND equipo = 'Am�rica de Cali';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 18:00','DD-MM-YYYY HH24:MI') AND equipo = 'Patriotas Boyaca';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 20:00','DD-MM-YYYY HH24:MI') AND equipo = 'Atletico Nacional';
DELETE FROM Plantillas WHERE partido = TO_DATE('25-01-2020 22:00','DD-MM-YYYY HH24:MI') AND equipo = 'Millonarios F�tbol Club';
SELECT * FROM Convocados;


/*---------------------------------Mantener Estadio---------------------------------*/
/*Eliminar*/
SELECT * FROM Equipos;
SELECT * FROM Partidos;
DELETE FROM Estadios WHERE nombre = 'Estadio Manuel Murillo Toro';
DELETE FROM Estadios WHERE nombre = 'Estadio Alberto Grisales';
DELETE FROM Estadios WHERE nombre = 'Estadio Palogrande';
DELETE FROM Estadios WHERE nombre = 'Polideportivo Sur';
DELETE FROM Estadios WHERE nombre = 'Estadio Alfonso L�pez';
DELETE FROM Estadios WHERE nombre = 'Estadio Roberto Mel�ndez';
DELETE FROM Estadios WHERE nombre = 'Ol�mpico Pascual Guerrero';
DELETE FROM Estadios WHERE nombre = 'Estadio Atanasio Girardot';
DELETE FROM Estadios WHERE nombre = 'Estadio Nemesio Camacho El Campin';
DELETE FROM Estadios WHERE nombre = 'Estadio Palogrande';
SELECT * FROM Equipos;
SELECT * FROM Partidos;