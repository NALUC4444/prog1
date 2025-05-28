{Escriba el procedimiento antepasados que, dado el nombre de una 
persona en el parametro usted y una familia en el parametro historia, 
despliegue en la salida los nombres y fechas de nacimiento del padre y de la madre de la 
persona de nombre usted (si es que se dispone de la informacion correspondiente).
En caso de que la persona de nombre usted no este registrada, no se desplegara nada.}
procedure antepasados(usted : Cadena; historia : Familia);
var 
    i : 1..maxCad;
    iguales : boolean;
begin
    
    desplegarCadena(usted);
    for i := 1 to maxCad do
    begin
        iguales := cadenasIguales(usted, historia[i].nombre); {Saber si son o no iguales}
        
    end;
end;