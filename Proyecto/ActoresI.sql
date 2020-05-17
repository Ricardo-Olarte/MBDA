/*-------------------PA_PRESIDENTE-------------------*/
CREATE OR REPLACE PACKAGE BODY PA_PRESIDENTE IS
    PROCEDURE AD_PersonaNatural (xPrimerNombre IN VARCHAR, xPrimerApellido IN VARCHAR, xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR, xNacionalidad IN VARCHAR, xFechaNacimiento IN DATE, xRh IN CHAR, xSangre IN VARCHAR)IS
    BEGIN
        PC_PERSONASNATURALES.AD_PersonaNatural(xPrimerNombre, xPrimerApellido, xCedula, xCorreo, xEps, xNacionalidad, xFechaNacimiento, xRh, xSangre);
    END;
    
    PROCEDURE MO_PersonaNatural (xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR)IS
    BEGIN
        PC_PERSONASNATURALES.MO_PersonaNatural(xCedula, xCorreo, xEps);
    END;
    
    PROCEDURE EL_PersonaNatural (xCedula IN NUMBER)IS
    BEGIN
        PC_PERSONASNATURALES.EL_PersonaNatural(xCedula);
    END;
    
    PROCEDURE AD_Jugador (xCedula IN NUMBER, xDorsal IN NUMBER, xPosicion IN VARCHAR, xSalario IN NUMBER)IS
    BEGIN
        PC_PERSONASNATURALES.AD_Jugador(xCedula, xDorsal, xPosicion, xSalario);
    END;
    
    PROCEDURE MO_Jugador (xCedula IN NUMBER, xDorsal IN NUMBER, xPosicion IN VARCHAR, xSalario IN NUMBER)IS
    BEGIN
        PC_PERSONASNATURALES.MO_Jugador(xCedula, xDorsal, xPosicion, xSalario);
    END;
    
    PROCEDURE EL_Jugador (xCedula IN NUMBER)IS
    BEGIN
        PC_PERSONASNATURALES.EL_Jugador(xCedula);
    END;
    
    FUNCTION CO_PersonaNatural  RETURN SYS_REFCURSOR IS CO_PN SYS_REFCURSOR;
    BEGIN
        CO_PN:= PC_PERSONASNATURALES.CO_PersonaNatural;  
        RETURN CO_PN;
    END;
    
    FUNCTION CO_Jugador  RETURN SYS_REFCURSOR IS CO_JU SYS_REFCURSOR;
    BEGIN
        CO_JU:= PC_PERSONASNATURALES.CO_Jugador;  
        RETURN CO_JU;
    END;
    
    PROCEDURE AD_Convocado (xPlantillaEquipo IN VARCHAR, xPlantillaPartido IN DATE, xJugador IN NUMBER, xTitular IN NUMBER, xPosicion IN VARCHAR)IS
    BEGIN
        PC_PLANTILLA.AD_Convocado(xPlantillaEquipo, xPlantillaPartido, xJugador, xTitular, xPosicion);
    END;
    
    PROCEDURE MO_Convocado (xPlantillaEquipo IN VARCHAR, xPlantillaPartido IN DATE, xJugador IN NUMBER, xTitular IN NUMBER, xPosicion IN VARCHAR)IS
    BEGIN
        PC_PLANTILLA.MO_Convocado(xPlantillaEquipo, xPlantillaPartido, xJugador, xTitular, xPosicion);
    END;
    
    PROCEDURE EL_Convocado (xPlantillaEquipo IN VARCHAR, xPlantillaPartido IN DATE, xJugador IN NUMBER)IS
    BEGIN
        PC_PLANTILLA.EL_Convocado(xPlantillaEquipo, xPlantillaPartido, xJugador);
    END;
    
    PROCEDURE AD_Plantilla (xFormacion IN VARCHAR, xEquipo IN VARCHAR, xPartido IN DATE)IS
    BEGIN
        PC_PLANTILLA.AD_Plantilla(xFormacion, xEquipo, xPartido);
    END;
    
    PROCEDURE MO_Plantilla (xPartido IN DATE, xEquipo IN VARCHAR, xFormacion IN VARCHAR)IS
    BEGIN
        PC_PLANTILLA.MO_Plantilla(xPartido, xEquipo, xFormacion);
    END;
    
    PROCEDURE EL_Plantilla (xPartido IN DATE, xEquipo IN VARCHAR)IS
    BEGIN
        PC_PLANTILLA.EL_Plantilla(xPartido, xEquipo);
    END;
    
    FUNCTION CO_Convocado  RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
    BEGIN
        CO_CO:= PC_PLANTILLA.CO_Convocado;  
        RETURN CO_CO;
    END;
    
    FUNCTION CO_Plantilla  RETURN SYS_REFCURSOR IS CO_PL SYS_REFCURSOR;
    BEGIN
        CO_PL:= PC_PLANTILLA.CO_Plantilla;  
        RETURN CO_PL;
    END;
    
    PROCEDURE AD_Equipo (xNombre IN VARCHAR, xPresupuesto IN NUMBER, xFechaFundacion IN DATE, xCiudad IN VARCHAR, xEstadio IN VARCHAR)IS
    BEGIN
        PC_EQUIPO.AD_Equipo(xNombre, xPresupuesto, xFechaFundacion, xCiudad, xEstadio);
    END;
    
    PROCEDURE MO_Equipo (xNombre IN VARCHAR, xPresupuesto IN NUMBER, xApodo IN VARCHAR, xEstadio IN VARCHAR)IS
    BEGIN
        PC_EQUIPO.MO_Equipo(xNombre, xPresupuesto, xApodo, xEstadio);
    END;
    
    PROCEDURE EL_Equipo (xNombre IN VARCHAR)IS
    BEGIN
        PC_EQUIPO.EL_Equipo(xNombre);
    END;
    
    FUNCTION CO_Equipo  RETURN SYS_REFCURSOR IS CO_EQ SYS_REFCURSOR;
    BEGIN
        CO_EQ:= PC_EQUIPO.CO_Equipo;  
        RETURN CO_EQ;
    END;
    
    PROCEDURE AD_Estadio (xCapacidad IN NUMBER, xUbicacion IN VARCHAR, xNombre IN VARCHAR)IS
    BEGIN
        PC_ESTADIO.AD_Estadio(xCapacidad, xUbicacion, xNombre);
    END;
    
    PROCEDURE MO_Estadio (xNombre IN VARCHAR, xCapacidad IN NUMBER)IS
    BEGIN
        PC_ESTADIO.MO_Estadio(xNombre, xCapacidad);
    END;
    
    PROCEDURE EL_Estadio (xNombre IN VARCHAR)IS
    BEGIN
        PC_ESTADIO.EL_Estadio(xNombre);
    END;
    
    FUNCTION CO_Estadio  RETURN SYS_REFCURSOR IS CO_ES SYS_REFCURSOR;
    BEGIN
        CO_ES:= PC_ESTADIO.CO_Estadio;  
        RETURN CO_ES;
    END;
    
