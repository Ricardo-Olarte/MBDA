--CK_Compuestas_valor
INSERT INTO Compuestas(numero, jugadorCambio, valor)
VALUES(2, 3961805645, 0);

--CK_Simples_valor
INSERT INTO Simples(numero, valor)
VALUES(19, 0);

--CK_Traspasos_contrato
INSERT INTO Traspasos(numero, contrato, jugador, fecha, equipo)
VALUES(40, 'W', 8078421943, sysdate, 'Borussia Dortmund');

--CK_Fisioterapeutas_Disciplina
INSERT INTO Fisioterapeutas(cedula, disciplina, salario, equipo)
VALUES(7931587197, 'MB', 7921589383, 'Atletico Nacional');

--CK_Fisioterapeutas_salario
INSERT INTO Fisioterapeutas(cedula, disciplina, salario, equipo)
VALUES(7931587197, 'LR', 0, 'Atletico Nacional');

--CK_Presidente_vecesElec
INSERT INTO Presidentes(cedula, fechaI, fechaF, vecesElecto, equipo)
VALUES(8369537952, TO_DATE('05/03/2013', 'dd/mm/yyyy'), null, 0, 'Atletico Nacional');

--CK_Descensos_liga
INSERT INTO Descensos (liga) 
VALUES ('E');

--CK_DirectoresTecnicos_sueldo
INSERT INTO DirectoresTecnicos(cedula, fechaInicio, fechaFinal, sueldo, equipo)
VALUES(7931587197, TO_DATE('20/10/2011', 'dd/mm/yyyy'), null, 0, 'Alianza Petrolera');

--CK_Terapias_duracion
INSERT INTO Terapias(jugador, fisioterapeuta, fecha, duracion)
VALUES(8078421943, 7931587197, sysdate, 600 );