/*PoblarNoOK*/
--Se Prueba con CHK_Tacertado-- 
INSERT INTO Pases(jugador, partido, totalPartido, efectividadAcierto, gol)
VALUES (5037595516, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 47, 120, 0);

--Se Prueba con CHK_Tcomentarios--
INSERT INTO Amonestaciones(jugador, fecha, tarjeta, comentarios, arbitro, partido)
VALUES (5037595516, TO_DATE('24-01-2020 21:34','DD-MM-YYYY HH24:MI'), 'A', 'Falta Simple', 8926719881, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

--Se Prueba con CHK_Tcorreo--
INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Cristiano', 'Ronaldo', 123456789, 'cristianocristiano', 'famisanar', 'Colombiana', TO_DATE('17-May-1987','DD-MM-YYYY'), '+', 'A');

--Se Prueba con CHK_Tformacion--
INSERT INTO Plantillas(titular, formacion, posicion, equipo, jugador, partido)
VALUES (1, '5-5-5-5', 'POR', 'Deportivo Pereira', 5037595516,TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

--Se Prueba con CHK_TposA--
INSERT INTO Arbitros(cedula, posicion, fechaInicio, fechaFinal, puntuacionArbitraje, partido)
VALUES (4273190480, 'EXD',TO_DATE('04-Feb-2016','DD-MM-YYYY'), null, 3, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

--Se Prueba con CHK_TposJ--
INSERT INTO Jugadores(cedula, dorsal, posicion,  precio, lesion, salario)
VALUES (4273190480, 14, 'MCO', 100000000, 0, 6000000);

--Se Prueba con CHK_Tpuntaje--
INSERT INTO Arbitros(cedula, posicion, fechaInicio, fechaFinal, puntuacionArbitraje, partido)
VALUES (4273190480, 'ARC',TO_DATE('04-Feb-2016','DD-MM-YYYY'), null, 10, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

--Se Prueba con CHK_Ttarjeta--
INSERT INTO Amonestaciones(jugador, fecha, tarjeta, comentarios, arbitro, partido)
VALUES (5037595516, TO_DATE('24-01-2020 21:34','DD-MM-YYYY HH24:MI'), 'T', 'Falta no intencional', 8926719881, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'));

--Se Prueba con CHK_Ttiempo--
INSERT INTO Atajadas(jugador, partido, tiempo, paradas)
VALUES (5037595516, TO_DATE('24-01-2020 20:00','DD-MM-YYYY HH24:MI'), 94, -40);

--Se Prueba con CHK_Trh--
INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Cristiano', 'Ronaldo', 123456789, null, 'famisanar', 'Colombiana', TO_DATE('17-May-1987','DD-MM-YYYY'), '?', 'A');

--Se Prueba con CHK_Tsangre--
INSERT INTO PersonasNaturales(primerNombre, primerApellido, cedula, correo, eps, nacionalidad, fechaNacimiento, rh, sangre)
VALUES ('Cristiano', 'Ronaldo', 123456789, null, 'famisanar', 'Colombiana', TO_DATE('17-May-1987','DD-MM-YYYY'), '+', 'T');
