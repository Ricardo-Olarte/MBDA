/*Foraneas*/
ALTER TABLE JugadoEn ADD CONSTRAINT FK_JugadoEn_Equipos 
FOREIGN KEY (equipo) REFERENCES Equipos(nombre);

ALTER TABLE JugadoEn ADD CONSTRAINT FK_JugadoEn_Jugador 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Equipos ADD CONSTRAINT FK_Equipos_Estadios 
FOREIGN KEY (estadio) REFERENCES Estadios(nombre);

ALTER TABLE Plantillas ADD CONSTRAINT FK_Plantilla_Equipos 
FOREIGN KEY (equipo) REFERENCES Equipos(nombre);

ALTER TABLE Plantillas ADD CONSTRAINT FK_Plantilla_Jugadores 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Plantillas ADD CONSTRAINT FK_Plantilla_Partido 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);

ALTER TABLE Encuentros ADD CONSTRAINT FK_Encuentros_Equipo1 
FOREIGN KEY (equipo1) REFERENCES Equipos(nombre);

ALTER TABLE Encuentros ADD CONSTRAINT FK_Encuentros_Equipo2 
FOREIGN KEY (equipo2) REFERENCES Equipos(nombre);

ALTER TABLE Encuentros ADD CONSTRAINT FK_Encuentros_Partidos 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);

ALTER TABLE Partidos ADD CONSTRAINT FK_Partidos_Estadios 
FOREIGN KEY (estadio) REFERENCES Estadios(nombre);

ALTER TABLE Jugadores ADD CONSTRAINT FK_Jugadores_PersonasNaturales 
FOREIGN KEY (cedula) REFERENCES PersonasNaturales(cedula);

ALTER TABLE Arbitros ADD CONSTRAINT FK_Arbitros_PersonasNaturales 
FOREIGN KEY (cedula) REFERENCES PersonasNaturales(cedula);

ALTER TABLE Celulares ADD CONSTRAINT FK_Celulares_PersonasNaturales 
FOREIGN KEY (personaNatural) REFERENCES PersonasNaturales(cedula);

ALTER TABLE Atajadas ADD CONSTRAINT FK_Atajadas_Jugadores 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Atajadas ADD CONSTRAINT FK_Atajadas_Partidos 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);

ALTER TABLE Disparos ADD CONSTRAINT FK_Disparos_Jugadores 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Disparos ADD CONSTRAINT FK_Disparos_Partidos 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);

ALTER TABLE Amonestaciones ADD CONSTRAINT FK_Amonestaciones_Jugadores 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Amonestaciones ADD CONSTRAINT FK_Amonestaciones_Arbitro 
FOREIGN KEY (arbitro) REFERENCES Arbitros(cedula);

ALTER TABLE Arbitros ADD CONSTRAINT FK_Arbitros_Partido 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);

ALTER TABLE Pases ADD CONSTRAINT FK_Pases_Jugador 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Pases ADD CONSTRAINT FK_Pases_Partido 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);
