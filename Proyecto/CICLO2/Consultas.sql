/*Consultas Opertivas*/
/*Consultar los jugadores que tuvieron lesiones los ultimo seis meses*/
SELECT primerNombre, primerApellido, lesion
FROM Jugadores, PersonasNaturales
WHERE Jugadores.cedula = PersonasNaturales.cedula
	  AND lesion = 1;
	  
/*Consultar las transacciones de mi equipo*/
--Borussia Dortmund
SELECT fecha, jugador, equipo, valor
FROM Traspasos, Compuestas
WHERE equipo = &Equipo AND Traspasos.numero = Compuestas.numero

SELECT fecha, jugador, equipo, valor
FROM Traspasos, Simples
WHERE equipo = &Equipo AND Traspasos.numero = Simples.numero