/*---------Entrenador---------*/
begin 
    BD2144828.PA_ENTRENADOR.AD_Actividades(SYSDATE, 1949, 420, null);
end;
/
begin
     BD2144828.PA_ENTRENADOR.AD_Evaluaciones(1, 'Buen Avance',
         xmltype('<?xml version="1.0"?>
            <!DOCTYPE TRecomendacion[
            <!ELEMENT TRecomendacion (area*, ejercicios*)>
            <!ELEMENT ejercicios (cardio, pierna, abdomen)+>
            <!ELEMENT cardio (necesario, series, tiempo, unidad)?>
            <!ELEMENT pierna (necesario, series, repeticiones)?>
            <!ELEMENT abdomen (necesario, series, repeticiones)?>
            <!ATTLIST cardio
                         necesario (No|Si) #REQUIRED
                         series CDATA #REQUIRED
                         tiempo CDATA #REQUIRED
                                unidad CDATA #REQUIRED>
            <!ATTLIST pierna
                         necesario (No|Si) #REQUIRED
                         series CDATA #REQUIRED
                         repeticiones CDATA #REQUIRED>
            <!ATTLIST abdomen
                         necesario (No|Si) #REQUIRED
                         series CDATA #REQUIRED
                         repeticiones CDATA #REQUIRED>
            <!ELEMENT area (zonas, calentamiento, cadencia)+>
            <!ELEMENT zonas (tipo, descripcion, importancia)?>
            <!ELEMENT calentamiento (tipo, descripcion, importancia)?>
            <!ELEMENT cadencia (tipo, descripcion, importancia)?>
            <!ATTLIST zonas
                         tipo (bien|mal) #REQUIRED
                         descripcion CDATA #REQUIRED
                         importancia (0|1|2|3|4|5) #REQUIRED>
            <!ATTLIST calentamiento
                         tipo (bien|mal) #REQUIRED
                         descripcion CDATA #REQUIRED
                         importancia (0|1|2|3|4|5) #REQUIRED>
            <!ATTLIST cadencia
                         tipo (bien|mal) #REQUIRED
                         descripcion CDATA #REQUIRED
                         importancia (0|1|2|3|4|5) #REQUIRED>
                     ]>
            <TRecomendacion>
                <area>
                    <zonas tipo= "bien" descripcion= "Buen compañerismo" importancia= "3"></zonas>
                    <calentamiento tipo= "bien" descripcion= "Buen calentamiento" importancia= "3"></calentamiento>
                    <cadencia tipo= "Maso" descripcion= "Buena cadencia" importancia= "3"></cadencia>
                </area>
                <ejercicios>
                    <cardio necesario="No" series="1" tiempo="32" unidad="min"></cardio>
                    <pierna necesario="No" series="1" repeticiones="32"></pierna>
                    <abdomen necesario="Siks" series="1" repeticiones="32"></abdomen>
                </ejercicios>
            </TRecomendacion>
            '),
       'CC', '423029084-5', 5
     );
end;
/
begin
    BD2144828.PA_ENTRENADOR.MO_Actividades(5, null, 8000, null);
end;