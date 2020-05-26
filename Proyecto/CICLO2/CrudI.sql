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
    
    PROCEDURE EL_PersonaNatural (xCedula IN NUMBER)IS
    BEGIN
        DELETE FROM  personasNaturales WHERE cedula = xCedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20020, 'No se puede eliminar la PersonaNatural.');
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
    
    PROCEDURE MO_Jugador (xCedula IN NUMBER, xDorsal IN NUMBER, xPosicion IN VARCHAR, xSalario IN NUMBER)IS
    BEGIN
        UPDATE Jugadores SET dorsal = xDorsal WHERE cedula = xcedula;
        COMMIT;
        UPDATE Jugadores SET posicion = xPosicion WHERE cedula = xcedula;
        COMMIT;
        UPDATE Jugadores SET salario = xSalario WHERE cedula = xcedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20019, 'No se puede actualizar el Jugador.');
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
    
    PROCEDURE EL_Arbitro(xCedula IN NUMBER)IS
    BEGIN
        DELETE FROM  Arbitros WHERE cedula = xCedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20020, 'No se puede eliminar el Arbitro.');
    END;
    
    FUNCTION CO_Arbitro_T   RETURN SYS_REFCURSOR IS CO_ART SYS_REFCURSOR;
	BEGIN
	OPEN CO_ART  FOR
		SELECT *
        FROM Arbitros, PersonasNaturales
        WHERE arbitros.cedula = personasnaturales.cedula;
	RETURN CO_ART;
	END;
    
    FUNCTION CO_PersonaNatural   RETURN SYS_REFCURSOR IS CO_PN SYS_REFCURSOR;
	BEGIN
	OPEN CO_PN  FOR
		SELECT *
        FROM PersonasNaturales;
	RETURN CO_PN;
	END;
    
    FUNCTION CO_Jugador   RETURN SYS_REFCURSOR IS CO_JU SYS_REFCURSOR;
	BEGIN
	OPEN CO_JU  FOR
		SELECT *
        FROM Jugadores, PersonasNaturales
        WHERE Jugadores.cedula = personasnaturales.cedula;
	RETURN CO_JU;
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
    ---CICLO2
    PROCEDURE AD_Fisioterapeuta (xCedula IN NUMBER, xDisciplina IN VARCHAR, xSalario IN NUMBER, xEquipo IN VARCHAR)IS
    BEGIN
        INSERT INTO Fisioterapeutas(cedula, disciplina, salario, equipo)
        VALUES(xCedula, xDisciplina, xSalario, xEquipo);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20078, 'No se puede insertar el Fisioterapeuta.');
    END;
    
    PROCEDURE MO_Fisioterapeuta (xCedula IN NUMBER, xDisciplina IN VARCHAR, xSalario IN NUMBER, xEquipo IN VARCHAR)IS
    BEGIN
        UPDATE Fisioterapeutas SET Disciplina = xDisciplina WHERE cedula = xCedula;
        COMMIT;
        UPDATE Fisioterapeutas SET Salario = xSalario WHERE cedula = xCedula;
        COMMIT;
        UPDATE Fisioterapeutas SET Equipo = xEquipo WHERE cedula = xCedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20079, 'No se puede actualizar el Fisioterapeuta.');
    END;

    PROCEDURE EL_Fisioterapeuta(xCedula IN NUMBER)IS
    BEGIN
        DELETE FROM  Fisioterapeutas WHERE cedula = xCedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20070, 'No se puede eliminar el Fisioterapeuta.');
    END;
    
    PROCEDURE AD_Terapia (xJugador IN NUMBER, xFisioterapeuta IN NUMBER, xFecha IN DATE, xDuracion IN NUMBER) IS
    BEGIN
        INSERT INTO Terapias(jugador, fisioterapeuta, fecha, duracion)
        VALUES(xJugador, xFisioterapeuta, xFecha, xDuracion);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20088, 'No se puede insertar la Terapia.');
    END;
    
    PROCEDURE MO_Terapia (xJugador IN NUMBER, xFisioterapeuta IN NUMBER, xFecha IN DATE, xDuracion IN NUMBER)IS
    BEGIN
        UPDATE Terapias SET Fecha = xFecha WHERE Jugador = xJugador AND Fisioterapeuta = xFisioterapeuta;
        COMMIT;
        UPDATE Terapias SET Duracion = xDuracion WHERE Jugador = xJugador AND Fisioterapeuta = xFisioterapeuta;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20089, 'No se puede actualizar la Terapia.');
    END;
    
    PROCEDURE EL_Terapia (xJugador IN NUMBER, xFisioterapeuta IN NUMBER, xFecha IN DATE)IS
    BEGIN
        DELETE FROM  Terapias WHERE Jugador = xJugador AND Fisioterapeuta = xFisioterapeuta AND Fecha=xFecha;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20080, 'No se puede eliminar la Terapia.');
    END;
    
    PROCEDURE AD_DirectorTecnico (xCedula IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE, xSueldo IN NUMBER, xEquipo IN VARCHAR) IS
    BEGIN
        INSERT INTO DirectoresTecnicos(cedula, fechaInicio, fechaFinal, sueldo, equipo)
        VALUES(xCedula, xFechaInicio, xFechaFinal, xSueldo, xEquipo);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20088, 'No se puede insertar el DirectorTecnico.');
    END;
    
    PROCEDURE MO_DirectorTecnico (xCedula IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE, xSueldo IN NUMBER, xEquipo IN VARCHAR)IS
    BEGIN
        UPDATE DirectoresTecnicos SET FechaInicio = xFechaInicio WHERE cedula = xCedula;
        COMMIT;
        UPDATE DirectoresTecnicos SET FechaFinal = xFechaFinal WHERE cedula = xCedula;
        COMMIT;
        UPDATE DirectoresTecnicos SET Sueldo = xSueldo WHERE cedula = xCedula;
        COMMIT;
        UPDATE DirectoresTecnicos SET Equipo = xEquipo WHERE cedula = xCedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20079, 'No se puede actualizar el DirectorTecnico.');
    END;

    PROCEDURE EL_DirectorTecnico(xCedula IN NUMBER)IS
    BEGIN
        DELETE FROM  DirectoresTecnicos WHERE cedula = xCedula;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20081, 'No se puede eliminar el DirectoresTecnicos.');
    END;
    
    PROCEDURE AD_Contratos (xPresidente IN NUMBER, xDirectorTecnico IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE) IS
    BEGIN
        INSERT INTO Contratos(presidente, directorTecnico, fechaInicio, fechaFinal)
        VALUES(xPresidente, xDirectorTecnico, xFechaInicio, xFechaFinal);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20086, 'No se puede insertar el Contrato.');
    END;
    
    PROCEDURE MO_Contratos (xPresidente IN NUMBER, xDirectorTecnico IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE)IS
    BEGIN
        UPDATE Contratos SET FechaInicio = xFechaInicio WHERE Presidente = xPresidente AND DirectorTecnico=xDirectorTecnico;
        COMMIT;
        UPDATE Contratos SET FechaFinal = xFechaFinal WHERE Presidente = xPresidente AND DirectorTecnico=xDirectorTecnico;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20079, 'No se puede actualizar el Contrato.');
    END;    
    
    PROCEDURE EL_Contratos (xPresidente IN NUMBER, xDirectorTecnico IN NUMBER)IS
    BEGIN
        DELETE FROM  Contratos WHERE Presidente = xPresidente AND DirectorTecnico=xDirectorTecnico;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20082, 'No se puede eliminar el Contrato.');
    END;
    
    FUNCTION CO_Fisio   RETURN SYS_REFCURSOR IS CO_FI SYS_REFCURSOR;
	BEGIN
	OPEN CO_FI  FOR
		SELECT *
        FROM Fisioterapeutas, PersonasNaturales
        WHERE Fisioterapeutas.cedula = personasnaturales.cedula;
	RETURN CO_FI;
	END;
    
    FUNCTION CO_Terapia   RETURN SYS_REFCURSOR IS CO_TER SYS_REFCURSOR;
	BEGIN
	OPEN CO_TER  FOR
		SELECT *
        FROM Terapias;
	RETURN CO_TER;
	END;
    
    FUNCTION CO_DirectorT   RETURN SYS_REFCURSOR IS CO_DT SYS_REFCURSOR;
	BEGIN
	OPEN CO_DT  FOR
		SELECT *
        FROM DirectoresTecnicos, PersonasNaturales
        WHERE DirectoresTecnicos.cedula = personasnaturales.cedula;
	RETURN CO_DT;
	END;

    FUNCTION CO_Contratos   RETURN SYS_REFCURSOR IS CO_CON SYS_REFCURSOR;
	BEGIN
	OPEN CO_CON  FOR
		SELECT *
        FROM Contratos;
	RETURN CO_CON;
	END;
    
