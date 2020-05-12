/*-------------------PC_PERSONASNATURALES-------------------*/
CREATE OR REPLACE PACKAGE BODY PC_PERSONASNATURALES IS 
    PROCEDURE AD_PersonaNatural (xPrimerNombre IN VARCHAR, xPrimerApellido IN VARCHAR, xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR, xNacionalidad IN VARCHAR, xFechaNacimiento IN DATE, xRh IN CHAR, xSangre IN VARCHAR) IS
    BEGIN
        INSERT INTO personasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
        VALUES (xPrimerNombre, xPrimerApellido, xCedula, xCorreo, xEps, xNacionalidad, xFechaNacimiento, xRh, xSangre);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20016, 'No se puede insertar la PersonaNatural.');
    END;
    
    PROCEDURE AD_Jugador (xCedula IN NUMBER, xDorsal IN NUMBER, xPosicion IN VARCHAR, xSalario IN NUMBER)IS
    BEGIN
        INSERT INTO Jugadores(cedula, dorsal, posicion, salario)
        VALUES (xCedula, xDorsal, xPosicion, xSalario);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20017, 'No se puede insertar el Jugador.');
    END;
    
    PROCEDURE AD_Arbitro (xCedula IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE)IS
    BEGIN
        INSERT INTO Arbitros(cedula, fechaInicio, fechaFinal)
        VALUES (xCedula, xFechaInicio, xFechaFinal);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20018, 'No se puede insertar el Arbitro.');
    END;
    
    PROCEDURE MO_PersonaNatural (xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR)IS
    BEGIN
        UPDATE PersonasNaturales SET correo = xCorreo WHERE cedula = xcedula;
        COMMIT;
        UPDATE PersonasNaturales SET eps = xEps WHERE cedula = xcedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20019, 'No se puede actualizar la PersonaNatural.');
    END;
    
    PROCEDURE MO_Arbitro (xCedula IN NUMBER, xFechaFinal IN DATE, xPuntuacionArbitraje IN NUMBER)IS
    BEGIN
        UPDATE Arbitros SET FechaFinal = xFechaFinal WHERE cedula = xcedula;
        COMMIT;
        UPDATE Arbitros SET puntuacionArbitraje = xPuntuacionArbitraje WHERE cedula = xcedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20019, 'No se puede actualizar el Arbitro.');
    END;
    
    PROCEDURE EL_Jugador (xCedula IN NUMBER)IS
    BEGIN
        DELETE FROM  Jugadores WHERE cedula = xCedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20020, 'No se puede eliminar el Jugador.');
    END;
    
    PROCEDURE EL_Arbitro(xCedula IN NUMBER)IS
    BEGIN
        DELETE FROM  Arbitros WHERE cedula = xCedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20020, 'No se puede eliminar el Arbitro.');
    END;
    
    FUNCTION CO_Arbitro (xPuntaje IN NUMBER)   RETURN SYS_REFCURSOR IS CO_AR SYS_REFCURSOR;
	BEGIN
	OPEN CO_AR  FOR
		SELECT personasnaturales.primernombre AS Nombre, personasnaturales.primerapellido AS Apellido, arbitros.puntuacionarbitraje AS Valoracion, arbitros.posicion
        FROM Arbitros, PersonasNaturales
        WHERE puntuacionArbitraje > xPuntaje AND arbitros.cedula = personasnaturales.cedula
        ORDER BY puntuacionArbitraje DESC;
	RETURN CO_AR;
	END;
    
    FUNCTION CO_Jugador_Pases  RETURN SYS_REFCURSOR IS CO_JU_P SYS_REFCURSOR;
	BEGIN
	OPEN CO_JU_P  FOR
		SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, SUM(Pases.efectividadAcierto)/COUNT(Pases.jugador) AS "%Acierto"
        FROM PersonasNaturales, Jugadores, Pases
        WHERE PersonasNaturales.cedula = Jugadores.cedula AND Jugadores.cedula = Pases.jugador AND Pases.efectividadAcierto >= 50 
        GROUP BY PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, PersonasNaturales.cedula
        ORDER BY SUM(Pases.efectividadAcierto)/COUNT(Pases.jugador) DESC;
	RETURN CO_JU_P;
	END;
    
    FUNCTION CO_Jugador_Amonestados  RETURN SYS_REFCURSOR IS CO_JU_A SYS_REFCURSOR;
	BEGIN
	OPEN CO_JU_A  FOR
		SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, COUNT(Amonestaciones.jugador) AS "Total Tarjetas"
        FROM PersonasNaturales, Jugadores, Amonestaciones
        WHERE PersonasNaturales.cedula = Jugadores.cedula AND Jugadores.cedula = Amonestaciones.jugador AND (Amonestaciones.Tarjeta = 'A' OR Amonestaciones.Tarjeta = 'R')
        GROUP BY PersonasNaturales.cedula, PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido
        ORDER BY COUNT(Amonestaciones.jugador) DESC;
	RETURN CO_JU_A;
	END;
    
