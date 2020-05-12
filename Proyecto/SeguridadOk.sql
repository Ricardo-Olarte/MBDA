/*-------------------PA_PRESIDENTE-------------------*/
EXECUTE PA_PRESIDENTE.AD_PersonaNatural('Santiago', 'Calderon', 1019151999, 'satiago.cal@gmaiol.com', 'Famisanar', 'Colombia', TO_DATE('2000-05-13', 'YYYY-MM-DD'), '+', 'O');
/
EXECUTE PA_PRESIDENTE.AD_Jugador(1019151999, 10, 'DC', 324323);
/
EXECUTE PA_PRESIDENTE.MO_PersonaNatural(1019151999, 'santiago.cal@outlook.com', 'Famisanar');
/
EXECUTE PA_PRESIDENTE.AD_Convocado('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 7933126582, 0, 'EI');
/
EXECUTE PA_PRESIDENTE.AD_Plantilla('4-3-1-2', 'Rionegro', TO_DATE('25-09-2020 20:00','DD-MM-YYYY HH24:MI'));
/
EXECUTE PA_PRESIDENTE.MO_Plantilla(TO_DATE('08-02-2020 14:00','DD-MM-YYYY HH24:MI'), 'Rionegro', '4-3-3');
/
EXECUTE PA_PRESIDENTE.AD_Equipo('FEspciales GNY',  284324920, TO_DATE('18-Mar-2000','DD-MM-YYYY'), 'Medellin', 'Estadio Atanasio Girardot');
/
EXECUTE PA_PRESIDENTE.MO_Equipo('Rionegro', 182731891, 'Las Aguilas Doradas', 'Estadio General Santander');
/
EXECUTE PA_PRESIDENTE.AD_Estadio(35687, 'Cajica - Cundinamarca', 'Planeta Sadala');
/
EXECUTE PA_PRESIDENTE.MO_Estadio('Estadio Atanasio Girardot', 45000);
/
EXECUTE PA_PRESIDENTE.EL_Estadio('Planeta Sadala');
/
/*-------------------PA_ORGANIZADOR-------------------*/
EXECUTE PA_ORGANIZADOR.AD_Partido(TO_DATE('29-09-2020 22:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Atanasio Girardot');
/
EXECUTE PA_ORGANIZADOR.MO_Partido(TO_DATE('29-09-2020 22:00','DD-MM-YYYY HH24:MI'), '05-01');
/
EXECUTE PA_ORGANIZADOR.AD_PersonaNatural('Sergio', 'Calderon', 8362739, 'sergio.cal@gmaiol.com', 'Famisanar', 'Colombia', TO_DATE('1974-05-13', 'YYYY-MM-DD'), '+', 'A');
/
EXECUTE PA_ORGANIZADOR.AD_Arbitro(8362739, TO_DATE('1999-09-05', 'YYYY-MM-DD'), null)
/
SELECT PA_ORGANIZADOR.CO_Arbitro(3.4) FROM DUAL;
/
/*-------------------PA_TECNICO-------------------*/
SELECT PA_TECNICO.CO_Jugador_Pases FROM DUAL;
/
SELECT PA_TECNICO.CO_Jugador_Amonestados FROM DUAL;
/
SELECT PA_TECNICO.CO_Partidos('Rionegro') FROM DUAL;
/
/*-------------------PA_PDIMAYOR-------------------*/
SELECT PA_PDIMAYOR.CO_FairPlay FROM DUAL;
/
SELECT PA_PDIMAYOR.CO_MaxGoleadores FROM DUAL;
/
SELECT PA_PDIMAYOR.CO_MaxAsistentes FROM DUAL;
/
SELECT PA_PDIMAYOR.CO_MaxAtajador FROM DUAL;