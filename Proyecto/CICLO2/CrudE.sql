CREATE OR REPLACE PACKAGE PC_PERSONASNATURALES IS
    --CICLO1
    PROCEDURE AD_PersonaNatural (xPrimerNombre IN VARCHAR, xPrimerApellido IN VARCHAR, xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR, xNacionalidad IN VARCHAR, xFechaNacimiento IN DATE, xRh IN CHAR, xSangre IN VARCHAR);
	PROCEDURE MO_PersonaNatural (xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR);
	PROCEDURE EL_PersonaNatural (xCedula IN NUMBER);
    PROCEDURE AD_Jugador (xCedula IN NUMBER, xDorsal IN NUMBER, xPosicion IN VARCHAR, xSalario IN NUMBER);
    PROCEDURE MO_Jugador (xCedula IN NUMBER, xDorsal IN NUMBER, xPosicion IN VARCHAR, xSalario IN NUMBER);
	PROCEDURE EL_Jugador (xCedula IN NUMBER);
    PROCEDURE AD_Arbitro (xCedula IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE);
	PROCEDURE MO_Arbitro (xCedula IN NUMBER, xFechaFinal IN DATE, xPuntuacionArbitraje IN NUMBER);
    PROCEDURE EL_Arbitro(xCedula IN NUMBER);
    FUNCTION CO_PersonaNatural RETURN SYS_REFCURSOR;
    FUNCTION CO_Jugador RETURN SYS_REFCURSOR;
    FUNCTION CO_Arbitro_T RETURN SYS_REFCURSOR;
    FUNCTION CO_Arbitro (xPuntaje IN NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION CO_Jugador_Pases  RETURN SYS_REFCURSOR;
    FUNCTION CO_Jugador_Amonestados  RETURN SYS_REFCURSOR;
    --CICLO2
    PROCEDURE AD_Fisioterapeuta (xCedula IN NUMBER, xDisciplina IN VARCHAR, xSalario IN NUMBER, xEquipo IN VARCHAR);
    PROCEDURE MO_Fisioterapeuta (xCedula IN NUMBER, xDisciplina IN VARCHAR, xSalario IN NUMBER, xEquipo IN VARCHAR);
	PROCEDURE EL_Fisioterapeuta (xCedula IN NUMBER);
    PROCEDURE AD_Terapia (xJugador IN NUMBER, xFisioterapeuta IN NUMBER, xFecha IN DATE, xDuracion IN NUMBER);
    PROCEDURE MO_Terapia (xJugador IN NUMBER, xFisioterapeuta IN NUMBER, xFecha IN DATE, xDuracion IN NUMBER);
	PROCEDURE EL_Terapia (xJugador IN NUMBER, xFisioterapeuta IN NUMBER, xFecha IN DATE);
    PROCEDURE AD_DirectorTecnico (xCedula IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE, xSueldo IN NUMBER, xEquipo IN VARCHAR);
    PROCEDURE MO_DirectorTecnico (xCedula IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE, xSueldo IN NUMBER, xEquipo IN VARCHAR);
	PROCEDURE EL_DirectorTecnico (xCedula IN NUMBER);
    PROCEDURE AD_Contratos (xPresidente IN NUMBER, xDirectorTecnico IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE);
    PROCEDURE MO_Contratos (xPresidente IN NUMBER, xDirectorTecnico IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE);
	PROCEDURE EL_Contratos (xPresidente IN NUMBER, xDirectorTecnico IN NUMBER);
    FUNCTION CO_Fisio RETURN SYS_REFCURSOR;
    FUNCTION CO_Terapia RETURN SYS_REFCURSOR;
    FUNCTION CO_DirectorT  RETURN SYS_REFCURSOR;
    FUNCTION CO_Contratos  RETURN SYS_REFCURSOR;
END PC_PERSONASNATURALES;
/
CREATE OR REPLACE PACKAGE PC_TRASPASOS IS
    PROCEDURE AD_Traspaso (xNumero IN NUMBER, xContrato IN VARCHAR, xJugador IN NUMBER, xEquipo IN VARCHAR, xFecha IN DATE);
	PROCEDURE MO_Traspaso (xNumero IN NUMBER, xContrato IN VARCHAR, xJugador IN NUMBER, xEquipo IN VARCHAR, xFecha IN DATE);
	PROCEDURE EL_Traspaso (xNumero IN NUMBER);
    PROCEDURE AD_Compuestas (xNumero IN NUMBER, xJugadorCambio IN NUMBER, xValor IN NUMBER);
	PROCEDURE MO_Compuestas (xNumero IN NUMBER, xJugadorCambio IN NUMBER, xValor IN NUMBER);
	PROCEDURE EL_Compuestas (xNumero IN NUMBER);
    PROCEDURE AD_Simples (xNumero IN NUMBER, xValor IN NUMBER);
	PROCEDURE MO_Simples (xNumero IN NUMBER, xValor IN NUMBER);
	PROCEDURE EL_Simples (xNumero IN NUMBER);
    FUNCTION CO_Traspaso RETURN SYS_REFCURSOR;
    FUNCTION CO_Compuesta  RETURN SYS_REFCURSOR;
    FUNCTION CO_Simple  RETURN SYS_REFCURSOR;
END PC_TRASPASOS;













