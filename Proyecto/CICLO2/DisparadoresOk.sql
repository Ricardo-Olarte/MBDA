/*---------------------------------Mantener Tecnico---------------------------------*/
/*Adicionar*/
--SELECT * FROM DIRECTORESTECNICOS
INSERT INTO DirectoresTecnicos(cedula, fechaFinal, sueldo, equipo)
VALUES(7265411315, null, 10000000, 'Alianza Petrolera');

INSERT INTO DirectoresTecnicos(cedula, fechaFinal, sueldo, equipo)
VALUES(2564550983, null, 20000000, 'América de Cali');

INSERT INTO DirectoresTecnicos(cedula, fechaFinal, sueldo, equipo)
VALUES(8865949406, null, 8000000, 'Atlético Bucaramanga');

INSERT INTO DirectoresTecnicos(cedula, fechaFinal, sueldo, equipo)
VALUES(6710397815, null, 30000000, 'Atlético Junior');

INSERT INTO DirectoresTecnicos(cedula, fechaFinal, sueldo, equipo)
VALUES(1447058100, null, 20000000, 'Atletico Nacional');

INSERT INTO DirectoresTecnicos(cedula, fechaFinal, sueldo, equipo)
VALUES(5526736555, null, 100000000, 'Barcelona');

INSERT INTO DirectoresTecnicos(cedula, fechaFinal, sueldo, equipo)
VALUES(1123207259, null, 5000000, 'Boyaca Chico');

INSERT INTO DirectoresTecnicos(cedula, fechaFinal, sueldo, equipo)
VALUES(1506815383, null, 9000000, 'Club Deportivo La Equidad');

INSERT INTO DirectoresTecnicos(cedula, fechaFinal, sueldo, equipo)
VALUES(5787264444, null, 10000000, 'Deportes Tolima');

/*Modificar*/
--SELECT * FROM DIRECTORESTECNICOS
UPDATE DirectoresTecnicos SET fechaInicio = TO_DATE('01/01/2021', 'dd/mm/yyyy'), equipo = 'Real Madrid' WHERE cedula = 7265411315 AND equipo = 'Alianza Petrolera';
UPDATE DirectoresTecnicos SET fechaInicio = TO_DATE('01/04/2021', 'dd/mm/yyyy'), equipo = 'Barcelona' WHERE cedula = 1506815383 AND equipo = 'Club Deportivo La Equidad';

/*---------------------------------Mantener Fisioterapeuta---------------------------------*/
/*Adicionar*/
--SELECT * FROM Fisioterapeutas
INSERT INTO Fisioterapeutas(cedula, salario, equipo)
VALUES (827172540, 10000000, 'Atletico Nacional');

INSERT INTO Fisioterapeutas(cedula, salario, equipo)
VALUES (8215103871, 5000000, 'Club Deportivo La Equidad');

INSERT INTO Fisioterapeutas(cedula, salario, equipo)
VALUES (3637822997, 2000000, 'Boyaca Chico');

INSERT INTO Fisioterapeutas(cedula, salario, equipo)
VALUES (1033789666, 10000000, 'Barcelona');

INSERT INTO Fisioterapeutas(cedula, salario, equipo)
VALUES (8505837398, 3000000, 'Atlético Bucaramanga');

/*---------------------------------Registrar traspaso---------------------------------*/
/*Adicionar*/
/*Traspasos*/
--SELECT * FROM Traspasos
INSERT INTO Traspasos(contrato, jugador, fecha, equipo)
VALUES('V', 7102709293, sysdate, 'Borussia Dortmund');

INSERT INTO Traspasos(contrato, jugador, fecha, equipo)
VALUES('P', 6539566973, sysdate, 'Borussia Dortmund');

INSERT INTO Traspasos(contrato, jugador, fecha, equipo)
VALUES('V', 8995465616, sysdate, 'Borussia Dortmund');

INSERT INTO Traspasos(contrato, jugador, fecha, equipo)
VALUES('P', 6435460657, sysdate, 'Borussia Dortmund');

INSERT INTO Traspasos(contrato, jugador, fecha, equipo)
VALUES('V', 3713228316, sysdate, 'Borussia Dortmund');

/*Simples*/
--SELECT * FROM EQUIPOS
--SELECT * FROM JugadoEn
INSERT INTO Simples(numero, valor)
VALUES(20, 100000000000 );

INSERT INTO Simples(numero, valor)
VALUES(21, 20000000 );

/*Compuestas*/
--SELECT * FROM EQUIPOS
--SELECT * FROM JugadoEn
INSERT INTO Compuestas(numero, jugadorCambio, valor)
VALUES(22, 8995465616, null);

INSERT INTO Compuestas(numero, jugadorCambio, valor)
VALUES(24, 3713228316, 20000000);