END PC_PERSONASNATURALES;
/
CREATE OR REPLACE PACKAGE BODY PC_TRASPASOS IS 
    PROCEDURE AD_Traspaso (xNumero IN NUMBER, xContrato IN VARCHAR, xJugador IN NUMBER, xEquipo IN VARCHAR, xFecha IN DATE) IS
    BEGIN
        INSERT INTO Traspasos(numero, contrato, jugador, fecha, equipo)
        VALUES(xNumero, xContrato, xJugador, xFecha, xEquipo);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20083, 'No se puede insertar el Traspaso.');
    END;
    
    PROCEDURE MO_Traspaso (xNumero IN NUMBER, xContrato IN VARCHAR, xJugador IN NUMBER, xEquipo IN VARCHAR, xFecha IN DATE)IS
    BEGIN
        UPDATE Traspasos SET Contrato = xContrato WHERE Numero = xNumero;
        COMMIT;
        UPDATE Traspasos SET Jugador = xJugador WHERE Numero = xNumero;
        COMMIT;
        UPDATE Traspasos SET Fecha = xFecha WHERE Numero = xNumero;
        COMMIT;
        UPDATE Traspasos SET Equipo = xEquipo WHERE Numero = xNumero;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20079, 'No se puede actualizar el Traspaso.');
    END;
    
    PROCEDURE EL_Traspaso(xNumero IN NUMBER)IS
    BEGIN
        DELETE FROM  Traspasos WHERE Numero = xNumero;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20084, 'No se puede eliminar el Traspaso.');
    END;
    
    PROCEDURE AD_Compuestas (xNumero IN NUMBER, xJugadorCambio IN NUMBER, xValor IN NUMBER) IS
    BEGIN
        INSERT INTO Compuestas(numero, jugadorCambio, valor)
        VALUES(xNumero, xJugadorCambio, xValor);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20083, 'No se puede insertar el Traspaso Compuesto.');
    END;
    
    PROCEDURE MO_Compuestas (xNumero IN NUMBER, xJugadorCambio IN NUMBER, xValor IN NUMBER)IS
    BEGIN
        UPDATE Compuestas SET JugadorCambio = xJugadorCambio WHERE Numero = xNumero;
        COMMIT;
        UPDATE Compuestas SET Valor = xValor WHERE Numero = xNumero;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20072, 'No se puede actualizar el Traspaso Compuesto.');
    END;
    
    PROCEDURE EL_Compuestas(xNumero IN NUMBER)IS
    BEGIN
        DELETE FROM  Compuestas WHERE Numero = xNumero;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20073, 'No se puede eliminar el Traspaso Compuesto.');
    END;
    

    PROCEDURE AD_Simples (xNumero IN NUMBER, xValor IN NUMBER) IS
    BEGIN
        INSERT INTO Simples(numero, valor)
        VALUES(xNumero, xValor);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20091, 'No se puede insertar el Traspaso Simple.');
    END;
    
    PROCEDURE MO_Simples (xNumero IN NUMBER, xValor IN NUMBER)IS
    BEGIN
        UPDATE Simples SET Valor = xValor WHERE Numero = xNumero;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20092, 'No se puede actualizar el Traspaso Simple.');
    END;
    
    PROCEDURE EL_Simples(xNumero IN NUMBER)IS
    BEGIN
        DELETE FROM  Simples WHERE Numero = xNumero;
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20093, 'No se puede eliminar el Traspaso Simple.');
    END;
    
    FUNCTION CO_Traspaso   RETURN SYS_REFCURSOR IS CO_TR SYS_REFCURSOR;
	BEGIN
	OPEN CO_TR  FOR
		SELECT *
        FROM Traspasos;
	RETURN CO_TR;
	END;
    
    FUNCTION CO_Compuesta   RETURN SYS_REFCURSOR IS CO_CM SYS_REFCURSOR;
	BEGIN
	OPEN CO_CM  FOR
		SELECT *
        FROM Compuestas;
	RETURN CO_CM;
	END;

    FUNCTION CO_Simple   RETURN SYS_REFCURSOR IS CO_SM SYS_REFCURSOR;
	BEGIN
	OPEN CO_SM  FOR
		SELECT *
        FROM Simples;
	RETURN CO_SM;
	END;
END PC_TRASPASOS;