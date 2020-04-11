/*---------------------------------Mantener Jugador---------------------------------*/
/*Disparadores*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Jugador
    BEFORE INSERT ON Jugadores
    FOR EACH ROW
    DECLARE
        Cedula_C NUMBER(10);
    BEGIN
        SELECT Count(*)  INTO Cedula_C FROM Arbitros WHERE cedula = :new.cedula;
        IF (Cedula_C > 0)
            THEN RAISE_APPLICATION_ERROR(-20201,'LA CEDULA INGRESADA ESTA ASOCIADA A UN ARBITRO');
        END IF;
        IF (:new.precio is NULL)
            THEN :new.precio := 0;
        END IF;
        IF (:new.lesion is NULL)
            THEN :new.lesion := 0;
        END IF;
END Tg_Ad_Jugador;

--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_PersonasNaturales
    BEFORE UPDATE ON PersonasNaturales
    FOR EACH ROW
    BEGIN
        IF (:old.primerNombre <> :new.primerNombre) OR  (:old.primerApellido <> :new.primerApellido) 
            OR (:old.cedula <> :new.cedula) OR (:old.nacionalidad <> :new.nacionalidad) 
            OR (:old.fechaNacimiento <> :new.fechaNacimiento) OR (:new.rh <> :old.rh) OR (:new.sangre <> :old.sangre)
		THEN
			RAISE_APPLICATION_ERROR(-20202,'ACTUALIZACION NO PERMITIDA');
	    END IF; 
END Tg_Mo_PersonasNaturales;

--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Jugadores
	BEFORE DELETE ON Jugadores
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20203,'NO SE PUEDE ELIMINAR UN JUGADOR');
END Tg_El_Jugadores;


/*---------------------------------Mantener Plantilla---------------------------------*/
/*Disparadores*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Convocado
    BEFORE INSERT ON Convocados
    FOR EACH ROW
    DECLARE
        Convocados_T NUMBER(10);
        Convocados_S NUMBER(10);
        Convocados_PO NUMBER(10);
    BEGIN
        SELECT Count(*)  INTO Convocados_T 
        FROM Convocados 
        WHERE :new.plantillaEquipo = plantillaEquipo AND :new.plantillaPartido = plantillaPartido AND titular = 1;
        
        SELECT Count(*)  INTO Convocados_S 
        FROM Convocados 
        WHERE :new.plantillaEquipo = plantillaEquipo AND :new.plantillaPartido = plantillaPartido AND titular = 0;
        
        SELECT Count(*)  INTO Convocados_PO 
        FROM Convocados 
        WHERE :new.plantillaEquipo = plantillaEquipo AND :new.plantillaPartido = plantillaPartido AND titular = 1 AND posicion = 'POR';
        
        IF (:new.titular = 1 AND Convocados_T >= 11)
            THEN RAISE_APPLICATION_ERROR(-20204,'CAPACIDAD DE JUGADORES TITULARES ALCANZADA');
        END IF;
        
        IF (:new.titular = 0 AND Convocados_S >= 7)
            THEN RAISE_APPLICATION_ERROR(-20205,'CAPACIDAD DE JUGADORES SUPLENTES ALCANZADA');
        END IF;
        
        IF (Convocados_PO >= 1 AND :new.posicion = 'POR')
            THEN RAISE_APPLICATION_ERROR(-20206,'CAPACIDAD DE PORTEROS TITULARES ALCANZADA');
        END IF;
END Tg_Ad_Convocado;

--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Plantilla
    BEFORE UPDATE ON Plantillas
    FOR EACH ROW
    BEGIN
        IF (:old.equipo <> :new.equipo) OR  (:old.partido <> :new.partido)
		THEN
			RAISE_APPLICATION_ERROR(-20206,'ACTUALIZACION NO PERMITIDA');
	    END IF; 
END Tg_Mo_Plantilla;


/*---------------------------------Mantener Equipo---------------------------------*/
/*Disparadores*/ 
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Equipo
    BEFORE INSERT ON Equipos
    FOR EACH ROW
    BEGIN
        IF (:new.pais is NULL)
            THEN :new.pais := 'Colombia';
        END IF;
        IF (:new.apodo is NULL)
            THEN :new.apodo := (:new.nombre || ' De ' || :new.pais);
        END IF;
END Tg_Ad_Equipo;