END PC_PERSONASNATURALES;
/
/*-------------------PC_PLANTILLA-------------------*/
CREATE OR REPLACE PACKAGE BODY PC_PLANTILLA IS 
    PROCEDURE AD_Convocado (xPlantillaEquipo IN VARCHAR, xPlantillaPartido IN DATE, xJugador IN NUMBER, xTitular IN NUMBER, xPosicion IN VARCHAR)IS
    BEGIN
        INSERT INTO Convocados(plantillaEquipo, plantillaPartido, jugador, titular, posicion)
        VALUES (xPlantillaEquipo, xPlantillaPartido, xJugador, xTitular, xPosicion);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20021, 'No se puede insertar el Convocado.');
    END;
    
    PROCEDURE AD_Plantilla (xFormacion IN VARCHAR, xEquipo IN VARCHAR, xPartido IN DATE)IS
    BEGIN
        INSERT INTO Plantillas(formacion, equipo, partido)
        VALUES (xFormacion, xEquipo, xPartido);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20022, 'No se puede insertar la plantilla.');
    END;
    
    PROCEDURE MO_Plantilla (xPartido IN DATE, xEquipo IN VARCHAR, xFormacion IN VARCHAR)IS
    BEGIN
        UPDATE Plantillas SET formacion = xFormacion WHERE partido = xPartido AND equipo = xEquipo;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20023, 'No se puede actualizar la plantilla.');
    END;
    
END PC_PLANTILLA;
/
/*-------------------PC_EQUIPO-------------------*/
CREATE OR REPLACE PACKAGE BODY PC_EQUIPO IS 
    PROCEDURE AD_Equipo (xNombre IN VARCHAR, xPresupuesto IN NUMBER, xFechaFundacion IN DATE, xCiudad IN VARCHAR, xEstadio IN VARCHAR)IS
    BEGIN
        INSERT INTO Equipos(nombre, presupuesto, fechaFundacion, ciudad, estadio)
        VALUES (xNombre, xPresupuesto, xFechaFundacion, xCiudad, xEstadio);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20024, 'No se puede insertar el Equipo.');
    END;
    
    PROCEDURE MO_Equipo (xNombre IN VARCHAR, xPresupuesto IN NUMBER, xApodo IN VARCHAR, xEstadio IN VARCHAR)IS
    BEGIN
        UPDATE Equipos SET presupuesto = xPresupuesto WHERE nombre = xNombre;
        COMMIT;
        UPDATE Equipos SET apodo = xApodo WHERE nombre = xNombre;
        COMMIT;
        UPDATE Equipos SET estadio = xEstadio WHERE nombre = xNombre;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20025, 'No se puede actualizar el Equipo.');
    END;
    
    PROCEDURE EL_Equipo (xNombre IN VARCHAR)IS
    BEGIN
        DELETE FROM  Equipos WHERE nombre = xNombre;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20026, 'No se puede eliminar el Equipo.');
    END;
    
END PC_EQUIPO;
/
/*-------------------PC_ESTADIO-------------------*/
CREATE OR REPLACE PACKAGE BODY PC_ESTADIO IS 
    PROCEDURE AD_Estadio (xCapacidad IN NUMBER, xUbicacion IN VARCHAR, xNombre IN VARCHAR)IS
    BEGIN
        INSERT INTO Estadios(capacidad, ubicacion, nombre)
        VALUES (xCapacidad, xUbicacion, xNombre);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20027, 'No se puede insertar el Estadio.');
    END;
    
    PROCEDURE MO_Estadio (xNombre IN VARCHAR, xCapacidad IN NUMBER)IS
    BEGIN
        UPDATE Estadios SET capacidad = xCapacidad WHERE nombre = xNombre;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20028, 'No se puede actualizar el Estadio.');
    END;
    
    PROCEDURE EL_Estadio (xNombre IN VARCHAR)IS
    BEGIN
        DELETE FROM  Estadios WHERE nombre = xNombre;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20029, 'No se puede eliminar el Estadio.');
    END;
    
