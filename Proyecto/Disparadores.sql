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
/
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
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Jugadores
	BEFORE DELETE ON Jugadores
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20203,'NO SE PUEDE ELIMINAR UN JUGADOR');
END Tg_El_Jugadores;
/

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
        
        IF (Convocados_PO >=1 AND :new.posicion = 'POR' AND :new.titular = 1)
            THEN RAISE_APPLICATION_ERROR(-20206,'CAPACIDAD DE PORTEROS TITULARES ALCANZADA');
        END IF;
END Tg_Ad_Convocado;
/
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
/

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
/
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
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Equipos
	BEFORE DELETE ON Equipos
	FOR EACH ROW
	BEGIN
		RAISE_APPLICATION_ERROR(-20208,'NO SE PUEDE ELIMINAR UN EQUIPO');
END Tg_El_Equipos;

/
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
/
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
/

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
/
--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Partido
    BEFORE UPDATE ON Partidos
    FOR EACH ROW
    BEGIN
        IF (:old.marcadorFinal IS NOT NULL AND :old.Estadio IS NULL)
    		THEN RAISE_APPLICATION_ERROR(-20211,'ACTUALIZACION NO PERMITIDA, IMPOSBILE CAMBIAR MARCADOR');
	    END IF; 
END Tg_Mo_Partido;
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Partido
	BEFORE DELETE ON Partidos
	FOR EACH ROW
	BEGIN
        IF (:old.marcadorFinal is NOT NULL)
        	THEN RAISE_APPLICATION_ERROR(-20211,'ELIMINACION NO PERMITIDA');
	    END IF; 
END Tg_El_Partido;
/

/*---------------------------------Registrar Arbitro---------------------------------*/
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
/
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
/

/*---------------------------------Registrar Evento---------------------------------*/
--Adicionar
CREATE OR REPLACE TRIGGER Tg_Ad_Disparos
    BEFORE INSERT ON Disparos
    FOR EACH ROW
    DECLARE
        FechaP DATE;
        Resultado VARCHAR(10);
        RLocal VARCHAR(10);
        RVis VARCHAR(10);
        TotalL NUMBER(10);
        TotalV NUMBER(10);
        TotalD NUMBER(10);
    BEGIN
        SELECT partido INTO FechaP 
        FROM Eventos 
        WHERE fecha = :new.fecha AND tiempo = :new.tiempo AND jugador = :new.jugador;
        
        SELECT marcadorFinal INTO Resultado 
        FROM Partidos 
        WHERE partidoFecha = FechaP;
        
        RLocal := SUBSTR(Resultado,1,2);
        RLocal := SUBSTR(Resultado,1,2);
        RVis := SUBSTR(Resultado,4,2);
        TotalL := TO_NUMBER(RLocal, '99');
        TotalV := TO_NUMBER(RVis, '99');
        
        
        SELECT Count(*) INTO TotalD 
        FROM Disparos, Eventos
        WHERE Eventos.partido = FechaP AND Disparos.fecha = Eventos.fecha AND Disparos.tiempo = Eventos.tiempo AND Disparos.Jugador = Eventos.Jugador
            AND Disparos.acertadoGol = 1;
        
        IF (TotalL + TotalV)  = TotalD
            THEN RAISE_APPLICATION_ERROR(-20215,'YA SE HAN REGISTRADO TODOS LOS GOLES');
        END IF;
        
END Tg_Ad_Disparos;

/
CREATE OR REPLACE TRIGGER Tg_Ad_Eventos
    BEFORE INSERT ON Eventos
    FOR EACH ROW
    DECLARE
        Val NUMBER;
    BEGIN
        SELECT count(*) INTO Val FROM Partidos WHERE partidoFecha = :new.partido AND marcadorFinal is null;
        IF  Val >= 1
            THEN RAISE_APPLICATION_ERROR(-20216,'EL PARTIDO AUN NO HA PASADO');
        END IF;
END Tg_Ad_Eventos;

/
CREATE OR REPLACE TRIGGER Tg_Ad_Amonestacion
    BEFORE INSERT ON Amonestaciones
    FOR EACH ROW
    DECLARE
        Val NUMBER;
        Fec DATE;
    BEGIN
        SELECT partido INTO Fec FROM Eventos WHERE fecha = :new.fecha AND tiempo = :new.tiempo AND jugador = :new.jugador;
        SELECT count(*) INTO Val FROM PitadosPor WHERE partido = Fec AND arbitro = :new.arbitro;
        IF  Val = 0
            THEN RAISE_APPLICATION_ERROR(-20217,'EL ARBITRO NO ES EL CORRESPONDIENTE');
        END IF;
