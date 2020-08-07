/*(30%) CONSTRUCCIÓN (SQL ORACLE)*/
 
---1.	Implemente la estructura de las tablas diseñadas en el punto 1. (sin restricciones externas).

CREATE TABLE Beneficiarios(
tipoDocumento VARCHAR(2) NOT NULL,
numeroDocumento NUMBER(15) NOT NULL,
nombre VARCHAR(50) NOT NULL,
fechaNacimiento DATE NOT NULL,
responsable VARCHAR(2) NOT NULL,
familiaMunicipio NUMBER(10) NOT NULL,
familiaPrograma NUMBER(10) NOT NULL,
familiafechaRegistro DATE NOT NULL,
familiatelefono VARCHAR(10) NOT NULL,
familiahuerta NUMBER(10) NOT NULL);

CREATE TABLE LideresSociales(
BeneficiariotipoDocumento VARCHAR(2) NOT NULL,
BeneficiarionumeroDocumento NUMBER(15) NOT NULL,
BeneficiariofamiliaMunicipio NUMBER(10) NOT NULL,
BeneficiariofamiliaPrograma NUMBER(10) NOT NULL,
BeneficiariofamiliafechaRegist DATE NOT NULL,
Beneficiariofamiliatelefono VARCHAR(10) NOT NULL,
Beneficiariofamiliahuerta NUMBER(10) NOT NULL,
nivelFormacion VARCHAR(20) NOT NULL);

CREATE TABLE Municipios(
codigo NUMBER(10) NOT NULL,
nombre VARCHAR(50) NOT NULL);

CREATE TABLE Familias(
fechaRegistro DATE NOT NULL,
telefono VARCHAR(10) NOT NULL,
municipio NUMBER(10) NOT NULL,
programa NUMBER(10) NOT NULL);

CREATE TABLE Programas(
codigo NUMBER(10) NOT NULL,
nombre VARCHAR(50) NOT NULL,
objetivo VARCHAR(200) NOT NULL,
costoEstimado NUMBER(10) NOT NULL);

CREATE TABLE Servicios(
codigo VARCHAR(10) NOT NULL,
fecha DATE NOT NULL,
voluntariotipoDocumento NUMBER(10) NOT NULL,
voluntarionumeroDocumento NUMBER(15) NOT NULL),
programa NUMBER(10) NOT NULL;

