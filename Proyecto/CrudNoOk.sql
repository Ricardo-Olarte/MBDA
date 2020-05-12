/*-------------------PC_PERSONASNATURALES-------------------*/
begin
    PC_PERSONASNATURALES.AD_Jugador(383045219, 10, 'EDD', 32424343);
end;
/
begin
    PC_PERSONASNATURALES.AD_Arbitro(8078421943, TO_DATE('1979-09-05', 'YYYY-MM-DD'), null);
end;
/
begin
    PC_PERSONASNATURALES.EL_Jugador(2807185850);
end;
/
begin
    PC_PERSONASNATURALES.EL_Arbitro(1193937102);
end;
/
/*-------------------PC_PLANTILLA-------------------*/
begin
    PC_PLANTILLA.AD_Convocado('Deportivo Pasto', TO_DATE('25-01-2020 22:00', 'DD-MM-YYYY HH24:MI'), 6575911454, 1, 'MC');
end;
/
begin
    PC_PLANTILLA.AD_Plantilla('4-3-1-2', 'América', TO_DATE('25-09-2020 20:00','DD-MM-YYYY HH24:MI'));
end;
/
/*-------------------PC_EQUIPO-------------------*/
begin
    PC_EQUIPO.EL_Equipo('Sayayines FC');
end;
/
/*-------------------PC_PARTIDO-------------------*/
begin
    PC_PARTIDO.AD_Partido(TO_DATE('24-08-2022 14:00','DD-MM-YYYY HH24:MI'), '02-02', 'Santiago Bernabeu');    
end;
/
begin
    PC_PARTIDO.EL_Partido(TO_DATE('24-01-2020 14:00','DD-MM-YYYY HH24:MI'));
end;
/
/*-------------------PC_EVENTO-------------------*/
begin
    PC_EVENTO.EL_Evento(14, 758865285, TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'));
end;
/
begin
    PC_EVENTO.EL_Disparo(14, 758865285, TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'));
end;
/
begin
    PC_EVENTO.EL_Amonestacion(86, 3848434383, TO_DATE('29-01-2020 14:00', 'DD-MM-YYYY HH24:MI'));
end;
/
begin
    PC_EVENTO.EL_Pase(34, 8078421943, TO_DATE('08-03-2020 14:00','DD-MM-YYYY HH24:MI'));
end;
/
begin
    PC_EVENTO.EL_Atajada(77, 7582069659, TO_DATE('24-01-2020 14:00', 'DD-MM-YYYY HH24:MI'));
end;