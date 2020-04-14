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
DELETE FROM Estadios WHERE nombre = 'Estadio Manuel Murillo Toro';
DELETE FROM Estadios WHERE nombre = 'Estadio Alberto Grisales';
DELETE FROM Estadios WHERE nombre = 'Estadio Palogrande';
DELETE FROM Estadios WHERE nombre = 'Polideportivo Sur';
DELETE FROM Estadios WHERE nombre = 'Estadio Alfonso López';
DELETE FROM Estadios WHERE nombre = 'Estadio Roberto Meléndez';
DELETE FROM Estadios WHERE nombre = 'Olímpico Pascual Guerrero';
DELETE FROM Estadios WHERE nombre = 'Estadio Atanasio Girardot';
DELETE FROM Estadios WHERE nombre = 'Estadio Nemesio Camacho El Campin';
--SELECT * FROM Equipos;
--SELECT * FROM Partidos;

/*---------------------------------Mantener Arbitro---------------------------------*/
/*Eliminar*/
--SELECT * FROM PitadosPor;
--SELECT * FROM Amonestaciones;
DELETE FROM Arbitros WHERE cedula = 344394667;
DELETE FROM Arbitros WHERE cedula = 5609375396;
DELETE FROM Arbitros WHERE cedula = 8343796322;
DELETE FROM Arbitros WHERE cedula = 7142422770;
DELETE FROM Arbitros WHERE cedula = 1475523806;
DELETE FROM Arbitros WHERE cedula = 8570614367;
DELETE FROM Arbitros WHERE cedula = 714136657;
DELETE FROM Arbitros WHERE cedula = 6428896377;
DELETE FROM Arbitros WHERE cedula = 5640342863;
DELETE FROM Arbitros WHERE cedula = 7200872833;
--SELECT * FROM PitadosPor;
--SELECT * FROM Amonestaciones;