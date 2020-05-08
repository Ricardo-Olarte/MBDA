/*--------B--------*/
CREATE ROLE Entrenador;
GRANT EXECUTE ON PA_ENTRENADOR TO Entrenador;
GRANT Entrenador TO bd2111819;

/*--------C--------*/
CREATE ROLE Atleta;
GRANT EXECUTE ON PA_ATLETA TO Atleta;
GRANT Atleta TO bd2128022;
GRANT Atleta TO bd2131039;