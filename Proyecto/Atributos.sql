/*Atributos*/
ALTER TABLE PersonasNaturales ADD CONSTRAINT CK_PersonasNaturales_Tcorreo 
CHECK (correo LIKE '%@%' );

ALTER TABLE PersonasNaturales ADD CONSTRAINT CK_PersonasNaturales_Trh 
CHECK (rh IN ('+','-'));

ALTER TABLE PersonasNaturales ADD CONSTRAINT CK_PersonasNaturales_Tsangre 
CHECK (sangre IN ('A','B','O','AB'));

ALTER TABLE Arbitros ADD CONSTRAINT CK_Arbitros_TposA 
CHECK (posicion IN ('VAR', 'ARC', 'AFL'));

ALTER TABLE Arbitros ADD CONSTRAINT CK_Arbitros_Tpuntaje 
CHECK (puntuacionArbitraje >=0 AND puntuacionArbitraje<=5);

ALTER TABLE Jugadores ADD CONSTRAINT CK_Jugadores_TposJ 
CHECK (posicion IN ('POR','LI','LD','CAD','CAI','DFC','MCD','MC','MI','MD','MCO','ED','EI','MP', 'SDD','SDI','DC'));

ALTER TABLE Jugadores ADD CONSTRAINT CK_Jugadores_lesion 
CHECK (lesion=0 or lesion=1);

ALTER TABLE Partidos ADD CONSTRAINT CK_Partidos_Tmarcador
CHECK (marcadorFinal LIKE '%-%');

ALTER TABLE Plantillas ADD CONSTRAINT CK_Plantillas_Tformacion 
CHECK (formacion IN ('3-1-4-2','3-4-1-2','3-4-2-1','3-4-3','3-5-2','4-1-2-1-2','4-1-3-2','4-1-4-1','4-2-2-2','4-2-3-1','4-2-4','4-3-1-2','4-3-2-1','4-3-3','4-4-1-1','4-4-2','4-5-1','5-2-1-2','5-2-2-1','5-3-2','5-4-1'));

ALTER TABLE Convocados ADD CONSTRAINT CK_Convocados_titular 
CHECK (titular=0 or titular=1);

ALTER TABLE Convocados ADD CONSTRAINT CK_Convocados_TposJ 
CHECK (posicion IN ('POR','LI','LD','CAD','CAI','DFC','MCD','MC','MI','MD','MCO','ED','EI','MP', 'SDD','SDI','DC'));

ALTER TABLE Eventos ADD CONSTRAINT CK_Eventos_tiempo 
CHECK (tiempo>=0 AND tiempo<=120);

ALTER TABLE Amonestaciones ADD CONSTRAINT CK_Amonestaciones_Tcomentarios 
CHECK (comentarios IN ('Falta no intencional','Falta Intencional','Agresion Verbal','Agresion Fisica','Agesion Grave','Agresion Penal'));

ALTER TABLE Amonestaciones ADD CONSTRAINT CK_Amonestaciones_Ttarjeta
CHECK (tarjeta IN ('A','R'));

ALTER TABLE Amonestaciones ADD CONSTRAINT CK_Amonestaciones_tiempo 
CHECK (tiempo>=0 AND tiempo<=120);

ALTER TABLE Pases ADD CONSTRAINT CK_Pases_Tacertado 
CHECK (efectividadAcierto>=0 AND efectividadAcierto<=100);

ALTER TABLE Pases ADD CONSTRAINT CK_Pases_gol 
CHECK (gol=0 or gol=1);

ALTER TABLE Pases ADD CONSTRAINT CK_Pases_tiempo 
CHECK (tiempo>=0 AND tiempo<=120);

ALTER TABLE Atajadas ADD CONSTRAINT CK_Atajadas_Timbatibilidad 
CHECK (porteriaEnCero >= 0);

ALTER TABLE Atajadas ADD CONSTRAINT CK_Atajadas_tiempo 
CHECK (tiempo>=0 AND tiempo<=120);

ALTER TABLE Disparos ADD CONSTRAINT CK_Disparos_acertadoGol 
CHECK (acertadoGol=0 or acertadoGol=1);

ALTER TABLE Disparos ADD CONSTRAINT CK_Disparos_distancia 
CHECK (distancia>=0 AND distancia<=90);

ALTER TABLE Disparos ADD CONSTRAINT CK_Disparos_tiempo 
CHECK (tiempo>=0 AND tiempo<=120);
