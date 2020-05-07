/*Vistas*/

CREATE VIEW MaximoGoleadores AS
    SELECT PersonasNaturales.primerNombre, PersonasNaturales.primerApellido, count(acertadoGol)AS Cantidad_Goles
    FROM Jugadores, PersonasNaturales, Disparos
    WHERE Jugadores.cedula = PersonasNaturales.cedula AND Jugadores.cedula = Disparos.jugador AND Disparos.acertadoGol = 1
    GROUP BY PersonasNaturales.primerNombre, PersonasNaturales.primerApellido, jugadores.cedula
    ORDER BY count(acertadoGol) DESC;
    
CREATE VIEW MayoresAmonestados AS
    SELECT PersonasNaturales.primerNombre, PersonasNaturales.primerApellido, count(tarjeta)AS Cantidad_Amonestaciones
    FROM Jugadores, PersonasNaturales, Amonestaciones
    WHERE Jugadores.cedula = PersonasNaturales.cedula AND Jugadores.cedula = Amonestaciones.jugador
    GROUP BY PersonasNaturales.primerNombre, PersonasNaturales.primerApellido, jugadores.cedula
    ORDER BY count(tarjeta) DESC;
    
CREATE VIEW PartidosProximos AS 
    SELECT Encuentros.Equipo1 AS "Local", Encuentros.Equipo2 AS "Visitante", Encuentros.Partido AS "Fecha"
    FROM Encuentros, Partidos
    WHERE Encuentros.partido = Partidos.partidoFecha
    ORDER BY Encuentros.partido;
