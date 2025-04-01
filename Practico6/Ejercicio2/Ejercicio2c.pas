(*Letra Ejercicio:
Escriba un programa que despliegue la cantidad de palabras que 
contienen la letra una sola vez.*)
procedure CantidadContenida();
var
    letraActual, letraBusqueda, letraSiguiente : char;
    mas1Aparicion : boolean;
    cantidad : integer;
begin
    mas1Aparicion := False; //Se asume que solo hay una aparicion
    cantidad := 0;
    write('Ingrese letra a buscar: ');
    readln(letraBusqueda);
    writeln('Ingrese la oracion: ');
    read(letraSiguiente);
    while (letraSiguiente <> Final) do
    begin
        letraActual := letraSiguiente;
        while (mas1Aparicion) do
        begin
            if (letraActual = letraBusqueda) and (mas1Aparicion = false) then
                cantidad := cantidad + 1
            else if (mas1Aparicion) then 
            begin
                cantidad := cantidad - 1;
                mas1Aparicion := true
            end; //Cierra if...else
        end;
        read(letraSiguiente);
    end;
    writeln('La cantidad de palabras que contienen la letra', letraBusqueda, ' son: ', cantidad);
end;

{Ejemplo:
Letra a buscar: 'o'
Oracion: Hoy pronosticaron lluvia pero no esta soleado.
Cantidad de veces que 'o' esta una vez: 3}