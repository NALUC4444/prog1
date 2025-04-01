(*Letra Ejercicio 2a:
Escriba un programa que lea una letra y una oracion y despliegue la cantidad de 
palabras de la oracion que terminan con la letra dada. 
Se asume que la oracion es una secuencia de palabras separadas solo por espacios, 
y que terminan con el caracter punto (.). La oracion siempre tiene al menos una palabra.*)

procedure TerminaConLetra();
var 
    letraBusqueda, letraActual, proximaLetra : char;
    cantidad : integer;
begin
    write('Ingrese la letra a buscar: ');
    readln(letraBusqueda);
    writeln('Ingrese la oracion: ');
    read(proximaLetra); //Asegurar que no sea el Final
    cantidad := 0; //Veces que la palabra termina con letraBusqueda
    while(proximaLetra <> Final) do
    begin
        letraActual := proximaLetra;
        read(proximaLetra);
        if (letraActual = letraBusqueda) and (proximaLetra = Espacio) then
            cantidad := cantidad + 1;
    end;
    write('La oracion tiene ', cantidad, ' palabras que terminan con ', letraBusqueda);
end;

{Ejemplo:
Letra: s
Oracion: Las cualidades indispensables para un buen cocinero no se conocen.
La oracion tiene 3 palabras que terminan con s}