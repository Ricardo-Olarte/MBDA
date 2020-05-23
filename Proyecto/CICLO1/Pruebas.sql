---Presidente
/*
    Como presidente del club Borussia Dortmund soy el encargado registrar mi equipo y el lugar donde jugaremos
    los partidos que nos correspondan como locales para esto utilizaremos nuestro nuevo estadio Signal Iduna Park, que tiene una capacidad
    de 81000 espectadores, y se encuentra ubicado en Chia-Cundinamarca.
*/
    begin 
        PA_PRESIDENTE.AD_Estadio(81000, 'Chia-Cundinamarca', 'Signal Iduna Park');
    end;
    /
   SELECT PA_PRESIDENTE.CO_Estadio FROM DUAL;

/*
    Mi equipo tiene un presupuesto aproximado de 100000000000, fue fundado en 1947 el 12 de Agosto, en la ciduad de chia
*/
    begin 
        PA_PRESIDENTE.AD_Equipo('Borussia Dortmund', 100000000000, TO_DATE('12-Ago-1947','DD-MM-YYYY'), 'Chia', 'Signal Iduna Park');
    end;
    /
   SELECT PA_PRESIDENTE.CO_Equipo FROM DUAL;

/*
    Por una reciente venta el presupuesto de mi equipo a aumentado en un 10% y en los ultimos dias
    los aficionados locales nos comenzaron a llamar Los negriamarillos
*/
    begin 
        PA_PRESIDENTE.MO_Equipo('Borussia Dortmund', 100010000000000, 'Los negriamarillos', 'Signal Iduna Park');
    end;
    /
    SELECT PA_PRESIDENTE.CO_Equipo FROM DUAL;

