(*Letra Ejercicio:
Escriba un programa que despliegue la cantidad de palabras que comienzan con la letra leida*)
procedure EmpiezaCon();
var 
    letraBuscar, letraActual, letraAnterior, letraSiguiente : char;
    cantidad : integer;
begin
    cantidad := 0;
    write('Letra: ');
    readln(letraBuscar);
    writeln('Escribe la oracion a continuacion: ');
    read(letraSiguiente);
    while letraSiguiente <> Final do
    begin
        letraAnterior := letraSiguiente; //Avanzar a la siguiente
        read(letraSiguiente);
        letraActual := letraSiguiente;
        if (letraAnterior = Espacio) and (letraActual = letraBuscar) then
            cantidad := cantidad + 1;
    end;
    writeln('La oracion tiene ', cantidad, ' palabras que empiezan con', letraBuscar);
end;

{Ejemplo:
Letra: r
Oracion: Al restar obtienes un valor menor a uno de los iniciales.
La oracion tiene 1 palabras que terminan con r}