END PC_ESTADIO;
/
/*-------------------PC_PARTIDO-------------------*/
CREATE OR REPLACE PACKAGE BODY PC_PARTIDO IS 
    PROCEDURE AD_Partido (xPartidoFecha IN DATE, xMarcadorFinal IN VARCHAR, xEstadio IN VARCHAR)IS
    BEGIN
        INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
        VALUES (xPartidoFecha, xMarcadorFinal, xEstadio);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20030, 'No se puede insertar el partido.');
    END;
    
    PROCEDURE MO_Partido (xPartidoFecha IN DATE, xMarcadorFinal IN VARCHAR)IS
    BEGIN
        UPDATE Partidos SET marcadorFinal = xMarcadorFinal WHERE partidoFecha = xPartidoFecha;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20031, 'No se puede actualizar el partido.');
    END;
    
    PROCEDURE EL_Partido (xPartidoFecha IN DATE)IS
    BEGIN
        DELETE FROM  Partidos WHERE partidoFecha = xPartidoFecha;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20032, 'No se puede eliminar el partido.');
    END;
    
    FUNCTION CO_Partidos  (xEquipo IN VARCHAR) RETURN SYS_REFCURSOR IS CO_PA SYS_REFCURSOR;
	BEGIN
	OPEN CO_PA  FOR
		SELECT Equipo1, Equipo2, partidos.partidofecha AS "Fecha", partidos.estadio AS "Estadio"
        FROM Partidos, Encuentros 
        WHERE Partidos.partidoFecha=encuentros.partido and MARCADORFINAL is null and (EQUIPO1=xEquipo or EQUIPO2=xEquipo)
        ORDER BY partidos.partidofecha;
	RETURN CO_PA;
	END;
    
