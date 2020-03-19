/*Atributos*/
ALTER TABLE Pases ADD CONSTRAINT CHK_Tacertado CHECK (efectividadAcierto>=0 AND efectividadAcierto<=100);
ALTER TABLE Amonestaciones ADD CONSTRAINT CHK_Tcomentarios CHECK (comentarios IN ('Falta no intencional','Falta Intencional','Agresion Verbal','Agresion Fisica','Agesion Grave','Agresion Penal'));
ALTER TABLE PersonasNaturales ADD CONSTRAINT CHK_Tcorreo CHECK (correo LIKE '%@gmail.com' OR  correo LIKE '%@hotmail.com' OR correo LIKE '%@yahoo.es' OR correo LIKE '%@outlook.com');
ALTER TABLE Plantillas ADD CONSTRAINT CHK_Tformacion CHECK (formacion IN ('3-1-4-2','3-4-1-2','3-4-2-1','3-4-3','3-5-2','4-1-2-1-2','4-1-3-2','4-1-4-1','4-2-2-2','4-2-3-1','4-2-4','4-3-1-2','4-3-2-1','4-3-3','4-4-1-1','4-4-2','4-5-1','5-2-1-2','5-2-2-1','5-3-2','5-4-1'));
ALTER TABLE Arbitros ADD CONSTRAINT CHK_TposA CHECK (posicion IN ('VAR', 'ARC', 'AFL'));
ALTER TABLE Jugadores ADD CONSTRAINT CHK_TposJ CHECK (posicion IN ('POR','LI','LD','CAD','CAI','DFC','MCD','MC','MI','MD','MCO','ED','EI','MP', 'SDD','SDI','DC'));
ALTER TABLE Arbitros ADD CONSTRAINT CHK_Tpuntaje CHECK (puntuacionArbitraje >=0 AND puntuacionArbitraje<=5);
ALTER TABLE Amonestaciones ADD CONSTRAINT CHK_Ttarjeta CHECK (tarjeta IN ('A','R'));
ALTER TABLE Atajadas ADD CONSTRAINT CHK_Ttiempo CHECK (tiempo >= 0);
ALTER TABLE PersonasNaturales ADD CONSTRAINT CHK_Trh CHECK (rh IN ('+','-'));
ALTER TABLE PersonasNaturales ADD CONSTRAINT CHK_Tsangre CHECK (sangre IN ('A','B','O','AB'));
ALTER TABLE Jugadores ADD CONSTRAINT CHK_lesion CHECK (lesion=0 or lesion=1);
ALTER TABLE Plantillas ADD CONSTRAINT CHK_titular CHECK (titular=0 or titular=1);
ALTER TABLE Pases ADD CONSTRAINT CHK_gol CHECK (gol=0 or gol=1);
ALTER TABLE Disparos ADD CONSTRAINT CHK_acertadoGol CHECK (acertadoGol=0 or acertadoGol=1);