/*
    Adiconal a eso soy el encargo de registrar los jugadores pertenecientes a mi equipo, de ellos debo ingresar su cedula, nombre, apellido, correo si tiene, la eps, su fecha de nacimiento,
    su rh, su tipo de sangre, su posicion dentro del campo y el salario asignado a cada uno de ellos, 
*/
/*
    Inicialmente ingreso con sus datos personales
*/
     begin
        PA_PRESIDENTE.AD_Jugador('Mario', 'Gtoze', 2651912, 'Mario@dmoz.org', 'Salud Total', 'Alemania', TO_DATE('1975-02-22', 'YYYY-MM-DD'), '+', 'A', 10, 'DC', 789798798);
        PA_PRESIDENTE.AD_Jugador('Erling', 'Haaland', 498461368, 'Erling@dmoz.org', 'Salud Total', 'Noruega', TO_DATE('2000-02-23', 'YYYY-MM-DD'), '+', 'A', 17, 'DC', 6544655);
        PA_PRESIDENTE.AD_Jugador('Marco', 'Reus', 654321588, 'Marco@dmoz.org', 'Salud Total', 'Bulgaria', TO_DATE('1975-02-12', 'YYYY-MM-DD'), '+', 'A', 11, 'MP', 321321231);
        PA_PRESIDENTE.AD_Jugador('Jadon', 'Sancho', 3215164981, 'Jadon@dmoz.org', 'Salud Total', 'Inglaterra', TO_DATE('1995-03-22', 'YYYY-MM-DD'), '+', 'A', 7, 'ED', 7987987);
        PA_PRESIDENTE.AD_Jugador('Thorgan', 'Hazard', 798432187, 'Thorgan@dmoz.org', 'Salud Total', 'Belgica', TO_DATE('1985-02-22', 'YYYY-MM-DD'), '+', 'A', 26, 'EI', 4654564);
        PA_PRESIDENTE.AD_Jugador('Julian', 'Brandt', 3216598456, 'Julian@dmoz.org', 'Salud Total', 'Bulgaria', TO_DATE('1970-02-22', 'YYYY-MM-DD'), '+', 'A', 8, 'MCO', 1321456);
        PA_PRESIDENTE.AD_Jugador('Axel', 'Witsel', 46545512, 'Axel@dmoz.org', 'Salud Total', 'Bulgaria', TO_DATE('1995-02-22', 'YYYY-MM-DD'), '+', 'A', 21, 'MCO', 45678123);
        PA_PRESIDENTE.AD_Jugador('Emre', 'Can', 12315105, 'Emre@dmoz.org', 'Salud Total', 'Bulgaria', TO_DATE('1992-02-22', 'YYYY-MM-DD'), '+', 'A', 20, 'MC', 3214567);
        PA_PRESIDENTE.AD_Jugador('Lukas', 'Piszczek', 98154562, 'Lukas@dmoz.org', 'Salud Total', 'Bulgaria', TO_DATE('1991-02-22', 'YYYY-MM-DD'), '+', 'A', 6, 'MC', 451237);
        PA_PRESIDENTE.AD_Jugador('Achraf', 'Hakimi', 45601893, 'Achraf@dmoz.org', 'Salud Total', 'Marruecos', TO_DATE('1998-02-22', 'YYYY-MM-DD'), '+', 'A', 2, 'LI', 4563217);
        PA_PRESIDENTE.AD_Jugador('Nico', 'Schulz', 1963753692, 'Nico@dmoz.org', 'Salud Total', 'Bulgaria', TO_DATE('2002-02-22', 'YYYY-MM-DD'), '+', 'A', 2, 'LD', 6457123);
        PA_PRESIDENTE.AD_Jugador('Leonardo', 'Balerdi', 79895034, 'Leonardo@dmoz.org', 'Salud Total', 'Bulgaria', TO_DATE('1975-02-22', 'YYYY-MM-DD'), '+', 'A', 12, 'DFC', 1237456);
        PA_PRESIDENTE.AD_Jugador('Mats', 'Hummels', 12368429, 'Mats@dmoz.org', 'Salud Total', 'Bulgaria', TO_DATE('1987-02-22', 'YYYY-MM-DD'), '+', 'A', 4, 'DFC', 12714195);
        PA_PRESIDENTE.AD_Jugador('Dan', 'Zagadou', 782145368, 'Dan@dmoz.org', 'Salud Total', 'Alemania', TO_DATE('1995-02-22', 'YYYY-MM-DD'), '+', 'A', 15, 'DFC', 1957645);
        PA_PRESIDENTE.AD_Jugador('Luca', 'Unbehaun', 78924295, 'Luca@dmoz.org', 'Salud Total', 'Bulgaria', TO_DATE('1990-02-22', 'YYYY-MM-DD'), '+', 'A', 22, 'DFC', 4569522);
        PA_PRESIDENTE.AD_Jugador('Marcel', 'Schmelzer', 39747858, 'Marcel@dmoz.org', 'Salud Total', 'Colombia', TO_DATE('1990-02-22', 'YYYY-MM-DD'), '+', 'A', 23, 'LD', 65465498);
        PA_PRESIDENTE.AD_Jugador('Roman', 'Burki', 52253266, 'Roman@dmoz.org', 'Salud Total', 'Suiza', TO_DATE('1999-02-22', 'YYYY-MM-DD'), '+', 'A', 13, 'POR', 4678852);
        PA_PRESIDENTE.AD_Jugador('Marwin', 'Hitz', 54569852, 'Marwin@dmoz.org', 'Salud Total', 'Suiza', TO_DATE('1990-02-22', 'YYYY-MM-DD'), '+', 'A', 1, 'POR', 15498528);
     end;
     /
     SELECT PA_PRESIDENTE.CO_Jugador FROM DUAL;
     /
     begin
        PA_PRESIDENTE.AD_Jugador('Pierluigi', 'Collina', 6812319878, 'Mario@dmoz.org', 'Salud Total', 'Alemania', TO_DATE('1975-02-22', 'YYYY-MM-DD'), '+', 'A', 1, 'POR', 15498528);
     end;
    
---Organizador
/*
    Yo como organizador oficial de partidos de la liga, soy el encargo de registrar los partidos y ubicarlos para un fecha especifica; debe tener en cuenta
    que por politicas de la organizacion no puedo colcoar un partido en simultaneo con otro
*/
    /*Intentando programar un partido simultaneo*/
    begin
        PA_ORGANIZADOR.AD_Partido(TO_DATE('29-08-2020 22:00','DD-MM-YYYY HH24:MI'), null, 'Signal Iduna Park');
    end;
    