END PC_PARTIDO;
/
/*-------------------PC_EVENTO-------------------*/
CREATE OR REPLACE PACKAGE BODY PC_EVENTO IS 
    PROCEDURE AD_Evento (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        INSERT INTO Eventos(tiempo, jugador, partido)
        VALUES (xTiempo, xJugador, xPartido);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20033, 'No se puede insertar el Evento.');
    END;
    
    PROCEDURE AD_Disparo (xAcertadoGol IN NUMBER, xDistancia IN NUMBER, xVelocidad IN NUMBER, xPartido IN DATE, xTiempo IN NUMBER, xJugador IN NUMBER)IS
    BEGIN
        INSERT INTO Disparos(acertadoGol, distancia, velocidad, partido, tiempo, jugador)
        VALUES (xAcertadoGol, xDistancia, xVelocidad, xPartido, xTiempo, xJugador);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20034, 'No se puede insertar el Disparo.');
    END;
    
    PROCEDURE AD_Amonestacion (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE, xTarjeta IN CHAR, xComentarios IN VARCHAR, xArbitro IN NUMBER)IS
    BEGIN
        INSERT INTO Amonestaciones(partido, tiempo, jugador, tarjeta, comentarios, arbitro)
        VALUES (xPartido, xTiempo, xJugador, xTarjeta, xComentarios, xArbitro);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20035, 'No se puede insertar la Amonestacion.');
    END;
    
    PROCEDURE AD_Pase (xTotalPartido IN NUMBER, xEfectividadAcierto IN NUMBER, xGol IN NUMBER, xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        INSERT INTO Pases(totalPartido, efectividadAcierto, gol, partido, tiempo, jugador)
        VALUES (xTotalPartido, xEfectividadAcierto, xGol, xPartido, xTiempo, xJugador);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20036, 'No se puede insertar el Pase.');
    END;
    
    PROCEDURE AD_Atajada (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE, xPorteriaEnCero IN NUMBER, xParadas IN NUMBER)IS
    BEGIN
        INSERT INTO Atajadas(partido, tiempo, jugador, porteriaEnCero, paradas)
        VALUES (xPartido, xTiempo, xJugador, xPorteriaEnCero, xParadas);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20037, 'No se puede insertar la atajada.');
    END;
    
    PROCEDURE MO_Disparo (xAcertadoGol IN NUMBER, xDistancia IN NUMBER, xVelocidad IN NUMBER, xPartido IN DATE, xTiempo IN NUMBER, xJugador IN NUMBER)IS
    BEGIN
        UPDATE Disparos SET Tiempo = xTiempo WHERE tiempo = xTiempo AND jugador = xJugador;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20038, 'No se puede actualizar el disparo.');
    END;
    
    PROCEDURE MO_Amonestacion (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE, xTarjeta IN CHAR, xComentarios IN VARCHAR, xArbitro IN NUMBER)IS
    BEGIN
        UPDATE Amonestaciones SET Tiempo = xTiempo WHERE tiempo = xTiempo AND jugador = xJugador;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20039, 'No se puede actualizar la amonestacion.');
    END;
    
    PROCEDURE MO_Pase (xTotalPartido IN NUMBER, xEfectividadAcierto IN NUMBER, xGol IN NUMBER, xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        UPDATE Pases SET Tiempo = xTiempo WHERE tiempo = xTiempo AND jugador = xJugador;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20040, 'No se puede actualizar el pase.');
    END;
    
    PROCEDURE MO_Atajada (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE, xPorteriaEnCero IN NUMBER, xParadas IN NUMBER)IS
    BEGIN
        UPDATE Atajadas SET Tiempo = xTiempo WHERE tiempo = xTiempo AND jugador = xJugador;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20040, 'No se puede actualizar la atajada.');
    END;
   
   PROCEDURE EL_Evento (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        DELETE FROM Eventos WHERE tiempo = xTiempo AND jugador = xJugador AND partido = xPartido;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20041, 'No se puede eliminar el evento.');
    END;
    
    PROCEDURE EL_Disparo (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        DELETE FROM Disparos WHERE tiempo = xTiempo AND jugador = xJugador AND partido = xPartido;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20042, 'No se puede eliminar el Disparo.');
    END;
    
    PROCEDURE EL_Amonestacion (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        DELETE FROM Amonestaciones WHERE tiempo = xTiempo AND jugador = xJugador AND partido = xPartido;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20043, 'No se puede eliminar la Amonestacion.');
    END;
    
    PROCEDURE EL_Pase (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        DELETE FROM Pases WHERE tiempo = xTiempo AND jugador = xJugador AND partido = xPartido;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20044, 'No se puede eliminar el pase.');
    END;
    
    PROCEDURE EL_Atajada (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        DELETE FROM Atajadas WHERE tiempo = xTiempo AND jugador = xJugador AND partido = xPartido;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20042, 'No se puede eliminar la Atajada.');
    END;
    
	FUNCTION CO_FairPlay  RETURN SYS_REFCURSOR IS CO_FA SYS_REFCURSOR;
	BEGIN
	OPEN CO_FA  FOR
		SELECT Equipos.Nombre, count(Amonestaciones.jugador) AS "Total Amonestaciones"
		FROM Equipos, JugadoEn, Jugadores, Amonestaciones
		WHERE Equipos.nombre = JugadoEn.equipo AND Jugadores.cedula = JugadoEn.jugador  AND Jugadores.cedula = Amonestaciones.jugador
		GROUP BY Equipos.Nombre
		ORDER BY count(Amonestaciones.jugador) DESC;
	RETURN CO_FA;
	END;
	
	FUNCTION CO_MaxGoleadores  RETURN SYS_REFCURSOR IS CO_MG SYS_REFCURSOR;
	BEGIN
	OPEN CO_MG  FOR
		SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, count(Disparos.jugador) AS "TotalGoles"
		FROM PersonasNaturales, Equipos, Jugadores, JugadoEn, Disparos
		WHERE Equipos.nombre = JugadoEn.equipo AND Jugadores.cedula = JugadoEn.jugador AND Jugadores.cedula = Disparos.jugador 
			  AND PersonasNaturales.cedula = Jugadores.cedula AND Disparos.acertadoGol = 1
		GROUP BY PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, PersonasNaturales.cedula
		ORDER BY count(Disparos.jugador) DESC;
	RETURN CO_MG;
	END;
	
	FUNCTION CO_MaxAsistentes  RETURN SYS_REFCURSOR IS CO_MA SYS_REFCURSOR;
	BEGIN
	OPEN CO_MA  FOR
		SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, count(Pases.jugador) AS "Asistencias"
		FROM PersonasNaturales, Equipos, Jugadores, JugadoEn, Pases
		WHERE Equipos.nombre = JugadoEn.equipo AND Jugadores.cedula = JugadoEn.jugador AND Jugadores.cedula = Pases.jugador 
			  AND PersonasNaturales.cedula = Jugadores.cedula AND Pases.gol = 1
		GROUP BY PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, PersonasNaturales.cedula
		ORDER BY count(Pases.jugador) DESC;
	RETURN CO_MA;
	END;
	
	FUNCTION CO_MaxAtajador  RETURN SYS_REFCURSOR IS CO_MAT SYS_REFCURSOR;
	BEGIN
	OPEN CO_MAT  FOR
		SELECT PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, count(Atajadas.porteriaEnCero) AS "Atajadas"
		FROM PersonasNaturales, Equipos, Jugadores, JugadoEn, Atajadas
		WHERE Equipos.nombre = JugadoEn.equipo AND Jugadores.cedula = JugadoEn.jugador AND Jugadores.cedula = Atajadas.jugador 
			  AND PersonasNaturales.cedula = Jugadores.cedula
		GROUP BY PersonasNaturales.PrimerNombre, PersonasNaturales.PrimerApellido, PersonasNaturales.cedula
		ORDER BY count(Atajadas.porteriaEnCero) DESC;
	RETURN CO_MAT;
	END;
END PC_EVENTO;