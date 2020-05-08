/*
Yo como entrenador soy el encargado de verificar el avance en el desempeño de los atletas pertenecientes anuestro gimaniso, para 
esto debo revisar los registros que han dejado los demas entrenadores sobre los entrenamientos que han realizados los atletas
*/
SELECT PA_ENTRENADOR.CO_Registros(2, 'V') FROM DUAL;

/*
Ademas yo tambien me encargo de hacer el entrenamiento del atleta 597250522-3 que tiene tipo de cedula CE, que en este caso
hizo un gran entrenamiento, aunque le recomendaria realizar 40 minutos de cardio extra debido aque en el area de pesas no tuvo el mejor de los 
desemeños, lo que si debe hacer es realizar 2 series de 50 repeticiones de abdomen debido al gran indice de grasa corporal
*/
begin
     PA_ENTRENADOR.AD_Evaluaciones(1, 'Gran entrenamiento',
         xmltype('<?xml version="1.0"?>
				<TRecomendacion>
                <area>
                    <zonas tipo= "mal" descripcion= "Bajo desempeño" importancia= "5"></zonas>
                    <calentamiento tipo= "bien" descripcion= "Buen calentamiento" importancia= "3"></calentamiento>
                    <cadencia tipo= "bien" descripcion= "Buena cadencia" importancia= "3"></cadencia>
                </area>
                <ejercicios>
                    <cardio necesario="No" series="1" tiempo="40" unidad="min"></cardio>
                    <pierna necesario="No" series="1" repeticiones="32"></pierna>
                    <abdomen necesario="Si" series="2" repeticiones="50"></abdomen>
                </ejercicios>
            </TRecomendacion>'), 
	'CE', '597250522-3',1
     );
end;
/*
Asi mismo debo actualizar algunas evaluaciones para cambiar los comentarios sobre las mismas si algun atleta me hace un reclamo sobre su entrenador a lo cual dejo un
comentario sobre lo dicho, y no hago ningun tipo de cambio sobre su puntaje
*/
begin
	PA_ENTRENADOR.MO_Evaluaciones(41, null,'Atleta Se queja de su entrenador');
end;
/*Algunas veces planeo actividades para realizar con algun atleta que asiste al gimansio normalmente estas actividades tienen duraciones no superiores a las 2h,
siempre programos mis actividades a las 8:00 de la mañana y utilizo un Pulsometro; pero como apenas estoy agendando la actividad no ingreso las pulsaciones obtenidas por el atleta
*/
begin
	PA_ENTRENADOR.AD_Actividades( TO_DATE('20/05/2020', 'dd/mm/yyyy'), 800, 120, null);
end;
/*Luego de que realice la sesion de entrenamiento con el atleta ahi si actualizo e ingreso las pulsaciones que haya obtenido*/
begin
	PA_ENTRENADOR.MO_Actividades(52, null, null, 190);
end;
/*Yo como atleta puedo realizar la reision sobre las evaluaciones que donde yo haya tenido un mal rendimiento, y si es el caso poner una queja y tambien revisar
las recomendaciones que me hayan dejado mis entrenadores sobre mi estado fisico y sobre como me fue en en el entrenamiento
*/
SELECT PA_ATLETA.CO_Eval_Malas_ImpRelev FROM DUAL;
SELECT PA_ATLETA.CO_Eval_Mejorar FROM DUAL;
