/*-------------------PC_PERSONASNATURALES-------------------*/
begin
    PC_PERSONASNATURALES.AD_PersonaNatural('Andres', 'Calderon', 1019151395, 'andres.calderon-o@mail.escuelaing.edu.co', 'Famisanar', 'Colombia', TO_DATE('1999-09-12', 'YYYY-MM-DD'), '+', 'AB');
end;
/
begin
    PC_PERSONASNATURALES.AD_Jugador(9154674122, 10, 'ED', 32424343);
end;
/
begin
    PC_PERSONASNATURALES.AD_Arbitro(8741837681, TO_DATE('1979-09-05', 'YYYY-MM-DD'), null);
end;
/
begin
    PC_PERSONASNATURALES.MO_PersonaNatural(8078421943, 'mateo.cor.amco@gmail.com', 'Famisanar');
end;
/
begin
    PC_PERSONASNATURALES.MO_Arbitro(1619112980, SYSDATE, 5);
end;
/
/*-------------------PC_PLANTILLA-------------------*/
begin
    PC_PLANTILLA.AD_Convocado('Deportivo Pasto', TO_DATE('29-01-2020 16:00','DD-MM-YYYY HH24:MI'), 252183516, 0, 'ED');
end;
/
begin
    PC_PLANTILLA.AD_Plantilla('4-3-1-2', 'América de Cali', TO_DATE('25-09-2020 20:00','DD-MM-YYYY HH24:MI'));
end;
/
begin
    PC_PLANTILLA.MO_Plantilla(TO_DATE('08-02-2020 14:00','DD-MM-YYYY HH24:MI'), 'América de Cali', '4-3-3');
end;
/
/*-------------------PC_EQUIPO-------------------*/
begin
    PC_EQUIPO.AD_Equipo('Sayayines FC',  700000000, TO_DATE('03-Mar-1953','DD-MM-YYYY'), 'Bogota Dc', 'Estadio Atanasio Girardot');
end;
/
begin
    PC_EQUIPO.MO_Equipo('Rionegro', 912939292, 'Las Aguilas', 'Estadio General Santander');
end;
/
/*-------------------PC_ESTADIO-------------------*/
begin
    PC_ESTADIO.AD_Estadio(45687, 'Chia - Cundinamarca', 'FuerzaGinyu Stadium');
end;
/
begin
    PC_ESTADIO.MO_Estadio('Estadio Palogrande', 45000);
end;
/
begin
    PC_ESTADIO.EL_Estadio('FuerzaGinyu Stadium'); 
end;
/
/*-------------------PC_PARTIDO-------------------*/
begin
    PC_PARTIDO.AD_Partido(TO_DATE('21-05-2020 22:00','DD-MM-YYYY HH24:MI'), null, 'Estadio Palogrande');    
end;
/
begin
    PC_PARTIDO.MO_Partido(TO_DATE('21-05-2020 22:00','DD-MM-YYYY HH24:MI'), '00-00');    
end;
/
/*-------------------PC_EVENTO-------------------*/
begin
    PC_EVENTO.AD_Evento(14, 758865285, TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'));
    PC_EVENTO.AD_Evento(24, 7582069659, TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'));
    PC_EVENTO.AD_Evento(34, 8078421943, TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'));
    PC_EVENTO.AD_Evento(44, 7582069659, TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'));
end;
/
begin
    PC_EVENTO.AD_Disparo(0, 43, 54, TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'), 14, 758865285);
end;
/
begin
    PC_EVENTO.AD_Amonestacion(86, 3848434383, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 'A', 'Falta Intencional', 344394667);
end;
/
begin
    PC_EVENTO.AD_Pase(24, 85, 0, 34, 8078421943, TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'));
end;
/
begin
    PC_EVENTO.AD_Atajada(77, 7582069659, TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'), 76, 7);
end;