END Tg_Ad_Amonestacion;

/
CREATE OR REPLACE TRIGGER Tg_Ad_Pase
    BEFORE INSERT ON Pases
    FOR EACH ROW
    DECLARE
        Pas NUMBER;
        Dis NUMBER;
        FechaP DATE;
    BEGIN
        SELECT partido INTO FechaP 
        FROM Eventos 
        WHERE fecha = :new.fecha AND tiempo = :new.tiempo AND jugador = :new.jugador;
        
        SELECT Count(*) INTO Dis 
        FROM Disparos, Eventos
        WHERE Eventos.partido = FechaP AND Disparos.fecha = Eventos.fecha AND Disparos.tiempo = Eventos.tiempo AND Disparos.Jugador = Eventos.Jugador
            AND Disparos.acertadoGol = 1;
        
        SELECT Count(*) INTO Pas 
        FROM Pases, Eventos
        WHERE Eventos.partido = FechaP AND Pases.fecha = Eventos.fecha AND Pases.tiempo = Eventos.tiempo AND Pases.Jugador = Eventos.Jugador
            AND Pases.gol = 1;
            
        IF  Dis = Pas AND :new.gol = 1
            THEN RAISE_APPLICATION_ERROR(-20218,'EL TOTAL MAXIMO ASISTENCIAS YA HA SIDO REGISTRADO');
        END IF;
END Tg_Ad_Pase;

/
CREATE OR REPLACE TRIGGER Tg_Ad_Atajada
    BEFORE INSERT ON Atajadas
    FOR EACH ROW
    DECLARE
        Pos NUMBER;
        FechaP DATE;
    BEGIN
        SELECT partido INTO FechaP 
        FROM Eventos 
        WHERE fecha = :new.fecha AND tiempo = :new.tiempo AND jugador = :new.jugador;
        
        SELECT Count(*) INTO Pos FROM Convocados WHERE jugador = :new.jugador AND plantillaPartido = FechaP AND posicion = 'POR';
    
        IF  Pos = 0
            THEN RAISE_APPLICATION_ERROR(-20219,'UNA ATAJADA NO PUEDE SER DE ALGUIEN QUE NO SEA PORTERO');
        END IF;
END Tg_Ad_Atajada;
/
--Modificar
CREATE OR REPLACE TRIGGER Tg_Mo_Evento
    BEFORE UPDATE ON Eventos
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20220,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Evento;
/
CREATE OR REPLACE TRIGGER Tg_Mo_Amonestacion
    BEFORE UPDATE ON Amonestaciones
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20221,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Amonestacion;
/
CREATE OR REPLACE TRIGGER Tg_Mo_Atajada
    BEFORE UPDATE ON Atajadas
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20222,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Atajada;
/
CREATE OR REPLACE TRIGGER Tg_Mo_Pase
    BEFORE UPDATE ON Pases
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20222,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Pase;
/
CREATE OR REPLACE TRIGGER Tg_Mo_Disparo
    BEFORE UPDATE ON Disparos
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20222,'ACTUALIZACION NO PERMITIDA');
END Tg_Mo_Disparo;
/
--Eliminar
CREATE OR REPLACE TRIGGER Tg_El_Evento
    BEFORE DELETE ON Eventos
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20223,'NO SE PERMITE BORRAR');
END Tg_El_Evento;
/
CREATE OR REPLACE TRIGGER Tg_El_Amonestacion
    BEFORE DELETE ON Amonestaciones
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20224,'NO SE PERMITE BORRAR');
END Tg_El_Amonestacion;
/
CREATE OR REPLACE TRIGGER Tg_El_Atajada
    BEFORE DELETE ON Atajadas
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20225,'NO SE PERMITE BORRAR');
END Tg_El_Atajada;
/
CREATE OR REPLACE TRIGGER Tg_El_Pase
    BEFORE DELETE ON Pases
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20226,'NO SE PERMITE BORRAR');
END Tg_El_Pase;
/
CREATE OR REPLACE TRIGGER Tg_El_Disparo
    BEFORE DELETE ON Disparos
    FOR EACH ROW
    BEGIN
        RAISE_APPLICATION_ERROR(-20227,'NO SE PERMITE BORRAR');
END Tg_El_Disparo;