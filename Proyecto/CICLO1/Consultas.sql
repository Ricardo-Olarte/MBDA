/*Consultas Opertivas*/
/*Consultar los mejores arbitros para asiganarlos a partidos clave de la liga*/
SELECT personasnaturales.primernombre AS Nombre, personasnaturales.primerapellido AS Apellido, arbitros.puntuacionarbitraje AS Valoracion, arbitros.posicion
FROM Arbitros, PersonasNaturales
WHERE puntuacionArbitraje > &punt AND arbitros.cedula = personasnaturales.cedula
ORDER BY puntuacionArbitraje DESC;
/
/*Consultar los partidos proximos */
SELECT Equipo1, Equipo2, partidos.partidofecha AS "Fecha", partidos.estadio AS "Estadio"
FROM Partidos, Encuentros 
WHERE Partidos.partidoFecha=encuentros.partido and MARCADORFINAL is null and (EQUIPO1='&team' or EQUIPO2='&team')
ORDER BY partidos.partidofecha;
/
/*Consultar Los jugadores que estan amonestados en mi equipo*/
SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, COUNT(Amonestaciones.jugador) AS "Total Tarjetas"
FROM PersonasNaturales, Jugadores, Amonestaciones
WHERE PersonasNaturales.cedula = Jugadores.cedula AND Jugadores.cedula = Amonestaciones.jugador AND (Amonestaciones.Tarjeta = 'A' OR Amonestaciones.Tarjeta = 'R')
GROUP BY PersonasNaturales.cedula, PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido
ORDER BY COUNT(Amonestaciones.jugador) DESC;
/
/*Consultar los mejores pasadores de mi Equipo*/
SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, SUM(Pases.efectividadAcierto)/COUNT(Pases.jugador) AS "%Acierto"
FROM PersonasNaturales, Jugadores, Pases
WHERE PersonasNaturales.cedula = Jugadores.cedula AND Jugadores.cedula = Pases.jugador AND Pases.efectividadAcierto >= 50 
GROUP BY PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, PersonasNaturales.cedula
ORDER BY SUM(Pases.efectividadAcierto)/COUNT(Pases.jugador) DESC;
/
/*Consultas Gerenciales*/
/*Consultar al equipo con mejor fairplay*/
SELECT Equipos.Nombre, count(Amonestaciones.jugador) AS "Total Amonestaciones"
FROM Equipos, JugadoEn, Jugadores, Amonestaciones
WHERE Equipos.nombre = JugadoEn.equipo AND Jugadores.cedula = JugadoEn.jugador  AND Jugadores.cedula = Amonestaciones.jugador
GROUP BY Equipos.Nombre
ORDER BY count(Amonestaciones.jugador) DESC;
/
/*Consultar los maximos goleadores de la liga*/
SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, count(Disparos.jugador) AS "TotalGoles"
FROM PersonasNaturales, Equipos, Jugadores, JugadoEn, Disparos
WHERE Equipos.nombre = JugadoEn.equipo AND Jugadores.cedula = JugadoEn.jugador AND Jugadores.cedula = Disparos.jugador 
      AND PersonasNaturales.cedula = Jugadores.cedula AND Disparos.acertadoGol = 1
GROUP BY PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, PersonasNaturales.cedula
ORDER BY count(Disparos.jugador) DESC
/
/*Consultar a los mejores asistentes de goles*/
SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, count(Pases.jugador) AS "Asistencias"
FROM PersonasNaturales, Equipos, Jugadores, JugadoEn, Pases
WHERE Equipos.nombre = JugadoEn.equipo AND Jugadores.cedula = JugadoEn.jugador AND Jugadores.cedula = Pases.jugador 
      AND PersonasNaturales.cedula = Jugadores.cedula AND Pases.gol = 1
GROUP BY PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, PersonasNaturales.cedula
ORDER BY count(Pases.jugador) DESC
/
/*Consultar al mejor atajador de la liga*/
SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, count(Atajadas.porteriaEnCero) AS "Atajadas"
FROM PersonasNaturales, Equipos, Jugadores, JugadoEn, Atajadas
WHERE Equipos.nombre = JugadoEn.equipo AND Jugadores.cedula = JugadoEn.jugador AND Jugadores.cedula = Atajadas.jugador 
      AND PersonasNaturales.cedula = Jugadores.cedula
GROUP BY PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, PersonasNaturales.cedula
ORDER BY count(Atajadas.porteriaEnCero) DESC