END PA_PRESIDENTE;
/
/*-------------------PA_ORGANIZADOR-------------------*/
CREATE OR REPLACE PACKAGE BODY PA_ORGANIZADOR IS
    PROCEDURE AD_Partido (xPartidoFecha IN DATE, xMarcadorFinal IN VARCHAR, xEstadio IN VARCHAR)IS
    BEGIN
        PC_PARTIDO.AD_Partido(xPartidoFecha, xMarcadorFinal, xEstadio);
    END;
    
    PROCEDURE MO_Partido (xPartidoFecha IN DATE, xMarcadorFinal IN VARCHAR)IS
    BEGIN
        PC_PARTIDO.MO_Partido(xPartidoFecha, xMarcadorFinal);
    END;
    
    FUNCTION CO_PartidosT  RETURN SYS_REFCURSOR IS CO_PT SYS_REFCURSOR;
    BEGIN
        CO_PT:= PC_PARTIDO.CO_PartidosT;  
        RETURN CO_PT;
    END;
    
    PROCEDURE AD_PersonaNatural (xPrimerNombre IN VARCHAR, xPrimerApellido IN VARCHAR, xCedula IN NUMBER, xCorreo IN VARCHAR, xEps IN VARCHAR, xNacionalidad IN VARCHAR, xFechaNacimiento IN DATE, xRh IN CHAR, xSangre IN VARCHAR)IS
    BEGIN
        PC_PERSONASNATURALES.AD_PersonaNatural(xPrimerNombre, xPrimerApellido, xCedula, xCorreo, xEps, xNacionalidad, xFechaNacimiento, xRh, xSangre);
    END;
    
    PROCEDURE AD_Arbitro (xCedula IN NUMBER, xFechaInicio IN DATE, xFechaFinal IN DATE)IS
    BEGIN
        PC_PERSONASNATURALES.AD_Arbitro(xCedula, xFechaInicio, xFechaFinal);
    END;
    
    FUNCTION CO_Arbitro_T  RETURN SYS_REFCURSOR IS CO_ART SYS_REFCURSOR;
    BEGIN
        CO_ART:= PC_PERSONASNATURALES.CO_Arbitro_T;  
        RETURN CO_ART;
    END;
    
    FUNCTION CO_Arbitro (xPuntaje IN NUMBER) RETURN SYS_REFCURSOR IS CO_AR SYS_REFCURSOR;
    BEGIN
        CO_AR:= PC_PERSONASNATURALES.CO_Arbitro(xPuntaje);  
        RETURN CO_AR;
    END;
    
    PROCEDURE AD_Evento (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        PC_EVENTO.AD_Evento(xTiempo, xJugador, xPartido);
    END;
    
    PROCEDURE AD_Disparo (xAcertadoGol IN NUMBER, xDistancia IN NUMBER, xVelocidad IN NUMBER, xPartido IN DATE, xTiempo IN NUMBER, xJugador IN NUMBER)IS
    BEGIN
        PC_EVENTO.AD_Disparo(xAcertadoGol, xDistancia, xVelocidad, xPartido, xTiempo, xJugador);
    END;
    
    PROCEDURE AD_Amonestacion (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE, xTarjeta IN CHAR, xComentarios IN VARCHAR, xArbitro IN NUMBER)IS
    BEGIN
        PC_EVENTO.AD_Amonestacion(xTiempo, xJugador, xPartido, xTarjeta, xComentarios, xArbitro);
    END;
    
    PROCEDURE AD_Pase (xTotalPartido IN NUMBER, xEfectividadAcierto IN NUMBER, xGol IN NUMBER, xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE)IS
    BEGIN
        PC_EVENTO.AD_Pase(xTotalPartido, xEfectividadAcierto, xGol, xTiempo, xJugador, xPartido);
    END;
    
    PROCEDURE AD_Atajada (xTiempo IN NUMBER, xJugador IN NUMBER, xPartido IN DATE, xPorteriaEnCero IN NUMBER, xParadas IN NUMBER)IS
    BEGIN
        PC_EVENTO.AD_Atajada(xTiempo, xJugador, xPartido, xPorteriaEnCero, xParadas);
    END;
    
    FUNCTION CO_Evento  RETURN SYS_REFCURSOR IS CO_EV SYS_REFCURSOR;
    BEGIN
        CO_EV:= PC_EVENTO.CO_Evento;  
        RETURN CO_EV;
    END;
    
    FUNCTION CO_Disparo  RETURN SYS_REFCURSOR IS CO_DI SYS_REFCURSOR;
    BEGIN
        CO_DI:= PC_EVENTO.CO_Disparo;  
        RETURN CO_DI;
    END;
    
    FUNCTION CO_Amonestacion  RETURN SYS_REFCURSOR IS CO_AM SYS_REFCURSOR;
    BEGIN
        CO_AM:= PC_EVENTO.CO_Amonestacion;  
        RETURN CO_AM;
    END;
    
    FUNCTION CO_Pase  RETURN SYS_REFCURSOR IS CO_PA SYS_REFCURSOR;
    BEGIN
        CO_PA:= PC_EVENTO.CO_Pase;  
        RETURN CO_PA;
    END;
    
    FUNCTION CO_Atajada  RETURN SYS_REFCURSOR IS CO_AT SYS_REFCURSOR;
    BEGIN
        CO_AT:= PC_EVENTO.CO_Atajada;  
        RETURN CO_AT;
    END;
    
END PA_ORGANIZADOR;
/
/*-------------------PA_TECNICO-------------------*/
CREATE OR REPLACE PACKAGE BODY PA_TECNICO IS
    FUNCTION CO_Jugador_Pases  RETURN SYS_REFCURSOR IS CO_JP SYS_REFCURSOR;
    BEGIN
        CO_JP:= PC_PERSONASNATURALES.CO_Jugador_Pases;  
        RETURN CO_JP;
    END;
    
    FUNCTION CO_Jugador_Amonestados  RETURN SYS_REFCURSOR IS CO_JA SYS_REFCURSOR;
    BEGIN
        CO_JA:= PC_PERSONASNATURALES.CO_Jugador_Amonestados;  
        RETURN CO_JA;
    END;
    
    FUNCTION CO_Partidos (xEquipo IN VARCHAR) RETURN SYS_REFCURSOR IS CO_P SYS_REFCURSOR;
    BEGIN
        CO_P:= PC_PARTIDO.CO_Partidos(xEquipo);  
        RETURN CO_P;
    END;
END PA_TECNICO;
/
/*-------------------PA_PDIMAYOR-------------------*/
CREATE OR REPLACE PACKAGE BODY PA_PDIMAYOR IS
    FUNCTION CO_FairPlay  RETURN SYS_REFCURSOR IS CO_FA SYS_REFCURSOR;
    BEGIN
        CO_FA:= PC_EVENTO.CO_FairPlay;  
        RETURN CO_FA;
    END;
    
    FUNCTION CO_MaxGoleadores  RETURN SYS_REFCURSOR IS CO_MG SYS_REFCURSOR;
    BEGIN
        CO_MG:= PC_EVENTO.CO_MaxGoleadores;  
        RETURN CO_MG;
    END;
    
    FUNCTION CO_MaxAsistentes  RETURN SYS_REFCURSOR IS CO_MA SYS_REFCURSOR;
    BEGIN
        CO_MA:= PC_EVENTO.CO_MaxAsistentes;  
        RETURN CO_MA;
    END;
    
    FUNCTION CO_MaxAtajador  RETURN SYS_REFCURSOR IS CO_MAT SYS_REFCURSOR;
    BEGIN
        CO_MAT:= PC_EVENTO.CO_MaxAtajador;  
        RETURN CO_MAT;
    END;
END PA_PDIMAYOR;












