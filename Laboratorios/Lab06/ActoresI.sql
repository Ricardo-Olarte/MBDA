/*-------------------PA_ENTRENADOR-------------------*/
CREATE OR REPLACE PACKAGE BODY  PA_ENTRENADOR IS 
    PROCEDURE AD_Evaluaciones (xPuntaje IN NUMBER, xComentarios IN VARCHAR, xRECOMENDACIONES IN XMLTYPE, xEntrenadorTID IN VARCHAR, xEntrenadorNID IN VARCHAR, xActividad IN NUMBER)IS
    BEGIN
        PC_EVALUACION.AD_Evaluaciones(xPuntaje, xComentarios, xRECOMENDACIONES, xEntrenadorTID, xEntrenadorNID, xActividad);
    END;
    
    PROCEDURE AD_Similitudes (xEvaluacion1TID IN VARCHAR, xEvaluacion1NID IN VARCHAR, xEvaluacion1Actividad IN NUMBER, xEvaluacion2TID IN VARCHAR, xEvaluacion2NID IN VARCHAR, xEvaluacionActividad IN NUMBER, xPorcentaje IN NUMBER)IS
    BEGIN
        PC_EVALUACION.AD_Similitudes(xEvaluacion1TID, xEvaluacion1NID, xEvaluacion1Actividad, xEvaluacion2TID, xEvaluacion2NID, xEvaluacionActividad, xPorcentaje);
    END;
    
    PROCEDURE MO_Evaluaciones (xNumero IN NUMBER, xPuntaje IN NUMBER, xComentarios IN VARCHAR)IS
    BEGIN
        PC_EVALUACION.MO_Evaluaciones(xNumero, xPuntaje, xComentarios);
    END;
    
    PROCEDURE EL_Evaluaciones (xNumero IN NUMBER)IS
    BEGIN
        PC_EVALUACION.EL_Evaluaciones(xNumero);
    END;
    
    
    PROCEDURE AD_Actividades (xFechaInicio IN DATE,xHoraInicio IN NUMBER,xTiempoTotal IN NUMBER,xPulsacionesProm IN NUMBER)IS
    BEGIN
        PC_ACTIVIDAD.AD_Actividades(xFechaInicio, xHoraInicio, xTiempoTotal, xPulsacionesProm);
    END;
    
    PROCEDURE AD_Fotos (xActividad IN NUMBER,xFoto IN VARCHAR)IS
    BEGIN
        PC_ACTIVIDAD.AD_Fotos(xActividad, xFoto);
    END;
    
    PROCEDURE AD_Registros (xFecha IN DATE, xHora IN NUMBER,xSensor IN VARCHAR,xValor IN NUMBER,xActividad IN NUMBER)IS
    BEGIN
        PC_ACTIVIDAD.AD_Registros(xFecha, xHora, xSensor, xValor, xActividad);
    END;
    
    PROCEDURE AD_Planeadas (xNumero IN NUMBER,xSesionDia IN NUMBER,xSesionOrden IN NUMBER)IS
    BEGIN
        PC_ACTIVIDAD.AD_Planeadas(xNumero, xSesionDia, xSesionOrden);
    END;
    
    PROCEDURE AD_Libres (xNumero IN NUMBER, xAtletaTID IN VARCHAR, xAtletaNID IN VARCHAR)IS 
    BEGIN
		PC_ACTIVIDAD.AD_Libres(xNumero, xAtletaTID, xAtletaNID);
    END;
    
    PROCEDURE MO_Actividades (xNumero IN NUMBER, xHoraInicio IN NUMBER, xTiempoTotal IN NUMBER,xPulsacionesProm IN NUMBER)IS 
    BEGIN
		PC_ACTIVIDAD.MO_Actividades(xNumero, xHoraInicio, xTiempoTotal, xPulsacionesProm);
    END;
    
    PROCEDURE EL_Actividades (xNumero IN NUMBER)IS 
    BEGIN
        PC_ACTIVIDAD.EL_Actividades(xNumero);
    END;
    
    FUNCTION CO_Registros (xActividad IN NUMBER, xSensor IN VARCHAR) RETURN SYS_REFCURSOR IS CO_RE SYS_REFCURSOR;
    BEGIN
        CO_RE:= PC_ACTIVIDAD.CO_Registros(xActividad, xSensor);  
        RETURN CO_RE;
    END;
  
    FUNCTION CO_Sesiones RETURN SYS_REFCURSOR IS CO_SE SYS_REFCURSOR;
    BEGIN
	OPEN CO_SE  FOR
		SELECT dia, duracion, descripcion, atletatid, atletanid
        FROM Sesiones
        ORDER BY dia;
	RETURN CO_SE;
	END;
    
END PA_ENTRENADOR;
/
/*-------------------PA_ATLETA-------------------*/
CREATE OR REPLACE PACKAGE BODY  PA_ATLETA IS 
    FUNCTION CO_Eval_Malas_ImpRelev RETURN SYS_REFCURSOR IS  CO_EV_M SYS_REFCURSOR;
    BEGIN 
        CO_EV_M:= PC_EVALUACION.CO_Eval_Malas_ImpRelev;
        RETURN CO_EV_M;
    END;

    FUNCTION CO_Eval_Mejorar RETURN SYS_REFCURSOR IS CO_EV_ME SYS_REFCURSOR;
    BEGIN
        CO_EV_ME:= PC_EVALUACION.CO_Eval_Mejorar;
        RETURN CO_EV_ME;
    END;

    FUNCTION CO_Eval_Puntaje_Entren RETURN SYS_REFCURSOR IS CO_EV_P SYS_REFCURSOR;
    BEGIN
        CO_EV_P:= PC_EVALUACION.CO_Eval_Puntaje_Entren;  
        RETURN CO_EV_P;
    END;
  
    FUNCTION CO_Eval_Ejerci_Recome RETURN SYS_REFCURSOR IS CO_EV_E SYS_REFCURSOR;
    BEGIN
        CO_EV_E:= PC_EVALUACION.CO_Eval_Ejerci_Recome;  
        RETURN CO_EV_E;
    END;
  
END PA_ATLETA;