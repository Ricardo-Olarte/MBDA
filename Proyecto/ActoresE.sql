CREATE OR REPLACE PACKAGE PA_PRESIDENTE IS
    /*PersonaNat*/
    PROCEDURE AD_PersonaNatural (xPrimerNombre IN VARCHAR, xPrimerApellido IN VARCHAR, xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR, xNacionalidad IN VARCHAR, xFechaNacimiento IN DATE, xRh IN CHAR, xSangre IN VARCHAR);
	PROCEDURE MO_PersonaNatural (xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR);
	PROCEDURE EL_PersonaNatural (xCedula IN NUMBER);
    PROCEDURE AD_Jugador (xCedula IN NUMBER, xDorsal IN NUMBER, xPosicion IN VARCHAR, xSalario IN NUMBER);
    PROCEDURE MO_Jugador (xCedula IN NUMBER, xDorsal IN NUMBER, xPosicion IN VARCHAR, xSalario IN NUMBER);
	PROCEDURE EL_Jugador (xCedula IN NUMBER);
    FUNCTION CO_PersonaNatural RETURN SYS_REFCURSOR;
    FUNCTION CO_Jugador RETURN SYS_REFCURSOR;
    /*Plantilla*/
    PROCEDURE AD_Convocado (xPlantillaEquipo IN VARCHAR, xPlantillaPartido IN DATE, xJugador IN NUMBER, xTitular IN NUMBER, xPosicion IN VARCHAR);
    PROCEDURE MO_Convocado (xPlantillaEquipo IN VARCHAR, xPlantillaPartido IN DATE, xJugador IN NUMBER, xTitular IN NUMBER, xPosicion IN VARCHAR);
    PROCEDURE EL_Convocado (xPlantillaEquipo IN VARCHAR, xPlantillaPartido IN DATE, xJugador IN NUMBER);
    PROCEDURE AD_Plantilla (xFormacion IN VARCHAR, xEquipo IN VARCHAR, xPartido IN DATE);
    PROCEDURE MO_Plantilla (xPartido IN DATE, xEquipo IN VARCHAR, xFormacion IN VARCHAR);
    PROCEDURE EL_Plantilla (xPartido IN DATE, xEquipo IN VARCHAR);
    FUNCTION CO_Convocado  RETURN SYS_REFCURSOR;
    FUNCTION CO_Plantilla  RETURN SYS_REFCURSOR;
    /*Estadio*/
    PROCEDURE AD_Equipo (xNombre IN VARCHAR, xPresupuesto IN NUMBER, xFechaFundacion IN DATE, xCiudad IN VARCHAR, xEstadio IN VARCHAR);
    PROCEDURE MO_Equipo (xNombre IN VARCHAR, xPresupuesto IN NUMBER, xApodo IN VARCHAR, xEstadio IN VARCHAR);
    PROCEDURE EL_Equipo (xNombre IN VARCHAR);
    FUNCTION CO_Equipo  RETURN SYS_REFCURSOR;
    /*Estadio*/
    PROCEDURE AD_Estadio (xCapacidad IN NUMBER, xUbicacion IN VARCHAR, xNombre IN VARCHAR);
    PROCEDURE MO_Estadio (xNombre IN VARCHAR, xCapacidad IN NUMBER);
    PROCEDURE EL_Estadio (xNombre IN VARCHAR);
    FUNCTION CO_Estadio  RETURN SYS_REFCURSOR;
END PA_PRESIDENTE;
/
CREATE OR REPLACE PACKAGE PA_ORGANIZADOR IS
    /*Partidos*/
    PROCEDURE AD_Partido (xPartidoFecha IN DATE, xMarcadorFinal IN VARCHAR, xEstadio IN VARCHAR);
    PROCEDURE MO_Partido (xPartidoFecha IN DATE, xMarcadorFinal IN VARCHAR);
    FUNCTION CO_PartidosT  RETURN SYS_REFCURSOR;
    /*Arbitro*/
    PROCEDURE AD_PersonaNatural (xPrimerNombre IN VARCHAR, xPrimerApellido IN VARCHAR, xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR, xNacionalidad IN VARCHAR, xFechaNacimiento IN DATE, xRh IN CHAR, xSangre IN VARCHAR);
    PROCEDURE AD_Arbitro (xCedula IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE);
    FUNCTION CO_Arbitro_T  RETURN SYS_REFCURSOR;
    FUNCTION CO_Arbitro (xPuntaje IN NUMBER) RETURN SYS_REFCURSOR;
    /*Eventos*/
    PROCEDURE AD_Evento (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE);
    PROCEDURE AD_Disparo (xAcertadoGol IN NUMBER, xDistancia IN NUMBER, xVelocidad IN NUMBER, xPartido IN DATE, xTiempo IN NUMBER, xJugador IN NUMBER);
    PROCEDURE AD_Amonestacion (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE, xTarjeta IN CHAR, xComentarios IN VARCHAR, xArbitro IN NUMBER);
    PROCEDURE AD_Pase (xTotalPartido IN NUMBER, xEfectividadAcierto IN NUMBER, xGol IN NUMBER, xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE);
    PROCEDURE AD_Atajada (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE, xPorteriaEnCero IN NUMBER, xParadas IN NUMBER);
    FUNCTION CO_Evento  RETURN SYS_REFCURSOR;
    FUNCTION CO_Disparo  RETURN SYS_REFCURSOR;
    FUNCTION CO_Amonestacion  RETURN SYS_REFCURSOR;
    FUNCTION CO_Pase  RETURN SYS_REFCURSOR;
    FUNCTION CO_Atajada  RETURN SYS_REFCURSOR;
END PA_ORGANIZADOR;
/
CREATE OR REPLACE PACKAGE PA_TECNICO IS
    FUNCTION CO_Jugador_Pases  RETURN SYS_REFCURSOR;
    FUNCTION CO_Jugador_Amonestados  RETURN SYS_REFCURSOR;
    FUNCTION CO_Partidos  (xEquipo IN VARCHAR) RETURN SYS_REFCURSOR;
END PA_TECNICO;
/
CREATE OR REPLACE PACKAGE PA_PDIMAYOR IS
    FUNCTION CO_FairPlay  RETURN SYS_REFCURSOR;
	FUNCTION CO_MaxGoleadores  RETURN SYS_REFCURSOR;
	FUNCTION CO_MaxAsistentes  RETURN SYS_REFCURSOR;
	FUNCTION CO_MaxAtajador  RETURN SYS_REFCURSOR;
END PA_PDIMAYOR;
