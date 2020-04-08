/*Foraneas*/
ALTER TABLE Celulares ADD CONSTRAINT FK_Celulares_PersonasNaturales 
FOREIGN KEY (personaNatural) REFERENCES PersonasNaturales(cedula);

ALTER TABLE Jugadores ADD CONSTRAINT FK_Jugadores_PersonasNaturales 
FOREIGN KEY (cedula) REFERENCES PersonasNaturales(cedula);

ALTER TABLE Arbitros ADD CONSTRAINT FK_Arbitros_PersonasNaturales 
FOREIGN KEY (cedula) REFERENCES PersonasNaturales(cedula);

ALTER TABLE Eventos ADD CONSTRAINT FK_Eventos_Jugador 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Eventos ADD CONSTRAINT FK_Eventos_Partido 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);

ALTER TABLE Equipos ADD CONSTRAINT FK_Equipos_Estadios 
FOREIGN KEY (estadio) REFERENCES Estadios(nombre);

ALTER TABLE JugadoEn ADD CONSTRAINT FK_JugadoEn_Equipos 
FOREIGN KEY (equipo) REFERENCES Equipos(nombre);

ALTER TABLE JugadoEn ADD CONSTRAINT FK_JugadoEn_Jugador 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Partidos ADD CONSTRAINT FK_Partidos_Estadios 
FOREIGN KEY (estadio) REFERENCES Estadios(nombre);

ALTER TABLE PitadosPor ADD CONSTRAINT FK_PitadosPor_Arbitros
FOREIGN KEY (arbitro) REFERENCES Arbitros(cedula);

ALTER TABLE PitadosPor ADD CONSTRAINT FK_PitadosPor_Partidos
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);

ALTER TABLE Encuentros ADD CONSTRAINT FK_Encuentros_Equipo1 
FOREIGN KEY (equipo1) REFERENCES Equipos(nombre);

ALTER TABLE Encuentros ADD CONSTRAINT FK_Encuentros_Equipo2 
FOREIGN KEY (equipo2) REFERENCES Equipos(nombre);

ALTER TABLE Encuentros ADD CONSTRAINT FK_Encuentros_Partidos 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);

ALTER TABLE Plantillas ADD CONSTRAINT FK_Plantilla_Equipos 
FOREIGN KEY (equipo) REFERENCES Equipos(nombre);

ALTER TABLE Plantillas ADD CONSTRAINT FK_Plantilla_Partido 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha);

ALTER TABLE Convocados ADD CONSTRAINT FK_Convocados_Plantillas
FOREIGN KEY (plantillaEquipo, plantillaPartido) REFERENCES Plantillas(equipo, partido);

ALTER TABLE Convocados ADD CONSTRAINT FK_Convocados_Partido 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Atajadas ADD CONSTRAINT FK_Atajadas_Eventos 
FOREIGN KEY (fecha, tiempo) REFERENCES Eventos(fecha, tiempo);

ALTER TABLE Pases ADD CONSTRAINT FK_Pases_Eventos 
FOREIGN KEY (fecha, tiempo) REFERENCES Eventos(fecha, tiempo);

ALTER TABLE Disparos ADD CONSTRAINT FK_Disparos_Eventos 
FOREIGN KEY (fecha, tiempo) REFERENCES Eventos(fecha, tiempo);

ALTER TABLE Amonestaciones ADD CONSTRAINT FK_Amonestaciones_Eventos 
FOREIGN KEY (fecha, tiempo) REFERENCES Eventos(fecha, tiempo);

ALTER TABLE Amonestaciones ADD CONSTRAINT FK_Amonestaciones_Arbitro 
FOREIGN KEY (arbitro) REFERENCES Arbitros(cedula);


