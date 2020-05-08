CREATE OR REPLACE PACKAGE PA_ENTRENADOR IS
    PROCEDURE AD_Evaluaciones (xPuntaje IN NUMBER, xComentarios IN VARCHAR, xRECOMENDACIONES IN XMLTYPE, xEntrenadorTID IN VARCHAR, xEntrenadorNID IN VARCHAR, xActividad IN NUMBER);
    PROCEDURE AD_Similitudes (xEvaluacion1TID IN VARCHAR, xEvaluacion1NID IN VARCHAR, xEvaluacion1Actividad IN NUMBER, xEvaluacion2TID IN VARCHAR, xEvaluacion2NID IN VARCHAR, xEvaluacionActividad IN NUMBER, xPorcentaje IN NUMBER);
    PROCEDURE MO_Evaluaciones (xNumero IN NUMBER, xPuntaje IN NUMBER, xComentarios IN VARCHAR);
    PROCEDURE EL_Evaluaciones (xNumero IN NUMBER);
    PROCEDURE AD_Actividades (xFechaInicio IN DATE,xHoraInicio IN NUMBER,xTiempoTotal IN NUMBER,xPulsacionesProm IN NUMBER);
    PROCEDURE AD_Fotos (xActividad IN NUMBER,xFoto IN VARCHAR);
    PROCEDURE AD_Registros (xFecha IN DATE, xHora IN NUMBER,xSensor IN VARCHAR,xValor IN NUMBER,xActividad IN NUMBER);
    PROCEDURE AD_Planeadas (xNumero IN NUMBER,xSesionDia IN NUMBER,xSesionOrden IN NUMBER);
    PROCEDURE AD_Libres (xNumero IN NUMBER, xAtletaTID IN VARCHAR, xAtletaNID IN VARCHAR);
    PROCEDURE MO_Actividades (xNumero IN NUMBER, xHoraInicio IN NUMBER, xTiempoTotal IN NUMBER,xPulsacionesProm IN NUMBER);
    PROCEDURE EL_Actividades (xNumero IN NUMBER);
    FUNCTION CO_Registros (xActividad IN NUMBER, xSensor IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION CO_Sesiones   RETURN SYS_REFCURSOR;
    
END PA_ENTRENADOR;
/
CREATE OR REPLACE PACKAGE PA_ATLETA IS
    FUNCTION CO_Eval_Malas_ImpRelev RETURN SYS_REFCURSOR;
    FUNCTION CO_Eval_Mejorar RETURN SYS_REFCURSOR;
    FUNCTION CO_Eval_Puntaje_Entren RETURN SYS_REFCURSOR;
    FUNCTION CO_Eval_Ejerci_Recome RETURN SYS_REFCURSOR;
END PA_ATLETA;