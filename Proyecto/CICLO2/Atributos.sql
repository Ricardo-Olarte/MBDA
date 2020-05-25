/*---------Atributos---------*/
ALTER TABLE Compuestas ADD CONSTRAINT CK_Compuestas_valor 
CHECK (valor>0);

ALTER TABLE Simples ADD CONSTRAINT CK_Simples_valor 
CHECK (valor>0);

ALTER TABLE Traspasos ADD CONSTRAINT CK_Traspasos_contrato
CHECK (contrato IN ('P','V'));

ALTER TABLE Fisioterapeutas ADD CONSTRAINT CK_Fisioterapeutas_Disciplina 
CHECK (disciplina IN ('LH','LR','LT','LC'));

ALTER TABLE Fisioterapeutas ADD CONSTRAINT CK_Fisioterapeutas_salario
CHECK (salario>0);

ALTER TABLE Presidentes ADD CONSTRAINT CK_Presidente_vecesElec
CHECK (vecesElecto>0);

ALTER TABLE Descensos ADD CONSTRAINT CK_Descensos_liga 
CHECK (liga IN ('B','C'));

ALTER TABLE DirectoresTecnicos ADD CONSTRAINT CK_DirectoresTecnicos_sueldo
CHECK (sueldo>0);

ALTER TABLE Terapias ADD CONSTRAINT CK_Terapias_duracion
CHECK (duracion>20 AND duracion<240);