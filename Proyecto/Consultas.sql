/*Consultas*/
/*Consultar Los jugadores que estan amonestados en mi equipo*/
SELECT PersonasNaturales.nombre
FROM PersonasNaturales, Jugadores, Amonestaciones
WHERE PersonasNaturales.cedula = Jugadores.cedula AND Jugadores.cedula = Amonestaciones.jugador
      AND (Amonestaciones.Tarjeta = 'A' OR Amonestaciones.Tarjeta = 'R');
      
/*Consultar los mejores pasadores de mi Equipo*/
SELECT PersonasNaturales.nombre
FROM PersonasNaturales, Jugadores, Pases
WHERE PersonasNaturales.cedula = Jugadores.cedula AND Jugadores.cedula = Pases.jugador AND Pases.efectividadAcierto >= 50;
      