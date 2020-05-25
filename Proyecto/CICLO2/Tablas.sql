/*Tablas*/
--PersonasNaturales--
CREATE TABLE PersonasNaturales(
primerNombre VARCHAR(20) NOT NULL,
primerApellido VARCHAR(20) NOT NULL,
cedula NUMBER(10) NOT NULL,
correo VARCHAR(60),
eps VARCHAR(50) NOT NULL,
nacionalidad VARCHAR(20),
fechaNacimiento DATE NOT NULL,
rh CHAR(1)NOT NULL,
sangre VARCHAR(2) NOT NULL
);

--Celulares--
CREATE TABLE Celulares(
personaNatural NUMBER(10) NOT NULL,
celular NUMBER(10) NOT NULL
);

--Jugadores--
CREATE TABLE Jugadores(
cedula NUMBER(10) NOT NULL,
dorsal NUMBER(10) NOT NULL,
posicion VARCHAR(3) NOT NULL,
precio VARCHAR(10) NOT NULL,
lesion NUMBER(1) NOT NULL,
salario NUMBER(10) NOT NULL
);

--Equipos--
CREATE TABLE Equipos(
nombre VARCHAR(50) NOT NULL,
pais VARCHAR(10) NOT NULL,
presupuesto NUMBER(20) NOT NULL,
fechaFundacion DATE NOT NULL,
ciudad VARCHAR(30) NOT NULL,
apodo VARCHAR(30) NOT NULL,
estadio VARCHAR(50)
);
/*Equipos*/
ALTER TABLE Equipos
ADD descenso VARCHAR(1) default null;

--JugadoEn--
CREATE TABLE JugadoEn(
equipo VARCHAR(50) NOT NULL,
jugador NUMBER(10) NOT NULL,
fechaInicial DATE NOT NULL,
fechaFinal DATE
);
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
equipo VARCHAR(50) NOT NULL,
vecesElecto NUMBER(10) NOT NULL
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
jugador NUMBER(10) NOT NULL,
valor NUMBER(10),
);

--Compuestas--
CREATE TABLE Compuestas(
numero NUMBER(5) NOT NULL,
jugadorCambio NUMBER(10) NOT NULL
);

--Simples--
CREATE TABLE Simples(
numero NUMBER(5) NOT NULL
);