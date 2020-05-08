/*TG_AD_Evaluaciones*/
CREATE OR REPLACE TRIGGER TG_AD_Evaluaciones
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
CREATE OR REPLACE TRIGGER TG_AD_Similitudes
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
        EXCEPTION
            WHEN no_data_found THEN ent_total := 0;
        IF ent_total > 2 
            THEN RAISE_APPLICATION_ERROR(-20203,'Numero_Maximo_De_Solicitudes_Alcanzado');
        END IF; 
END TG_AD_Similitudes;
/
/*TG_AD_Actividades*/
CREATE OR REPLACE TRIGGER TG_AD_Actividades
    BEFORE INSERT ON Actividades
    FOR EACH ROW
    BEGIN
        SELECT COUNT(*)+1 INTO :new.numero FROM Actividades;
        
        IF (:new.tiempoTotal > 120) AND (:new.pulsacionesProm is NULL)
            THEN RAISE_APPLICATION_ERROR(-20076,'Cuando el tiempo total es mayor a 2h debe indicar las pulsaciones');
        END IF;
END TG_AD_Actividades;
/
/*TG_AD_Fotos*/
CREATE OR REPLACE TRIGGER TG_AD_Fotos
    BEFORE INSERT ON Fotos
    FOR EACH ROW
    DECLARE
        foto_ch NUMBER;
    BEGIN
        SELECT count(*) INTO foto_ch FROM Fotos WHERE Fotos.fotos = :new.fotos;
        IF foto_ch > 0
            THEN RAISE_APPLICATION_ERROR(-20076,'No se pueden repetir fotos');
        END IF;
END TG_AD_Fotos;
/
/*TG_AD_Planeadas*/
CREATE OR REPLACE TRIGGER TG_AD_Planeadas
    BEFORE INSERT ON Planeadas
    FOR EACH ROW
    DECLARE
        sesion_ord NUMBER;
        sesion_dia NUMBER;
    BEGIN
        SELECT count(*) INTO sesion_ord FROM Sesiones WHERE Sesiones.orden = :new.sesionorden;
        SELECT count(*) INTO sesion_dia FROM Sesiones WHERE Sesiones.dia = :new.sesiondia;
        IF (sesion_ord <= 0) AND (sesion_dia <= 0)
            THEN RAISE_APPLICATION_ERROR(-20076,'Los valores no corresponden a lo estipulado en la sesión.');
        END IF;
END TG_AD_Planeadas;
/
/*TG_AD_Regitros*/
CREATE OR REPLACE TRIGGER TG_AD_Regitros
    BEFORE INSERT ON Registros
    FOR EACH ROW
    DECLARE
        fecha_act DATE;
        cant_registros NUMBER;
    BEGIN
        SELECT COUNT(*)+1 INTO :new.numero FROM Registros;
        
        SELECT fechaInicio INTO fecha_act FROM Actividades WHERE Actividades.numero = :new.actividad;
        IF :new.fecha < fecha_act
            THEN RAISE_APPLICATION_ERROR(-20076,'lA FECHA DE REGISTRO DEBE SER SUPERIOR A LA FECHA DE LA ACTIVIDAD');
        END IF;
        
        SELECT count(*) INTO cant_registros FROM Registros WHERE Registros.sensor = :new.sensor AND Registros.actividad = :new.actividad;
        IF cant_registros > 1
            THEN RAISE_APPLICATION_ERROR(-20077,'Maximo Dos Registros Por Actividad(mismo sensor)');
        END IF;
END TG_AD_Regitros;
/
/*TG_AD_Sesiones*/
CREATE OR REPLACE TRIGGER TG_AD_Sesiones
    BEFORE INSERT ON Sesiones
    FOR EACH ROW
    DECLARE
        dia_actv VARCHAR(10);
        dia_act VARCHAR(10);
    BEGIN
         SELECT TO_CHAR(sysdate, 'DD') INTO dia_actv FROM DUAL;
         SELECT TO_NUMBER(dia_actv) INTO dia_act FROM DUAL;
        IF :new.dia < dia_act
            THEN RAISE_APPLICATION_ERROR(-20076,'EL DIA NO PUEDE SER MENOR AL DIA ACTUAL');
        END IF;
END TG_AD_Sesiones;
/
/*TG_M0_Evaluaciones*/
CREATE OR REPLACE TRIGGER TG_M0_Evaluaciones
	BEFORE UPDATE ON Evaluaciones
	FOR EACH ROW
	BEGIN
		IF (:old.fecha <> :new.fecha)
            OR (:old.entrenadortid <> :new.entrenadortid) OR (:old.entrenadornid <> :new.entrenadornid) 
            OR (:old.actividad <> :new.actividad) OR (:new.numero <> :old.numero)
		THEN
			RAISE_APPLICATION_ERROR(-20204,'Actualizacion_Invalida');
	  END IF; 
END TG_M0_Evaluaciones;
/
/*TG_M0_Actividad*/
CREATE OR REPLACE TRIGGER TG_M0_Actividad
	BEFORE UPDATE ON Actividades
	FOR EACH ROW
	BEGIN
		IF :old.fechaInicio <> :new.fechaInicio
		THEN
			RAISE_APPLICATION_ERROR(-20004,'Actualizacion Invalida');
	  END IF; 
END TG_M0_Actividad;
/
/*TG_M0_Sesion*/
CREATE OR REPLACE TRIGGER TG_M0_Sesion
	BEFORE UPDATE ON Sesiones
	FOR EACH ROW
	BEGIN
		IF :old.descripcion <> :new.descripcion
		THEN
			RAISE_APPLICATION_ERROR(-20024,'Actualizacion Invalida');
        END IF; 
      
        IF :old.dia <> :new.dia AND :old.dia > :new.dia
        THEN
			RAISE_APPLICATION_ERROR(-20034,'Actualizacion Invalida');
		END IF; 
END TG_M0_Sesion;
/
/*TG_EL_Evaluaciones*/
CREATE OR REPLACE TRIGGER TG_EL_Evaluaciones
	BEFORE DELETE ON Evaluaciones
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20205,'No_se_puede_eliminar_Evaluacion');
END TG_EL_Evaluaciones;
/
/*TG_EL_Actividades*/
CREATE OR REPLACE TRIGGER TG_EL_Actividades
	BEFORE DELETE ON Actividades
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20084,'No se puede eliminar una actividad');
END TG_EL_Actividades;