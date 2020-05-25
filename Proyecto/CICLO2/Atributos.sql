/*---------Atributos---------*/
ALTER TABLE Compuestas ADD CONSTRAINT CK_Compuestas_valor 
CHECK (valor>0);

ALTER TABLE Simples ADD CONSTRAINT CK_Simples_valor 
CHECK (valor>0);

ALTER TABLE Traspasos ADD CONSTRAINT CK_Traspasos_contrato
CHECK (contrato IN ('P','V'));

ALTER TABLE Fisioterapeutas ADD CONSTRAINT CK_Fisioterapeutas_Disciplina 
CHECK (disciplina IN ('LH','LR','LT','LC'));

ALTER TABLE Presidente ADD CONSTRAINT CK_Presidente_vecesElec
CHECK (vecesElecto>0);

ALTER TABLE Descensos ADD CONSTRAINT CK_Descensos_liga 
CHECK (liga IN ('B','C'));