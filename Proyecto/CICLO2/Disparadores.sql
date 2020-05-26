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
        
        SELECT cedula INTO Cedula_C FROM DirectoresTecnicos WHERE equipo = :new.equipo AND fechaFinal IS NULL;
        
        IF Cedula_C IS NOT NULL AND :new.fechaFinal IS NULL
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
            RAISE_APPLICATION_ERROR(-20252,'ACTUALIZACION NO PERMITIDA');
	    END IF; 
END Tg_Mo_Tecnico;
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Tecnico
	BEFORE DELETE ON DirectoresTecnicos
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20253,'NO SE PUEDE ELIMINAR UN DirectorTecnico');
END Tg_El_Tecnico;
/
/*---------------------------------Mantener Fisioterapeuta---------------------------------*/
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
        RAISE_APPLICATION_ERROR(-20242,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Fisioterapeuta;
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Fisioterapeuta
	BEFORE DELETE ON Fisioterapeutas
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20243,'NO SE PUEDE ELIMINAR UN Fisioterapeuta');
END Tg_El_Fisioterapeuta;
/
/*---------------------------------Registrar traspaso---------------------------------*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Traspaso
    BEFORE INSERT ON Traspasos
    FOR EACH ROW
    DECLARE
        numeroN NUMBER(10);
    BEGIN
        SELECT Count(*)+1 INTO numeroN FROM Traspasos;
        :new.numero := numeroN;
        
END Tg_Ad_Traspaso;
/
CREATE OR REPLACE TRIGGER Tg_Ad_Traspaso_Simple
    BEFORE INSERT ON Simples
    FOR EACH ROW
    DECLARE
        presupuestoN NUMBER(38);
        ValorN NUMBER(38);
        equipoOld VARCHAR(50);
        jugadorT NUMBER(38);
        ValorEV NUMBER(38);
        equipoTras VARCHAR(50);
    BEGIN
        SELECT equipo INTO equipoTras FROM Traspasos WHERE numero = :new.numero;
        
        SELECT presupuesto INTO presupuestoN FROM Equipos WHERE nombre = equipoTras;
        IF :new.valor > presupuestoN
            THEN RAISE_APPLICATION_ERROR(-20258,'VALOR DE TRASPASO INVALIDO');
        END IF;
        
        ValorN := presupuestoN - (:new.valor * 0.5);
        UPDATE Equipos SET presupuesto = ValorN WHERE nombre = equipoTras;
        
        SELECT jugador INTO jugadorT FROM Traspasos WHERE numero = :new.numero;
        SELECT equipo INTO equipoOld FROM JugadoEn WHERE jugador = jugadorT AND fechaFinal IS NULL;
        SELECT presupuesto INTO ValorEV FROM Equipos WHERE nombre = equipoTras;
        
        UPDATE Equipos SET presupuesto = (ValorEV + :new.valor) WHERE nombre = equipoTras;
        
        UPDATE JugadoEn SET fechaFinal = sysdate WHERE equipo = equipoOld AND jugador = jugadorT;
        
        INSERT INTO JugadoEn VALUES(equipoTras, jugadorT, sysdate, null);
END Tg_Ad_Traspaso_Simple;
/
CREATE OR REPLACE TRIGGER Tg_Ad_Traspaso_Comp
    BEFORE INSERT ON Compuestas
    FOR EACH ROW
    DECLARE
        presupuestoN NUMBER(38);
        ValorN NUMBER(38);
        equipoOld VARCHAR(50);
        jugadorT NUMBER(38);
        ValorEV NUMBER(38);
        equipoTras VARCHAR(50);
        tipoT VARCHAR(1);
    BEGIN
        SELECT contrato INTO tipoT FROM Traspasos WHERE numero = :new.numero;
        
        IF tipoT = 'P'
            THEN RAISE_APPLICATION_ERROR(-20261,'TIPO DE TRASPASO INADECUADO');
        END IF;
        
        
        SELECT equipo INTO equipoTras FROM Traspasos WHERE numero = :new.numero;
        SELECT jugador INTO jugadorT FROM Traspasos WHERE numero = :new.numero;
        SELECT equipo INTO equipoOld FROM JugadoEn WHERE jugador = jugadorT AND fechaFinal IS NULL;
        
        IF :new.valor IS NOT NULL
        THEN
            SELECT presupuesto INTO presupuestoN FROM Equipos WHERE nombre = equipoTras;
            IF :new.valor > presupuestoN
                THEN RAISE_APPLICATION_ERROR(-20258,'VALOR DE TRASPASO INVALIDO');
            END IF;
        
            ValorN := presupuestoN - (:new.valor * 0.5);
            UPDATE Equipos SET presupuesto = ValorN WHERE nombre = equipoTras;
            
            SELECT presupuesto INTO ValorEV FROM Equipos WHERE nombre = equipoTras;
        
            UPDATE Equipos SET presupuesto = (ValorEV + :new.valor) WHERE nombre = equipoTras;
        
        END IF;
    
        UPDATE JugadoEn SET fechaFinal = sysdate WHERE equipo = equipoOld AND jugador = jugadorT;
        
        INSERT INTO JugadoEn VALUES(equipoTras, jugadorT, sysdate, null);
        
END Tg_Ad_Traspaso_Comp;
/
--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Traspaso
    BEFORE UPDATE ON Traspasos
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20258,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Traspaso;
/
CREATE OR REPLACE TRIGGER Tg_Mo_Compuestas
    BEFORE UPDATE ON Compuestas
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20260,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Compuestas;
/
CREATE OR REPLACE TRIGGER Tg_Mo_Simples
    BEFORE UPDATE ON Simples
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20261,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Simples;
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Traspaso
	BEFORE DELETE ON Traspasos
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20262,'NO SE PUEDE ELIMINAR UN Traspaso');
END Tg_El_Traspaso;
/
CREATE OR REPLACE TRIGGER Tg_El_Compuestas
	BEFORE DELETE ON Compuestas
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20264,'NO SE PUEDE ELIMINAR UN Traspaso');
END Tg_El_Traspaso;
/
CREATE OR REPLACE TRIGGER Tg_El_Simples
	BEFORE DELETE ON Simples
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20263,'NO SE PUEDE ELIMINAR UN Traspaso');
END Tg_El_Traspaso;