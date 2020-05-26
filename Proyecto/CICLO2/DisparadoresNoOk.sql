/*---------------------------------Mantener Tecnico---------------------------------*/
--Modificar
UPDATE DirectoresTecnicos SET equipo = 'Real Madrid' WHERE cedula = 2564550983 AND equipo = 'América de Cali';

--Eliminar
DELETE FROM DirectoresTecnicos WHERE cedula = 2564550983;

/*---------------------------------Mantener Fisioterapeuta---------------------------------*/
--Adicionar
INSERT INTO Fisioterapeutas(cedula, salario, equipo)
VALUES (5685525508, 3000000000, 'Real Madrid');

--Modificar
UPDATE Fisioterapeutas SET salario = 12312312 WHERE cedula = 8505837398;

--Eliminar
DELETE FROM Fisioterapeutas WHERE cedula = 8505837398;

/*---------------------------------Registrar traspaso---------------------------------*/
--Adicionar
INSERT INTO Simples(numero, valor)
VALUES(23, 99999999999999999999);

INSERT INTO Compuestas(numero, jugadorCambio, valor)
VALUES(23, 3713228316, 20000000);

--Modificar
UPDATE Traspasos SET fecha = sysdate WHERE numero = 20;
UPDATE Simples SET valor = 1231231231 WHERE numero = 21;
UPDATE Compuestas SET jugadorCambio = 43534534 WHERE numero = 22;

--Eliminar
DELETE FROM Traspasos WHERE numero = 18;
DELETE FROM Simples WHERE numero = 20;
DELETE FROM Compuestas WHERE numero = 24;