--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Equipo
    BEFORE UPDATE ON Equipos
    FOR EACH ROW
    BEGIN
        IF (:old.nombre <> :new.nombre) OR (:old.pais <> :new.pais) OR (:old.fechaFundacion <> :new.fechaFundacion)
            OR (:old.ciudad <> :new.ciudad)
		THEN
			RAISE_APPLICATION_ERROR(-20207,'ACTUALIZACION NO PERMITIDA');
	    END IF; 
END Tg_Mo_Equipo;

--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Equipos
	BEFORE DELETE ON Equipos
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20208,'NO SE PUEDE ELIMINAR UN EQUIPO');
END Tg_El_Equipos;


/*---------------------------------Mantener Estadio---------------------------------*/
/*Disparadores*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Estadio
    BEFORE INSERT ON Estadios
    FOR EACH ROW
    BEGIN
        IF (:new.pais is NULL)
            THEN :new.pais := 'Colombia';
        END IF;
        IF (:new.inauguracion is NULL)
            THEN :new.inauguracion := SYSDATE();
        END IF;
END Tg_Ad_Estadio;

--Modificar capacidad y nombre
CREATE OR REPLACE TRIGGER Tg_Mo_Estadio
    BEFORE UPDATE ON Estadios
    FOR EACH ROW
    BEGIN
        IF (:old.pais <> :new.pais) OR (:old.ubicacion <> :new.ubicacion) OR (:old.inauguracion <> :new.inauguracion)
           OR (:old.nombre <> :new.nombre)
		THEN RAISE_APPLICATION_ERROR(-20209,'ACTUALIZACION NO PERMITIDA');
	    END IF; 
END Tg_Mo_Estadio;


/*---------------------------------Registrar Partido---------------------------------*/
/*Disparadores*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Partido
    BEFORE INSERT ON Partidos
    FOR EACH ROW
    BEGIN
        IF (:new.partidoFecha > (SYSDATE() + 365))
            THEN RAISE_APPLICATION_ERROR(-20210,'FECHA SUPERIOR A UN AÑO');
        END IF;
END Tg_Ad_Partido;


INSERT INTO Partidos (partidoFecha, marcadorFinal, estadio)
VALUES (TO_DATE('25-01-2022 22:00','DD-MM-YYYY HH24:MI'), '1-2', 'Estadio Nemesio Camacho El Campin');

--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Partido
    BEFORE UPDATE ON Partidos
    FOR EACH ROW
    BEGIN
        IF (:old.marcadorFinal is NOT NULL)
    		THEN RAISE_APPLICATION_ERROR(-20211,'ACTUALIZACION NO PERMITIDA, IMPOSBILE CAMBIAR MARCADOR');
	    END IF; 
END Tg_Mo_Partido;

--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Partido
	BEFORE DELETE ON Partidos
	FOR EACH ROW
	BEGIN
        IF (:old.marcadorFinal is NOT NULL)
        	THEN RAISE_APPLICATION_ERROR(-20211,'ELIMINACION NO PERMITIDA');
	    END IF; 
END Tg_El_Partido;


/*---------------------------------Registrar Partido---------------------------------*/
/*Disparadores*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Arbitro
    BEFORE INSERT ON Arbitros
    FOR EACH ROW
    DECLARE
        Cedula_C NUMBER(10);
    BEGIN
        SELECT Count(*)  INTO Cedula_C FROM Jugadores WHERE cedula = :new.cedula;
        IF (Cedula_C > 0)
            THEN RAISE_APPLICATION_ERROR(-20212,'LA CEDULA INGRESADA ESTA ASOCIADA A UN JUGADOR');
        END IF;
        IF (:new.puntuacionArbitraje is NULL)
            THEN :new.puntuacionArbitraje := 3;
        END IF;
        IF (:new.posicion is NULL)
            THEN :new.posicion := 'ARC';
        END IF;
END Tg_Ad_Arbitro;

--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Arbitro
    BEFORE UPDATE ON Arbitros
    FOR EACH ROW
    BEGIN
        IF (:old.cedula <> :new.cedula) OR (:old.fechaInicio <> :new.fechaInicio)
            THEN RAISE_APPLICATION_ERROR(-20213,'ACTUALIZACION NO PERMITIDA');
        END IF;
        IF (:old.fechaFinal is NOT NULL AND :old.fechaFinal <> :new.fechaFinal)
    		THEN RAISE_APPLICATION_ERROR(-20214,'ACTUALIZACION NO PERMITIDA');
	    END IF;
        :new.puntuacionArbitraje := FLOOR((:new.puntuacionArbitraje + :old.puntuacionArbitraje)/2);
END Tg_Mo_Arbitro;