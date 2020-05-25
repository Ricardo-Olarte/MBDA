/*Primarias*/
ALTER TABLE Fisioterapeutas ADD CONSTRAINT PK_Fisioterapeutas
PRIMARY KEY (cedula);

ALTER TABLE Presidentes ADD CONSTRAINT PK_Presidentes
PRIMARY KEY (cedula);

ALTER TABLE DirectoresTecnicos ADD CONSTRAINT PK_DirectoresTecnicos
PRIMARY KEY (cedula);

ALTER TABLE Contratos ADD CONSTRAINT PK_Contratos 
PRIMARY KEY(presidente, directorTecnico);

ALTER TABLE Terapias ADD CONSTRAINT PK_Terapias
PRIMARY KEY(jugador, fisioterapeuta, fecha);


ALTER TABLE Descensos ADD CONSTRAINT PK_Descensos
PRIMARY KEY (liga);

ALTER TABLE Traspasos ADD CONSTRAINT PK_Traspasos
PRIMARY KEY(numero);

ALTER TABLE Compuestas ADD CONSTRAINT PK_Compuestas
PRIMARY KEY(numero);

ALTER TABLE Simples ADD CONSTRAINT PK_Simples
PRIMARY KEY(numero);