CREATE TABLE Huertas(
codigo NUMBER(10) NOT NULL,
ubicacion VARCHAR(50) NOT NULL,
areaTotal NUMBER(10) NOT NULL,
familiaMunicipio NUMBER(10) NOT NULL,
familiaPrograma NUMBER(10) NOT NULL,
familiafechaRegistro DATE NOT NULL,
familiatelefono VARCHAR(10) NOT NULL;


CREATE TABLE Empleos(
codigo NUMBER(10) NOT NULL,
NITEmpleador NUMBER(15) NOT NULL,
cargo VARCHAR(20) NOT NULL,
BenftipoDocumento VARCHAR(2),
BenfnumeroDocumento NUMBER(15));

CREATE TABLE Capacitaciones(
codigo NUMBER(10) NOT NULL,
hora VARCHAR(4) NOT NULL,
duracion NUMBER(10) NOT NULL,
cupos NUMBER(2) NOT NULL);

CREATE TABLE ValoracionesMedicas(
codigo NUMBER(10) NOT NULL,
hora NUMBER(4) NOT NULL,
peso NUMBER(3) NOT NULL,
talla VARCHAR(4) NOT NULL,
tratamientoDesparacitacion VARCHAR(50),
BeneficiariotipoDocumento VARCHAR(2),
BeneficiarionumeroDocumento NUMBER(15));

CREATE TABLE Voluntarios(
tipoDocumento NUMBER(10) NOT NULL,
numeroDocumento NUMBER(15) NOT NULL,
profesion VARCHAR(50) NOT NULL,
nombre VARCHAR(50) NOT NULL,
fechaVinculacion DATE NOT NULL,
fechaRetiro DATE);

CREATE TABLE Auditorios(
codigo NUMBER(10) NOT NULL,
direccion VARCHAR(50) NOT NULL,
municipio NUMBER(10) NOT NULL);

CREATE TABLE Facilidades(
auditorio NUMBER(10) NOT NULL,
facilidades VARCHAR(50) NOT NULL);

CREATE TABLE tratamientosMicronutrientes(
ValoracionMedica NUMBER(10) NOT NULL,
tratamientosMicronutrientes VARCHAR(50));

CREATE TABLE Asistentes(
BeneficiariotipoDocumento VARCHAR(2) NOT NULL,
BeneficiarionumeroDocumento NUMBER(15) NOT NULL,
BeneficiariofamiliaMunicipio NUMBER(10) NOT NULL,
BeneficiariofamiliaPrograma NUMBER(10) NOT NULL,
BeneficiariofamiliafechaRegist DATE NOT NULL,
Beneficiariofamiliatelefono VARCHAR(10) NOT NULL,
Beneficiariofamiliahuerta NUMBER(10) NOT NULL,
capacitacion NUMBER(10) NOT NULL);

------------------Implemente las restricciones externas declarativas correspondientes al CRUD Servicio--------------------------
--1. El documento pude ser: 'CC' o 'TI'
    ALTER TABLE Beneficiarios ADD CONSTRAINT CK_beneficiarios_documenttype CHECK(tipoDocumento IN ('CC','TI'));
    ALTER TABLE Voluntarios ADD CONSTRAINT CK_voluntarios_documenttype CHECK(tipoDocumento IN ('CC','TI'));

--2. Cada capacitacion tiene un cupo maximo de 20 asistentes
    ALTER TABLE Capacitaciones ADD CONSTRAINT CK_capacitaciones_cupos CHECK(cupos <= 20);
    
--3. Un Beneficiario no puede asistir a mas de 5 capacitaciones
    CREATE OR REPLACE TRIGGER Tg_capacitacionbeneficiario
	BEFORE INSERT ON Asistentes
	FOR EACH ROW
    DECLARE
        Cantidad_AS NUMBER;
	BEGIN
        SELECT COUNT(*) INTO Cantidad_AS FROM Asistentes 
                        WHERE Asistentes.BeneficiarionumeroDocumento = :new.BeneficiarionumeroDocumento AND
                              Asistentes.BeneficiariotipoDocumento = :new.BeneficiariotipoDocumento
                        GROUP BY BeneficiarionumeroDocumento, BeneficiariotipoDocumento;
		IF Cantidad_AS >= 5
		THEN
			RAISE_APPLICATION_ERROR(-20004,'Maximo de Asistencias Alcanzado');
	  END IF; 
	END Tg_CapacitacionBeneficiario;
    
--4. Si un voluntario se ha retirado, la fecha de retiro no puede ser anterior a la fecha de vinculacion ni postariaor a la fehca actual
    ALTER TABLE Voluntarios ADD CONSTRAINT CK_voluntarios_fecharetiro CHECK(fechaRetiro<SYSDATE() AND fechaVinculacion<fechaRetiro);
    
--5. La Herencia de los servicios es completa
    CREATE OR REPLACE TRIGGER Tg_herencia
	BEFORE INSERT ON Asistentes
	FOR EACH ROW
    DECLARE
        Cantidad NUMBER;
	BEGIN
        SELECT COUNT(*) INTO Cantidad FROM Servicios
                        WHERE (codigo = :new.codigo) AND :new.codigo NOT IN (
                            (SELECT codigo FROM Huertas) UNION (SELECT codigo FROM Empleos) 
                             UNION (SELECT codigo FROM Capacitaciones) UNION (SELECT codigo FROM ValoracionesMedicas));
		IF Cantidad > 0
		THEN
			RAISE_APPLICATION_ERROR(-20004,'Herencia No Completa');
	  END IF; 
	END Tg_herencia;
    
------------------Implemente los mecanismos diseñados para cumplir las reglas del caso de uso. Registrar Servicio--------------------------

/*Adicion*/
--La adicion se debe realizar con datos minimos
    CREATE OR REPLACE TRIGGER Tg_AD_Servicios
	BEFORE INSERT ON Servicios
	FOR EACH ROW
	BEGIN
        :new.fecha := SYSDATE();
	END Tg_AD_Servicios;
    
    CREATE OR REPLACE TRIGGER Tg_AD_Capacitaciones
	BEFORE INSERT ON Capacitaciones
	FOR EACH ROW
    DECLARE
        Hora_S VARCHAR(4);
	BEGIN
        SELECT TO_CHAR(SYSDATE, 'HH24') INTO Hora_S FROM DUAL;
        :new.hora := Hora_S;
	END Tg_AD_Capacitaciones;
    
    CREATE OR REPLACE TRIGGER Tg_AD_ValoracionesMedicas
	BEFORE INSERT ON ValoracionesMedicas
	FOR EACH ROW
    DECLARE
        Hora_S VARCHAR(4);
	BEGIN
        SELECT TO_CHAR(SYSDATE, 'HH24') INTO Hora_S FROM DUAL;
        :new.hora := Hora_S;
	END Tg_AD_ValoracionesMedicas;

--El codigo de cada servicio esta definido por el prefijo SRx. donde x es un numero de 5 digitos
    CREATE OR REPLACE TRIGGER Tg_AD_Servicios
	BEFORE INSERT ON Servicios
	FOR EACH ROW
	BEGIN
        IF (:new.codigo NOT LIKE ('SR_____'))
            THEN RAISE_APPLICATION_ERROR(-20076,'Codigo no valido');
        END IF;
	END Tg_AD_Servicios;

--El codigo de cada servicio esta definido por el prefijo SRx. donde x es un numero de 5 digitos
    --Huertas
    CREATE OR REPLACE TRIGGER Tg_AD_Huertas
	BEFORE INSERT ON Huertas
	FOR EACH ROW
    DECLARE
        Cantidad VARCHAR(10);
	BEGIN
        SELECT COUNT(*) INTO Cantidad FROM Servicios WHERE Servicios.codigo = :new.codigo;
        IF (Cantidad = 0)
            THEN RAISE_APPLICATION_ERROR(-20077,'No se puede añadir la huerta');
        END IF;
	END Tg_AD_Huertas;
    
    --Empleos
    CREATE OR REPLACE TRIGGER Tg_AD_Empleos
	BEFORE INSERT ON Empleos
	FOR EACH ROW
    DECLARE
        CantidadS VARCHAR(10);
        CantidadF VARCHAR(10);
	BEGIN
        SELECT COUNT(*) INTO CantidadS FROM Servicios WHERE Servicios.codigo = :new.codigo;
        SELECT COUNT(*) INTO CantidadF FROM Beneficiarios WHERE Beneficiarios.tipoDocumento = :new.BenftipoDocumento
                                                                 AND Beneficiarios.numeroDocumento = :new.BenfnumeroDocumento;
        IF (CantidadS = 0 OR CantidadF = 0)
            THEN RAISE_APPLICATION_ERROR(-20078,'No se puede añadir El empleo');
        END IF;
	END Tg_AD_Empleos;
    
    --Asistentes
    CREATE OR REPLACE TRIGGER Tg_AD_Asistentes
	BEFORE INSERT ON Asistentes
	FOR EACH ROW
    DECLARE
        CantidadS VARCHAR(10);
        CantidadF VARCHAR(10);
	BEGIN
        SELECT COUNT(*) INTO CantidadS FROM Servicios WHERE Servicios.codigo = :new.codigo;
        SELECT COUNT(*) INTO CantidadF FROM Beneficiarios WHERE Beneficiarios.tipoDocumento = :new.BeneficiariotipoDocumento
                                                                 AND Beneficiarios.numeroDocumento = :new.BeneficiarionumeroDocumento;
        IF (CantidadS = 0 OR CantidadF = 0)
            THEN RAISE_APPLICATION_ERROR(-20079,'No se puede añadir el asistente');
        END IF;
	END Tg_AD_Asistentes;
    
    --ValoracionesMedicas
    CREATE OR REPLACE TRIGGER Tg_AD_ValoracionesMedicas
	BEFORE INSERT ON ValoracionesMedicas
	FOR EACH ROW
    DECLARE
        CantidadS VARCHAR(10);
        CantidadF VARCHAR(10);
	BEGIN
        SELECT COUNT(*) INTO CantidadS FROM Servicios WHERE Servicios.codigo = :new.codigo;
        SELECT COUNT(*) INTO CantidadF FROM Beneficiarios WHERE Beneficiarios.tipoDocumento = :new.BeneficiariotipoDocumento
                                                                 AND Beneficiarios.numeroDocumento = :new.BeneficiarionumeroDocumento;
        IF (CantidadS = 0 OR CantidadF = 0)
            THEN RAISE_APPLICATION_ERROR(-20075,'No se puede añadir la valoracion');
        END IF;
	END Tg_AD_ValoracionesMedicas;

--No se puede asignar un servicio a un voluntario que se encuentre retirado
    --Huertas
    CREATE OR REPLACE TRIGGER Tg_AD_Servicios
	BEFORE INSERT ON Servicios
	FOR EACH ROW
    DECLARE
        FechaV DATE;
	BEGIN
        SELECT  fechaRetiro INTO FechaV FROM Voluntarios WHERE :new.voluntariotipoDocumento=tipoDocumento AND 
                                                               :new.voluntarionumeroDocumento=numeroDocumento;
        IF (FechaV IS NULL)
            THEN RAISE_APPLICATION_ERROR(-20074,'No Se puede añadir servicio a voluntario retirado');
        END IF;
	END Tg_AD_Servicios;


/*Modificacion*/

--No se puede cambiar el programa asociado a cada servicio
    CREATE OR REPLACE TRIGGER Tg_Mo_Servicios
	BEFORE UPDATE ON Servicios
	FOR EACH ROW
	BEGIN
		IF :old.programa <> :new.programa
		THEN
			RAISE_APPLICATION_ERROR(-20004,'Actualizacion Invalida');
	  END IF; 
	END Tg_Mo_Servicios;
    
--El voluntario asignado a un servicio se puede cambiar siempre y cuando no se haya retirado.
    CREATE OR REPLACE TRIGGER Tg_Mo_Servicios
	BEFORE UPDATE ON Servicios
	FOR EACH ROW
	BEGIN
		IF :old.voluntariotipoDocumento <> :new.voluntariotipoDocumento OR :old.voluntarionumeroDocumento <> :new.voluntarionumeroDocumento
		THEN
			RAISE_APPLICATION_ERROR(-20005,'Actualizacion Invalida');
	  END IF; 
	END Tg_Mo_Servicios;

--El voluntario asignado a un servicio se puede cambiar siempre y cuando no se haya retirado.
    CREATE OR REPLACE TRIGGER Tg_Mo_Servicios
	BEFORE UPDATE ON Servicios
	FOR EACH ROW
	DECLARE
        FechaV DATE;
	BEGIN
        SELECT  fechaRetiro INTO FechaV FROM Voluntarios WHERE :new.voluntariotipoDocumento=tipoDocumento AND 
                                                               :new.voluntarionumeroDocumento=numeroDocumento;
                                                               
		IF (:old.voluntariotipoDocumento <> :new.voluntariotipoDocumento OR :old.voluntarionumeroDocumento <> :new.voluntarionumeroDocumento)
            AND (FechaV IS NOT NULL)
		THEN
			RAISE_APPLICATION_ERROR(-20006,'Actualizacion Invalida');
	  END IF; 
	END Tg_Mo_Servicios;

--Si se modifica el tipo y número de documento de un beneficiario, se actualizan los servicios asociados a él
    ALTER TABLE Empleos ADD CONSTRAINT FK_empleos_beneficiarios 
    FOREIGN KEY(BenftipoDocumento, BenfnumeroDocumento) REFERENCES Beneficiarios(tipoDocumento, numeroDocumento) ON UPDATE CASCADE;
    
    ALTER TABLE Asistentes ADD CONSTRAINT FK_Asistentes_beneficiarios 
    FOREIGN KEY(BeneficiariotipoDocumento, BeneficiarionumeroDocumento) REFERENCES Beneficiarios(tipoDocumento, numeroDocumento) ON UPDATE CASCADE;

    ALTER TABLE ValoracionesMedicas ADD CONSTRAINT FK_ValoracionesMedicas_beneficiarios 
    FOREIGN KEY(BeneficiariotipoDocumento, BeneficiarionumeroDocumento) REFERENCES Beneficiarios(tipoDocumento, numeroDocumento) ON UPDATE CASCADE;

--De cada tipo de servicio se puede modificar
    --Huerta
        CREATE OR REPLACE TRIGGER Tg_Mo_Huertas
        BEFORE UPDATE ON Huertas
        FOR EACH ROW
        BEGIN
            IF :old.codigo <> :new.codigo OR :old.ubicacion <> :new.ubicacion OR
                :old.familiaMunicipio <> :new.familiaMunicipio OR
                :old.familiaPrograma <> :new.familiaPrograma OR
                :old.familiafechaRegistro <> :new.familiafechaRegistro OR
                :old.familiatelefono <> :new.familiatelefono
            THEN
                RAISE_APPLICATION_ERROR(-20007,'Actualizacion Invalida');
          END IF; 
        END Tg_Mo_Huertas;
        
    --Empleos
        CREATE OR REPLACE TRIGGER Tg_Mo_Empleos
        BEFORE UPDATE ON Empleos
        FOR EACH ROW
        BEGIN
            IF :old.codigo <> :new.codigo OR :old.NITEmpleador <> :new.NITEmpleador OR
                :old.BenftipoDocumento <> :new.BenftipoDocumento OR
                :old.BenfnumeroDocumento <> :new.BenfnumeroDocumento
            THEN
                RAISE_APPLICATION_ERROR(-20008,'Actualizacion Invalida');
          END IF; 
        END Tg_Mo_Empleos;
        
    --Capacitaciones
        CREATE OR REPLACE TRIGGER Tg_Mo_capacitaciones
        BEFORE UPDATE ON Capacitaciones
        FOR EACH ROW
        BEGIN
            IF :old.codigo <> :new.codigo OR :old.duracion <> :new.duracion OR
                :old.cupos <> :new.cupos
            THEN
                RAISE_APPLICATION_ERROR(-20009,'Actualizacion Invalida');
          END IF; 
        END Tg_Mo_capacitaciones;
        
        CREATE OR REPLACE TRIGGER Tg_Mo_capacitaciones
        BEFORE UPDATE ON Capacitaciones
        FOR EACH ROW
        DECLARE
            FechaD DATE;
        BEGIN
            SELECT fecha INTO FechaD FROM Servicios WHERE :old.codigo=codigo;
            IF (FechaD > SYSDATE())
            THEN
                RAISE_APPLICATION_ERROR(-20010,'Actualizacion Invalida');
          END IF; 
        END Tg_Mo_capacitaciones;
        
        CREATE OR REPLACE TRIGGER Tg_Mo_El_Asistentes
        BEFORE UPDATE OR DELETE ON Asistentes
        FOR EACH ROW
        BEGIN
            RAISE_APPLICATION_ERROR(-20011,'No se puede ni actualizar ni eliminar');
        END Tg_Mo_El_Asistentes;

    --ValoracionMedica
        CREATE OR REPLACE TRIGGER Tg_Mo_ValoracionesMedicas
        BEFORE UPDATE ON ValoracionesMedicas
        FOR EACH ROW
        BEGIN
            IF :old.codigo <> :new.codigo OR :old.peso <> :new.peso OR
                :old.talla <> :new.talla OR
                :old.tratamientoDesparacitacion <> :new.tratamientoDesparacitacion OR
                :old.BeneficiariotipoDocumento <> :new.BeneficiariotipoDocumento OR
                :old.BeneficiarionumeroDocumento <> :new.BeneficiarionumeroDocumento
            THEN
                RAISE_APPLICATION_ERROR(-20012,'Actualizacion Invalida');
          END IF; 
        END drop trigger Tg_Mo_ValoracionesMedicas;
        
        CREATE OR REPLACE TRIGGER Tg_Mo_ValoracionesMedicas
        BEFORE UPDATE ON ValoracionesMedicas
        FOR EACH ROW
        DECLARE
            FechaD DATE;
        BEGIN
            SELECT fecha INTO FechaD FROM Servicios WHERE :old.codigo=codigo;
            IF (FechaD > SYSDATE())
            THEN
                RAISE_APPLICATION_ERROR(-20013,'Actualizacion Invalida');
          END IF; 
        END Tg_Mo_ValoracionesMedicas;
        
        CREATE OR REPLACE TRIGGER Tg_Mo_El_tratamientosMicronutr
        BEFORE UPDATE OR DELETE ON tratamientosMicronutrientes
        FOR EACH ROW
        BEGIN
            RAISE_APPLICATION_ERROR(-20010,'No se puede ni actualizar ni eliminar');
        END Tg_Mo_El_tratamientosMicronutr;



/*Eliminar*/

--Un servicio no se puede eliminar si la fecha es posterior a la fecha actual. 
        CREATE OR REPLACE TRIGGER Tg_El_Servicio
        BEFORE DELETE ON Servicios
        FOR EACH ROW
        BEGIN
            IF (:old.fecha > SYSDATE())
            THEN
                RAISE_APPLICATION_ERROR(-20013,'No se puede eliminar');
          END IF; 
        END Tg_El_Servicio;

--Si se elimina un beneficiario, los servicios asociados a él quedan referenciando a un beneficiario indefinido

    ALTER TABLE Empleos ADD CONSTRAINT FK_empleos_beneficiarios 
    FOREIGN KEY(BenftipoDocumento, BenfnumeroDocumento) REFERENCES Beneficiarios(tipoDocumento, numeroDocumento) ON DELETE CASCADE;
    
    ALTER TABLE Asistentes ADD CONSTRAINT FK_Asistentes_beneficiarios 
    FOREIGN KEY(BeneficiariotipoDocumento, BeneficiarionumeroDocumento) REFERENCES Beneficiarios(tipoDocumento, numeroDocumento) ON UPDATE CASCADE;

    ALTER TABLE ValoracionesMedicas ADD CONSTRAINT FK_ValoracionesMedicas_beneficiarios 
    FOREIGN KEY(BeneficiariotipoDocumento, BeneficiarionumeroDocumento) REFERENCES Beneficiarios(tipoDocumento, numeroDocumento) ON DELETE CASCADE;