/*
    Ahora programare y registrare los partidos que tubo el Borussia Dortmund contra el Deportivo pasto el 15 de marzo de este año; 
    y programare el partido contra Millonarios Fútbol Club el 25 del mismo mes
*/
    begin
        PA_ORGANIZADOR.AD_Partido(TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), null, 'Signal Iduna Park');
        PA_ORGANIZADOR.AD_Partido(TO_DATE('25-08-2020 18:00','DD-MM-YYYY HH24:MI'), null, 'Signal Iduna Park');
        PA_ORGANIZADOR.AD_Encuentros('Borussia Dortmund','Deportivo Pasto',TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'));
        PA_ORGANIZADOR.AD_Encuentros('Borussia Dortmund','Millonarios Fútbol Club',TO_DATE('25-08-2020 18:00','DD-MM-YYYY HH24:MI'));
    end;
    /
    SELECT PA_ORGANIZADOR.CO_PartidosT FROM DUAL;
    
/*
    Como el partido entre el Borussia Dortmund y el Deportivo Pasto ya se jugo, tengo que asignar el resultado del partido; este partido termino 4 - 1 a favor 
    de los negriAmarillos
*/
    begin
        PA_ORGANIZADOR.MO_Partido(TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), '04-01');
    end;
    /
    SELECT PA_ORGANIZADOR.CO_PartidosT FROM DUAL;

/*
    Tambien soy el encargado de asignar los eventos sucedidos durante el partido; esto solo lo puedo hacer si ya le he puesto 
    el resultado final del partido; en este caso registre los 4 goles realizados por el Borussia Dortmund en los minutos 4, 35, 67 y 89; 
    todos marcados por earling braut halaand identificado con cedula (498461368); y el gol del deportivo pasto realizado en el minuto 90 + 2,
    durante el partido el portero Marwin(54569852) del Borussia Dormunt tuvo una intervencion
*/
    /* Primero intentare registrar un disparo sobre un partido el cual no ha sido jugado por ende no posee un marcador final*/
    begin
        PA_ORGANIZADOR.AD_Disparo(1, 70, 95, TO_DATE('25-08-2020 22:00','DD-MM-YYYY HH24:MI'), 4, 498461368);
    end;
    
/*
    Los goles marcados por earling braut halaand fueron goles desde el borde del area chica, y cada uno con una velocdidad de 95, 92, 93 y 69 km/h,
    el gol marcado por el jugador del Deportivo Pasto fue un gol dentro del area chica con una velocidad de 45 km/h
*/
    
    begin
        PA_ORGANIZADOR.AD_Disparo(1, 70, 95, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 4, 498461368);
        PA_ORGANIZADOR.AD_Disparo(1, 70, 92, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 35, 498461368);
        PA_ORGANIZADOR.AD_Disparo(1, 70, 93, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 67, 498461368);
        PA_ORGANIZADOR.AD_Disparo(1, 70, 69, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 89, 498461368);
        PA_ORGANIZADOR.AD_Disparo(1, 40, 45, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 92, 8425971880);
    end;
    /
    SELECT PA_ORGANIZADOR.CO_Evento ('DS') FROM DUAL;
    /*No pudo ingresar mas de la cantidad de los goles que se registraron en el partido*/
    begin
        PA_ORGANIZADOR.AD_Disparo(1, 70, 95, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 1, 54569852);
    end;
/*
    De los goles realizado por Halaand uno de sus asitentes fue Marco Reus el cual le dio la asistencia al gol marcado en el minuto 67;
    ademas de esto el jugador Marco Reus tuvo una efectividad del 89% en sus pases(realizo 13)
    
*/
    begin
        PA_ORGANIZADOR.AD_Pase(134, 89, 1, 66, 654321588, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'));
    end;
    /
    SELECT PA_ORGANIZADOR.CO_Evento ('PA') FROM DUAL;

    
---Presidente
/*
    Como presidente del club Borussia Dortmund, debo registrar la lista de convocados para un partido; ademas de incluir la formacion que este tendra,
    en el caso del partido que jugamos contra el deportivo pasto el dia 15 de mayo de este año utilizamos la formacion 4-4-2
*/
    begin
        PA_PRESIDENTE.AD_Plantilla('4-4-2', 'Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'));
    end;
    /
    SELECT PA_PRESIDENTE.CO_Plantilla FROM DUAL;
