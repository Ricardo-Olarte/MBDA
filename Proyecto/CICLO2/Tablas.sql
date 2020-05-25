/*Tablas*/
--Equipos
ALTER TABLE Equipos
ADD descenso VARCHAR(1) default null;
--------
--Fisioterapeutas--
CREATE TABLE Fisioterapeutas(
cedula NUMBER(10) NOT NULL,
disciplina VARCHAR(2) NOT NULL,
salario NUMBER(10) NOT NULL,
equipo VARCHAR(50) NOT NULL
);

--Terapias--
CREATE TABLE Terapias(
jugador NUMBER(10) NOT NULL,
fisioterapeuta NUMBER(10) NOT NULL,
fecha DATE NOT NULL,
duracion NUMBER(10) NOT NULL
);

--Presidente--
CREATE TABLE Presidentes(
cedula NUMBER(10) NOT NULL,
fechaI DATE NOT NULL,
fechaF DATE,
vecesElecto NUMBER(2),
equipo VARCHAR(50) NOT NULL
);

--DirectoresTecnicos--
CREATE TABLE DirectoresTecnicos(
cedula NUMBER(10) NOT NULL,
fechaInicio DATE NOT NULL,
fechaFinal DATE,
sueldo NUMBER(10) NOT NULL,
equipo VARCHAR(50) NOT NULL
);

--Contratos--
CREATE TABLE Contratos(
presidente NUMBER(10) NOT NULL,
directorTecnico NUMBER(10) NOT NULL,
fechaInicio DATE NOT NULL,
fechaFinal DATE NOT NULL
);

--Descenso--
CREATE TABLE Descensos(
liga VARCHAR(1) NOT NULL
);

--Traspasos--
CREATE TABLE Traspasos(
numero NUMBER(5) NOT NULL,
contrato VARCHAR(1) NOT NULL,
jugador NUMBER(10) NOT NULL
);

--Compuestas--
CREATE TABLE Compuestas(
numero NUMBER(5) NOT NULL,
jugadorCambio NUMBER(10) NOT NULL,
valor NUMBER(10)
);

--Simples--
CREATE TABLE Simples(
numero NUMBER(5) NOT NULL,
valor NUMBER(10) NOT NULL
);