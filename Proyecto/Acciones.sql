/*---------------------------------Mantener Plantilla---------------------------------*/
/*Acciones de referencia*/
ALTER TABLE Convocados DROP CONSTRAINT FK_Convocados_Plantillas;
ALTER TABLE Convocados ADD CONSTRAINT FK_Convocados_Plantillas
FOREIGN KEY (plantillaEquipo, plantillaPartido) REFERENCES Plantillas(equipo, partido) ON DELETE CASCADE;


/*---------------------------------Mantener Estadio---------------------------------*/
/*Acciones de referencia*/
ALTER TABLE Equipos DROP CONSTRAINT FK_Equipos_Estadios;
ALTER TABLE Equipos ADD CONSTRAINT FK_Equipos_Estadios 
FOREIGN KEY (estadio) REFERENCES Estadios(nombre) ON DELETE SET NULL;

ALTER TABLE Partidos DROP CONSTRAINT FK_Partidos_Estadios;
ALTER TABLE Partidos ADD CONSTRAINT FK_Partidos_Estadios 
FOREIGN KEY (estadio) REFERENCES Estadios(nombre) ON DELETE SET NULL;


/*---------------------------------Registrar Partido---------------------------------*/
/*Acciones de referencia*/
ALTER TABLE Plantillas DROP CONSTRAINT FK_Plantilla_Partido;
ALTER TABLE Plantillas ADD CONSTRAINT FK_Plantilla_Partido 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha) ON DELETE CASCADE;

ALTER TABLE Eventos DROP CONSTRAINT FK_Eventos_Partido;
ALTER TABLE Eventos ADD CONSTRAINT FK_Eventos_Partido 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha) ON DELETE CASCADE;

ALTER TABLE PitadosPor DROP CONSTRAINT FK_PitadosPor_Partidos;
ALTER TABLE PitadosPor ADD CONSTRAINT FK_PitadosPor_Partidos
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha) ON DELETE CASCADE;

ALTER TABLE Encuentros DROP CONSTRAINT FK_Encuentros_Partidos;
ALTER TABLE Encuentros ADD CONSTRAINT FK_Encuentros_Partidos 
FOREIGN KEY (partido) REFERENCES Partidos(partidoFecha) ON DELETE CASCADE;
