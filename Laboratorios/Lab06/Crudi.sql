/*-------------------PC_ACTIVIDAD-------------------*/
CREATE OR REPLACE PACKAGE BODY PC_ACTIVIDAD IS 

    PROCEDURE AD_Actividades (xFechaInicio IN DATE,xHoraInicio IN NUMBER,xTiempoTotal IN NUMBER,xPulsacionesProm IN NUMBER) IS
    BEGIN
        INSERT INTO Actividades (fechaInicio, horaInicio, tiempoTotal, pulsacionesProm)
        VALUES (xFechaInicio, xHoraInicio, xTiempoTotal, xPulsacionesProm);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'No se puede insertar la Actividad.');
    END;
    
    PROCEDURE AD_Fotos (xActividad IN NUMBER,xFoto IN VARCHAR) IS
    BEGIN
        INSERT INTO Fotos (Actividad, Fotos) 
        VALUES (xActividad,xFoto);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20011, 'No se puede insertar la Foto.');
    END;
    
    PROCEDURE AD_Registros (xFecha IN DATE, xHora IN NUMBER,xSensor IN VARCHAR,xValor IN NUMBER,xActividad IN NUMBER) IS
    BEGIN
        INSERT INTO Registros (fecha, hora, sensor, valor, actividad)
        VALUES (xFecha, xHora, xSensor, xValor, xActividad);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20012, 'No se puede insertar el Registro.');
    END;
    
    PROCEDURE AD_Planeadas (xNumero IN NUMBER,xSesionDia IN NUMBER,xSesionOrden IN NUMBER) IS
    BEGIN
        INSERT INTO Planeadas (numero, sesiondia, sesionorden)
        VALUES (xNumero, xSesionDia, xSesionOrden);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20013, 'No se puede insertar el Actividad Planeada.');
    END;
    
    PROCEDURE AD_Libres (xNumero IN NUMBER, xAtletaTID IN VARCHAR, xAtletaNID IN VARCHAR) IS
    BEGIN
        INSERT INTO Libres(numero, atletatid, atletanid)
        VALUES (xNumero, xAtletaTID, xAtletaNID);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20013, 'No se puede insertar el Actividad Planeada.');
    END;
    
    PROCEDURE MO_Actividades (xNumero IN NUMBER, xHoraInicio IN NUMBER, xTiempoTotal IN NUMBER, xPulsacionesProm IN NUMBER) IS 
    BEGIN 
        IF xHoraInicio IS NOT NULL THEN
            UPDATE Actividades  SET HoraInicio  =  xHoraInicio  WHERE   xNumero = Numero;
        END IF;
        COMMIT; 
        IF xTiempoTotal IS NOT NULL THEN
            UPDATE Actividades  SET TiempoTotal  =  xTiempoTotal  WHERE   xNumero = Numero;
        END IF;
        COMMIT;
        IF xPulsacionesProm IS NOT NULL THEN
            UPDATE Actividades  SET PulsacionesProm  =  xPulsacionesProm  WHERE   xNumero = Numero;
        END IF;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20014,'Error al modificar la actividad.');
	END;
    
    PROCEDURE EL_Actividades(xNumero IN NUMBER) IS 
    BEGIN
      DELETE FROM  Actividades WHERE xNumero = Numero;
      COMMIT;
      EXCEPTION 
      WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20015, 'No se puede eliminar la Actividad.');
    END;
    
    FUNCTION CO_Actividades   RETURN SYS_REFCURSOR IS CO_AC SYS_REFCURSOR;
	BEGIN
	OPEN CO_AC  FOR
		SELECT * FROM Actividades;
	RETURN CO_AC;
	END;
    
    FUNCTION CO_Fotos   RETURN SYS_REFCURSOR IS CO_FO SYS_REFCURSOR;
	BEGIN
	OPEN CO_FO  FOR
		SELECT * FROM Fotos;
	RETURN CO_FO;
	END;
    
    FUNCTION CO_Libre   RETURN SYS_REFCURSOR IS CO_LI SYS_REFCURSOR;
	BEGIN
	OPEN CO_LI  FOR
		SELECT * FROM Libres;
	RETURN CO_LI;
	END;
    
    FUNCTION CO_Planeada   RETURN SYS_REFCURSOR IS CO_PL SYS_REFCURSOR;
	BEGIN
	OPEN CO_PL  FOR
		SELECT * FROM Planeadas;
	RETURN CO_PL;
	END;

    FUNCTION CO_Registros (xActividad IN NUMBER, xSensor IN VARCHAR) RETURN SYS_REFCURSOR IS CO_RE SYS_REFCURSOR;
	BEGIN
	OPEN CO_RE  FOR
		SELECT Numero, fecha, Hora, Valor 
        FROM Registros 
        WHERE Actividad = xActividad AND Sensor = xSensor
        ORDER BY Numero ASC;
	RETURN CO_RE;
	END;
    
