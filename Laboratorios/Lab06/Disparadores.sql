/*TG_AD_Evaluaciones*/
CREATE TRIGGER TG_AD_Evaluaciones
    BEFORE INSERT ON Evaluaciones
    FOR EACH ROW
    DECLARE
        atletatid_old VARCHAR(3);
        atletanid_old VARCHAR(15);
        ent_total NUMBER(10);
        ent_total2 NUMBER(10);
    BEGIN
        SELECT COUNT(*)+1 INTO :new.numero FROM evaluaciones;
        :new.fecha := SYSDATE();
        
        SELECT atletatid INTO atletatid_old 
        FROM Atletas,Sesiones,Planeadas,Actividades 
        WHERE Atletas.tid = Sesiones.atletatid AND Atletas.nid = Sesiones.atletanid 
              AND Sesiones.dia = Planeadas.sesiondia AND Sesiones.orden = Planeadas.sesionorden 
              AND Planeadas.numero = Actividades.numero AND Actividades.numero = :new.actividad;
              
        SELECT atletanid INTO atletanid_old 
        FROM Atletas,Sesiones,Planeadas,Actividades 
        WHERE Atletas.tid = Sesiones.atletatid AND Atletas.nid = Sesiones.atletanid 
              AND Sesiones.dia = Planeadas.sesiondia AND Sesiones.orden = Planeadas.sesionorden 
              AND Planeadas.numero = Actividades.numero AND :new.actividad = Actividades.numero ;
        
        SELECT COUNT(*)INTO ent_total 
        FROM Entrenamientos 
        WHERE atletatid = atletatid_old AND atletanid = atletanid_old AND entrenadortid = entrenadortid AND entrenadornid = entrenadornid;
        
        IF ent_total = 0 
            THEN RAISE_APPLICATION_ERROR(-20201,'No_Se_Puede_Registrar_Atleta_No_Entrena');
        END IF;
        
        SELECT COUNT(*) INTO ent_total2 
        FROM Evaluaciones
        WHERE Evaluaciones.numero = :new.numero AND Evaluaciones.actividad = :new.actividad;
        
        IF ent_total2 > 0
            THEN RAISE_APPLICATION_ERROR(-20202,'No_Se_Puede_Realizar_Evalaucion_Sobre_Misma_Actividad');
        END IF;
END TG_AD_Evaluaciones;
/
/*TG_AD_Similitudes*/
CREATE TRIGGER TG_AD_Similitudes
BEFORE INSERT ON Similitudes
    FOR EACH ROW
    DECLARE 
        ent_total NUMBER(10);
    BEGIN
        SELECT COUNT(*) INTO ent_total 
        FROM Similitudes
        WHERE (Similitudes.evaluacion1tid = :new.evaluacion1tid  AND Similitudes.evaluacion1nid = :new.evaluacion1nid 
              AND Similitudes.evaluacion1actividad = :new.evaluacion1actividad)
              OR (Similitudes.evaluacion2tid = :new.evaluacion2tid  AND Similitudes.evaluacion2nid = :new.evaluacion1nid 
              AND Similitudes.evaluacion2actividad = :new.evaluacion1actividad)
        GROUP BY Similitudes.evaluacion1nid;
        
        IF ent_total > 2 
            THEN RAISE_APPLICATION_ERROR(-20203,'Numero_Maximo_De_Solicitudes_Alcanzado');
        END IF; 
END TG_AD_Similitudes;
/
/*TG_M0_Evaluaciones*/
CREATE OR REPLACE TRIGGER TG_M0_Evaluaciones
	BEFORE UPDATE ON Evaluaciones
	FOR EACH ROW
	BEGIN
		IF (:old.fecha <> :new.fecha) OR  (:old.recomendaciones <> :new.recomendaciones) 
            OR (:old.entrenadortid <> :new.entrenadortid) OR (:old.entrenadornid <> :new.entrenadornid) 
            OR (:old.actividad <> :new.actividad) OR (:new.numero <> :old.numero)
		THEN
			RAISE_APPLICATION_ERROR(-20204,'Actualizacion_Invalida');
	  END IF; 
END TG_M0_Evaluaciones;
/
/*TG_EL_Evaluaciones*/
CREATE OR REPLACE TRIGGER TG_EL_Evaluaciones
	BEFORE DELETE ON Evaluaciones
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20205,'No_se_puede_eliminar_Evaluacion');
END TG_EL_Evaluaciones;