/*
    Para este partido llevamos los 11 jugadores titulares y otros 7 suplentes
*/
    begin
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 2651912, 1, 'DC');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 498461368, 1, 'DC');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 3215164981, 1, 'ED');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 798432187, 1, 'EI');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 3216598456, 1, 'MCO');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 12315105, 1, 'MC');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 45601893, 1, 'LI');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 782145368, 1, 'DFC');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 78924295, 1, 'DFC');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 39747858, 1, 'LD');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 54569852, 1, 'POR');    
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 52253266, 0, 'POR');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 654321588, 0, 'MP');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 79895034, 0, 'DFC');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 12368429, 0, 'DFC');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 1963753692, 0, 'LD');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 46545512, 0, 'MCO');
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 98154562, 0, 'MC');
    end;
    /
    SELECT PA_PRESIDENTE.CO_Convocado FROM DUAL;

/*
    Por politicas de la liga no puedo llevar mas de un portero como suplente
*/
    begin
        PA_PRESIDENTE.AD_Convocado('Borussia Dortmund', TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 6540172698, 0, 'POR');
    end;



---Organizador

/*
    El portero del Dormunt realizo 2 paradas mientras mantuvo su arco invicto hasta el gol del pasto en el minuto 92, 
    debo dejar claro que me es imposible adicionar un gol que no existio es decir agregar mas goles de los registrados en el partido
*/
    begin
        PA_ORGANIZADOR.AD_Atajada(0, 54569852, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'), 91, 2);
    end;
    /
    SELECT PA_ORGANIZADOR.CO_Evento ('AT') FROM DUAL;

/*
    Debido a que el proximo encuentro entre el Borussia Dortmund y Millonarios Fútbol Club sera un encuentro que definira el resultado
    de la liga, debo asignar al mejor arbitro hasta el momento
*/
    SELECT PA_ORGANIZADOR.CO_Arbitro(4) FROM DUAL;

/*
    Seleccionaremos al arbitro central Patton Walsh que se ha destacado como arbitro durante lo recorrido en su carrera,
    al arbitro del VAR Ronnie Golt y al los arbitros de linea Prudi Fache y Susi Jansky
*/
    begin
        PA_ORGANIZADOR.AD_PitadosPor(2982872594, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'));
        PA_ORGANIZADOR.AD_PitadosPor(1619112980, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'));
        PA_ORGANIZADOR.AD_PitadosPor(591684115, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'));
        PA_ORGANIZADOR.AD_PitadosPor(6657208211, TO_DATE('15-08-2020 22:00','DD-MM-YYYY HH24:MI'));
    end;
    /
    SELECT PA_ORGANIZADOR.CO_PitadosPor FROM DUAL;

---Tecnico
/*
    Como director Tecnico del equipo Borussia Dortmund soy el encargado de revisar los jugadores que mejor se destacan tanto de mi equipo
    como de los demas equipos, para conocer quienes deben jugar si son de mi equipo y a cuales rivales debo prestar mayor atencion
    para ordenar a mis jugadores que los marquen
*/
    SELECT PA_TECNICO.CO_Jugador_Pases FROM DUAL;
/*
    Tambien estoy interesado en conocer cuando debemos jugar para poder realizar unas mejores practicas fisicas
*/
    SELECT PA_TECNICO.CO_Partidos('Borussia Dortmund') FROM DUAL;

---Presidente Dimayor
/*
    Yo soy el encargado de entregar los premios a los equipos por juego limpio, y los premios individuales a los jugadores mas destacados
    de la liga para otorgar los premios de bota de oro, maximo asistente y guante de oro
*/

    SELECT PA_PDIMAYOR.CO_FairPlay FROM DUAL;
    /
    SELECT PA_PDIMAYOR.CO_MaxGoleadores FROM DUAL;
    /
    SELECT PA_PDIMAYOR.CO_MaxAsistentes FROM DUAL;
    /
    SELECT PA_PDIMAYOR.CO_MaxAtajador FROM DUAL;
    