END PC_ACTIVIDAD;
/
/*-------------------PC_EVALUACION-------------------*/
CREATE OR REPLACE PACKAGE BODY PC_EVALUACION IS 

    PROCEDURE AD_Evaluaciones (xPuntaje IN NUMBER, xComentarios IN VARCHAR, xRECOMENDACIONES IN XMLTYPE, xEntrenadorTID IN VARCHAR, xEntrenadorNID IN VARCHAR, xActividad IN NUMBER) IS
    BEGIN
        INSERT INTO Evaluaciones (puntaje, comentarios, recomendaciones, entrenadortid, entrenadornid, actividad)
        VALUES (xPuntaje, xComentarios, xRECOMENDACIONES, xEntrenadorTID, xEntrenadorNID, xActividad);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20016, 'No se puede insertar la Evaluacion.');
    END;
    
    PROCEDURE AD_Similitudes (xEvaluacion1TID IN VARCHAR, xEvaluacion1NID IN VARCHAR, xEvaluacion1Actividad IN NUMBER, xEvaluacion2TID IN VARCHAR, xEvaluacion2NID IN VARCHAR, xEvaluacionActividad IN NUMBER, xPorcentaje IN NUMBER) IS
    BEGIN
        INSERT INTO Similitudes (evaluacion1tid, evaluacion1nid, evaluacion1actividad, evaluacion2tid, evaluacion2nid, evaluacion2actividad, porcentaje)
        VALUES (xEvaluacion1TID, xEvaluacion1NID, xEvaluacion1Actividad, xEvaluacion2TID, xEvaluacion2NID, xEvaluacionActividad, xPorcentaje);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20017, 'No se puede insertar la Similitud.');
    END;
    
    PROCEDURE MO_Evaluaciones (xNumero IN NUMBER, xPuntaje IN NUMBER, xComentarios IN VARCHAR) IS 
    BEGIN 
        IF xPuntaje IS NOT NULL THEN
            UPDATE Evaluaciones  SET Puntaje  =  xPuntaje  WHERE   xNumero = Numero;
        END IF;
        COMMIT; 
        IF xComentarios IS NOT NULL THEN
            UPDATE Evaluaciones  SET Comentarios  =  xComentarios  WHERE   xNumero = Numero;
        END IF;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20018,'Error al modificar la Evaluacion.');
	END;
    
    PROCEDURE EL_Evaluaciones(xNumero IN NUMBER) IS 
    BEGIN
      DELETE FROM  Evaluaciones WHERE xNumero = Numero;
      COMMIT;
      EXCEPTION 
      WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20019, 'No se puede eliminar la Evaluacion.');
    END;
    
    FUNCTION CO_Evaluaciones   RETURN SYS_REFCURSOR IS CO_EV SYS_REFCURSOR;
	BEGIN
	OPEN CO_EV  FOR
		SELECT * FROM Evaluaciones;
	RETURN CO_EV;
	END;
    
    FUNCTION CO_Similitudes   RETURN SYS_REFCURSOR IS CO_SI SYS_REFCURSOR;
	BEGIN
	OPEN CO_SI  FOR
		SELECT * FROM Similitudes;
	RETURN CO_SI;
	END;
    
    FUNCTION CO_Eval_Malas_ImpRelev   RETURN SYS_REFCURSOR IS CO_EV_M SYS_REFCURSOR;
	BEGIN
	OPEN CO_EV_M  FOR
		SELECT entrenadortid, entrenadornid, fecha, comentarios
        FROM Evaluaciones
        WHERE EXTRACT(recomendaciones, '/TRecomendacion/area[(zonas/@importancia>=4 and zonas/@tipo>="mal") 
		or (calentamiento/@importancia>=4 and zonas/@tipo>="mal") or (cadencia/@importancia>=4 and zonas/@tipo>="mal")]/zonas/@importancia') IS NOT NULL
        ORDER BY fecha;
	RETURN CO_EV_M;
	END;
    
    FUNCTION CO_Eval_Mejorar   RETURN SYS_REFCURSOR IS CO_EV_ME SYS_REFCURSOR;
	BEGIN
	OPEN CO_EV_ME  FOR
		SELECT EntrenadorTID, EntrenadorNID, EXTRACT(recomendaciones, '/TRecomendacion/area/zonas/@descripcion') AS Recomendacion_Zonas, 
            EXTRACT(recomendaciones, '/TRecomendacion/area/calentamiento/@descripcion') AS Recomendacion_calentamineto, 
            EXTRACT(recomendaciones, '/TRecomendacion/area/cadencia/@descripcion') AS Recomendacion_cadencia,
                ((TO_NUMBER(EXTRACT(recomendaciones, '/TRecomendacion/area/zonas/@importancia')) + TO_NUMBER(EXTRACT(recomendaciones, '/TRecomendacion/area/calentamiento/@importancia')) + TO_NUMBER(EXTRACT(recomendaciones, '/TRecomendacion/area/cadencia/@importancia')))/3) AS Importancia
        FROM Evaluaciones, Libres
        WHERE Evaluaciones.actividad = Libres.numero
        ORDER BY ((TO_NUMBER(EXTRACT(recomendaciones, '/TRecomendacion/area/zonas/@importancia')) + TO_NUMBER(EXTRACT(recomendaciones, '/TRecomendacion/area/calentamiento/@importancia')) + TO_NUMBER(EXTRACT(recomendaciones, '/TRecomendacion/area/cadencia/@importancia')))/3) DESC;
	RETURN CO_EV_ME;
	END;
    
    FUNCTION CO_Eval_Puntaje_Entren   RETURN SYS_REFCURSOR IS CO_EV_PU SYS_REFCURSOR;
	BEGIN
	OPEN CO_EV_PU  FOR
        SELECT EntrenadorTID, EntrenadorNID, Numero, Puntaje, Comentarios
        FROM Evaluaciones;
    RETURN CO_EV_PU;
	END;
    
    FUNCTION CO_Eval_Ejerci_Recome   RETURN SYS_REFCURSOR IS CO_EV_EJ SYS_REFCURSOR;
	BEGIN
	OPEN CO_EV_EJ  FOR
        SELECT EntrenadorNID, EXTRACT(recomendaciones, '/TRecomendacion/ejercicios/cardio') AS Entrenamiento_Cardio,
            EXTRACT(recomendaciones, '/TRecomendacion/ejercicios/pierna') AS Entrenamiento_pierna,
            EXTRACT(recomendaciones, '/TRecomendacion/ejercicios/abdomen') AS Entrenamiento_abdomen, fecha
        FROM Evaluaciones
        WHERE EXTRACT(recomendaciones, '/TRecomendacion/ejercicios/cardio/@*') IS NOT NULL
        ORDER BY fecha;
    RETURN CO_EV_EJ;
	END;
    
END PC_EVALUACION;
