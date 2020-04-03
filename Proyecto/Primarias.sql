/*Primarias*/
ALTER TABLE Equipos ADD CONSTRAINT 
PK_Equipos PRIMARY KEY (nombre);

ALTER TABLE Estadios ADD CONSTRAINT 
PK_Estadio PRIMARY KEY (nombre);

ALTER TABLE Plantillas ADD CONSTRAINT 
PK_Plantillas PRIMARY KEY (equipo,jugador,partido);

ALTER TABLE Encuentros ADD CONSTRAINT 
PK_Encuentros PRIMARY KEY (equipo1,equipo2,partido);

ALTER TABLE JugadoEn ADD CONSTRAINT 
PK_JugadoEn PRIMARY KEY (equipo,jugador);

ALTER TABLE PersonasNaturales ADD CONSTRAINT 
PK_PersonasNaturales PRIMARY KEY (cedula);

ALTER TABLE Jugadores ADD CONSTRAINT PK_Jugadores 
PRIMARY KEY (cedula);

ALTER TABLE Atajadas ADD CONSTRAINT PK_Atajadas 
PRIMARY KEY (jugador,partido);

ALTER TABLE Disparos ADD CONSTRAINT PK_Disparo 
PRIMARY KEY (jugador,partido);

ALTER TABLE Celulares ADD CONSTRAINT PK_Celulares 
PRIMARY KEY (personaNatural,celulares);

ALTER TABLE Amonestaciones ADD CONSTRAINT PK_Amonestaciones 
PRIMARY KEY (jugador,fecha);

ALTER TABLE Pases ADD CONSTRAINT PK_Pases 
PRIMARY KEY (jugador,partido);

ALTER TABLE Arbitros ADD CONSTRAINT PK_Arbitros 
PRIMARY KEY (cedula);

ALTER TABLE Partidos ADD CONSTRAINT PK_Partidos 
PRIMARY KEY (partidoFecha);
