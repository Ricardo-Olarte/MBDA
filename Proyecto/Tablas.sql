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

--Arbitros--
CREATE TABLE Arbitros(
cedula NUMBER(10) NOT NULL,
posicion VARCHAR(3) NOT NULL,
fechaInicio DATE NOT NULL,
fechaFinal DATE,
puntuacionArbitraje NUMBER(1) NOT NULL
);

--PitadosPor--
CREATE TABLE PitadosPor(
arbitro NUMBER(10) NOT NULL,
partido DATE NOT NULL
);

--Partidos--
CREATE TABLE Partidos(
partidoFecha DATE NOT NULL,
marcadorFinal VARCHAR(10),
estadio VARCHAR(50) NOT NULL
);

--Encuentros--
CREATE TABLE Encuentros(
equipo1 VARCHAR(50) NOT NULL,
equipo2 VARCHAR(50) NOT NULL,
partido DATE NOT NULL
);

--Equipos--
CREATE TABLE Equipos(
nombre VARCHAR(50) NOT NULL,
pais VARCHAR(10) NOT NULL,
presupuesto NUMBER(20) NOT NULL,
fechaFundacion DATE NOT NULL,
ciudad VARCHAR(30) NOT NULL,
apodo VARCHAR(30) NOT NULL,
estadio VARCHAR(50) NOT NULL
);

--JugadoEn--
CREATE TABLE JugadoEn(
equipo VARCHAR(50) NOT NULL,
jugador NUMBER(10) NOT NULL,
fechaInicial DATE NOT NULL,
fechaFinal DATE
);

--Estadios--
CREATE TABLE Estadios(
capacidad NUMBER(5) NOT NULL,
pais VARCHAR(10) NOT NULL,
ubicacion VARCHAR(50) NOT NULL,
inauguracion DATE NOT NULL,
nombre VARCHAR(50) NOT NULL
);

--Plantillas--
CREATE TABLE Plantillas(
formacion VARCHAR(10) NOT NULL,
equipo VARCHAR(50) NOT NULL,
partido DATE NOT NULL
);

--Convocados--
CREATE TABLE Convocados(
plantillaEquipo VARCHAR(50) NOT NULL,
plantillaPartido DATE NOT NULL,
jugador NUMBER(10) NOT NULL,
titular NUMBER(1) NOT NULL,
posicion VARCHAR(10) NOT NULL
);

--Eventos--
CREATE TABLE Eventos(
fecha DATE NOT NULL,
tiempo NUMBER(3) NOT NULL,
jugador NUMBER(10) NOT NULL,
partido DATE NOT NULL
);

--Amonestaciones--
CREATE TABLE Amonestaciones(
fecha DATE NOT NULL,
tiempo NUMBER(3) NOT NULL,
jugador NUMBER(10) NOT NULL,
tarjeta CHAR(1) NOT NULL,
comentarios VARCHAR(20) NOT NULL,
arbitro NUMBER(10) NOT NULL
);

--Atajadas--
CREATE TABLE Atajadas(
fecha DATE NOT NULL,
tiempo NUMBER(3) NOT NULL,
jugador NUMBER(10) NOT NULL,
porteriaEnCero NUMBER(3) NOT NULL,
paradas NUMBER(2) NOT NULL
);

--Pases--
CREATE TABLE Pases(
totalPartido NUMBER(3) NOT NULL,
efectividadAcierto NUMBER(3) NOT NULL,
gol NUMBER(1) NOT NULL,
fecha DATE NOT NULL,
tiempo NUMBER(3) NOT NULL,
jugador NUMBER(10) NOT NULL
);

--Disparos--
CREATE TABLE Disparos(
acertadoGol NUMBER(1) NOT NULL,
distancia NUMBER(2) NOT NULL,
velocidad NUMBER(3) NOT NULL,
fecha DATE NOT NULL,
tiempo NUMBER(3) NOT NULL,
jugador NUMBER(10) NOT NULL
);