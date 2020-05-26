CREATE VIEW MaxTraspasosSEquipo AS
    SELECT primerNombre, primerApellido, Traspasos.fecha, Simples.valor, Equipos.nombre
    FROM Traspasos, Simples, Jugadores, Equipos, PersonasNaturales
    WHERE Traspasos.numero = Simples.Numero AND Jugadores.cedula = Traspasos.jugador
          AND Traspasos.equipo = Equipos.nombre AND Jugadores.cedula = PersonasNaturales.cedula
    ORDER BY Simples.Valor Desc;

CREATE VIEW MaxTecnicosCosto AS
    SELECT primerNombre, primerApellido, sueldo, contratos.fechafinal
    FROM PersonasNaturales, DirectoresTecnicos, Contratos
    WHERE PersonasNaturales.cedula = DirectoresTecnicos.cedula AND DirectoresTecnicos.cedula = Contratos.directorTecnico
    ORDER BY DirectoresTecnicos.sueldo Desc;
