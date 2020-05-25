/*---------------------------------Mantener Tecnico---------------------------------*/
/*Disparadores*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Tecnico
    BEFORE INSERT ON DirectoresTecnicos
    FOR EACH ROW
    DECLARE
        Cedula_C NUMBER(10);
    BEGIN
        IF :new.fechaInicio IS NULL
            THEN :new.fechaInicio := sysdate;
        END IF;
        
        SELECT cedula INTO Cedula_C FROM DirectoresTecnicos WHERE equipo = :new.equipo AND fechaFinal IS NOT NULL;
        
        EXCEPTION
            WHEN no_data_found THEN Cedula_C := null;
        
        IF Cedula_C IS NOT NULL AND :new.fechaFinal IS NOT NULL
            THEN 
                UPDATE DirectoresTecnicos SET fechaFinal = sysdate WHERE cedula = Cedula_C AND equipo = :new.equipo;
        END IF;
END Tg_Ad_Tecnico;
/
--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Tecnico
    BEFORE UPDATE ON DirectoresTecnicos
    FOR EACH ROW
    BEGIN
        IF (:old.fechaInicio <> :new.fechaInicio AND :new.equipo <> :old.equipo)
            THEN
                :new.fechaFinal := null;
        ELSE
            RAISE_APPLICATION_ERROR(-20202,'ACTUALIZACION NO PERMITIDA');
	    END IF; 
END Tg_Mo_Tecnico;
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Tecnico
	BEFORE DELETE ON DirectoresTecnicos
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20203,'NO SE PUEDE ELIMINAR UN DirectorTecnico');
END Tg_El_Tecnico;
/
/*---------------------------------Mantener Tecnico---------------------------------*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Fisioterapeuta
    BEFORE INSERT ON Fisioterapeutas
    FOR EACH ROW
    DECLARE
        SalarioC NUMBER(10);
    BEGIN
        IF :new.disciplina IS NULL
            THEN :new.disciplina := 'LC';
        END IF;
        
        SELECT sueldo INTO SalarioC FROM DirectoresTecnicos WHERE equipo = :new.equipo AND fechaFinal IS NOT NULL;
        
        EXCEPTION
            WHEN no_data_found THEN SalarioC := 99999999;
        
        IF SalarioC IS NOT NULL AND (:new.salario > SalarioC)
            THEN 
                RAISE_APPLICATION_ERROR(-20202,'INSERCION DE FISIO NO PERMITIDA');
        END IF;
END Tg_Ad_Fisioterapeuta;
/
--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Fisioterapeuta
    BEFORE UPDATE ON Fisioterapeutas
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20202,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Fisioterapeuta;
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Fisioterapeuta
	BEFORE DELETE ON Fisioterapeutas
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20203,'NO SE PUEDE ELIMINAR UN Fisioterapeuta');
END Tg_El_Fisioterapeuta;
/
/*---------------------------------Registrar traspaso---------------------------------*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Traspaso
    BEFORE INSERT ON Fisioterapeutas
    FOR EACH ROW
    BEGIN
END Tg_Ad_Traspaso;
/
--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Traspaso
    BEFORE UPDATE ON Traspasos
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20202,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Traspaso;
/
CREATE OR REPLACE TRIGGER Tg_Mo_Compuestas
    BEFORE UPDATE ON Compuestas
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20202,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Compuestas;
/
CREATE OR REPLACE TRIGGER Tg_Mo_Simples
    BEFORE UPDATE ON Simples
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20202,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Simples;
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Traspaso
	BEFORE DELETE ON Traspasos
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20203,'NO SE PUEDE ELIMINAR UN Traspaso');
END Tg_El_Traspaso;
/
CREATE OR REPLACE TRIGGER Tg_El_Compuestas
	BEFORE DELETE ON Compuestas
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20203,'NO SE PUEDE ELIMINAR UN Traspaso');
END Tg_El_Traspaso;
/
CREATE OR REPLACE TRIGGER Tg_El_Simples
	BEFORE DELETE ON Simples
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20203,'NO SE PUEDE ELIMINAR UN Traspaso');
END Tg_El_Traspaso;