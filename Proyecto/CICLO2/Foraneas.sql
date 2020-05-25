/*Foraneas*/
ALTER TABLE Fisioterapeutas ADD CONSTRAINT FK_Fisioterapeutas_PersonasNaturales 
FOREIGN KEY (cedula) REFERENCES PersonasNaturales(cedula);

ALTER TABLE Presidentes ADD CONSTRAINT FK_Presidentes_PersonasNaturales 
FOREIGN KEY (cedula) REFERENCES PersonasNaturales(cedula);

ALTER TABLE DirectoresTecnicos ADD CONSTRAINT FK_DirectoresTecnicos_PersonasNaturales 
FOREIGN KEY (cedula) REFERENCES PersonasNaturales(cedula);

ALTER TABLE Terapias ADD CONSTRAINT FK_Terapias_Jugadores 
FOREIGN KEY (jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Terapias ADD CONSTRAINT FK_Terapias_Fisioterapeutas
FOREIGN KEY (fisioterapeuta) REFERENCES Fisioterapeutas(cedula);

ALTER TABLE Contratos ADD CONSTRAINT FK_Contratos_Presidentes
FOREIGN KEY (presidente) REFERENCES Presidentes(cedula);

ALTER TABLE Contratos ADD CONSTRAINT FK_Contratos_DirectoresTecnicos
FOREIGN KEY (directorTecnico) REFERENCES Presidentes(cedula);
--

ALTER TABLE Equipos ADD CONSTRAINT FK_Equipos_Decensos 
FOREIGN KEY (descenso) REFERENCES Descensos(liga);

ALTER TABLE Presidentes ADD CONSTRAINT FK_Presidentes_Equipo 
FOREIGN KEY (equipo) REFERENCES Equipos(nombre);

ALTER TABLE Fisioterapeutas ADD CONSTRAINT FK_Fisioterapeutas_Equipo 
FOREIGN KEY (equipo) REFERENCES Equipos(nombre);

ALTER TABLE DirectoresTecnicos ADD CONSTRAINT FK_DirectoresTecnicos_Equipo 
FOREIGN KEY (equipo) REFERENCES Equipos(nombre);
--
ALTER TABLE Compuestas ADD CONSTRAINT FK_Compuestas_Traspasos 
FOREIGN KEY (numero) REFERENCES Traspasos(numero);

ALTER TABLE Compuestas ADD CONSTRAINT FK_Compuestas_Jugador
FOREIGN KEY (JugadorCambio) REFERENCES Jugadores(cedula);

ALTER TABLE Traspasos ADD CONSTRAINT FK_Traspasos_Jugador
FOREIGN KEY (Jugador) REFERENCES Jugadores(cedula);

ALTER TABLE Simples ADD CONSTRAINT FK_Simples_Traspasos 
FOREIGN KEY (numero) REFERENCES Traspasos(numero);