/*Primarias*/
ALTER TABLE PersonasNaturales ADD CONSTRAINT 
PK_PersonasNaturales PRIMARY KEY (cedula);

ALTER TABLE Celulares ADD CONSTRAINT PK_Celulares 
PRIMARY KEY (personaNatural,celular);

ALTER TABLE Jugadores ADD CONSTRAINT PK_Jugadores 
PRIMARY KEY (cedula);

ALTER TABLE Arbitros ADD CONSTRAINT PK_Arbitros 
PRIMARY KEY (cedula);

ALTER TABLE PitadosPor ADD CONSTRAINT PK_PitadosPor 
PRIMARY KEY (arbitro, partido);

ALTER TABLE Partidos ADD CONSTRAINT PK_Partidos 
PRIMARY KEY (partidoFecha);

ALTER TABLE Encuentros ADD CONSTRAINT PK_Encuentros 
PRIMARY KEY (equipo1,equipo2,partido);

ALTER TABLE Equipos ADD CONSTRAINT PK_Equipos 
PRIMARY KEY (nombre);

ALTER TABLE JugadoEn ADD CONSTRAINT PK_JugadoEn 
PRIMARY KEY (equipo,jugador);

ALTER TABLE Estadios ADD CONSTRAINT PK_Estadio 
PRIMARY KEY (nombre);

ALTER TABLE Plantillas ADD CONSTRAINT PK_Plantillas 
PRIMARY KEY (equipo,partido);

ALTER TABLE Convocados ADD CONSTRAINT PK_Convocados 
PRIMARY KEY (plantillaEquipo,plantillaPartido,jugador);

ALTER TABLE Eventos ADD CONSTRAINT PK_Eventos 
PRIMARY KEY (partido,tiempo,jugador);

ALTER TABLE Amonestaciones ADD CONSTRAINT PK_Amonestaciones 
PRIMARY KEY (partido,tiempo,jugador);

ALTER TABLE Atajadas ADD CONSTRAINT PK_Atajadas 
PRIMARY KEY (partido,tiempo,jugador);

ALTER TABLE Pases ADD CONSTRAINT PK_Pases 
PRIMARY KEY (partido,tiempo,jugador);

ALTER TABLE Disparos ADD CONSTRAINT PK_Disparo 
PRIMARY KEY (partido,tiempo,jugador);

