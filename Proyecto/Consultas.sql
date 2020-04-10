/*Consultas*/
/*Consultar Los jugadores que estan amonestados en mi equipo*/
SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, COUNT(Amonestaciones.jugador) AS "Total Tarjetas"
FROM PersonasNaturales, Jugadores, Amonestaciones
WHERE PersonasNaturales.cedula = Jugadores.cedula AND Jugadores.cedula = Amonestaciones.jugador AND (Amonestaciones.Tarjeta = 'A' OR Amonestaciones.Tarjeta = 'R')
GROUP BY PersonasNaturales.cedula, PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido;
      
/*Consultar los mejores pasadores de mi Equipo*/
SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, SUM(Pases.efectividadAcierto)/COUNT(Pases.jugador) AS "%Acierto"
FROM PersonasNaturales, Jugadores, Pases
WHERE PersonasNaturales.cedula = Jugadores.cedula AND Jugadores.cedula = Pases.jugador AND Pases.efectividadAcierto >= 50 
GROUP BY PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, PersonasNaturales.cedula
ORDER BY SUM(Pases.efectividadAcierto)/COUNT(Pases.jugador) DESC;