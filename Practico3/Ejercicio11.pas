(*Letra Ejercicio
Escriba un programa en Pascal que lea de la entrada estandar un entero positivo n de
exactamente cuatro digitos y otro entero positivo d de exactamente 1 digito. Si d aparece
en la representacion decimal de n, entonces exhiba en la salida estandar el numero n con
un signo de suma (+) debajo de cada aparicion de d. En caso contrario, exhiba el mensaje
’d no aparece en n’. Su programa no necesita controlar que los enteros ingresados tengan
cada uno la cantidad de cifras indicada, asuma que ası sera. Incluya mensajes de salida con
etiquetas descriptivas para el ingreso y el despliegue de datos.*)
program P3Ej11;
CONST SeRepite = '+';
var
    d, n, dg1, dg2, dg3, dg4 : integer;

begin
    write('Ingrese un entero de 4 digitos: ');
    readln(n);
    write('Ingrese un entero de 1 digito: ');
    readln(d);
    dg1 := n DIV 1000;
    dg2 := n DIV 100 MOD 10; //Obtengo la centena
    dg3 := n DIV 10 MOD 10;
    dg4 := n MOD 10; //Obtener la unidad
    writeln(dg1, dg2, dg3, dg4);
    if (dg1 = d) then
        write(SeRepite);
    if (dg2 = d) then
        write(' ', SeRepite);
    if (dg3 = d) then
        write(' ', ' ', SeRepite);
    if (dg4 = d) then
        write(SeRepite)
    else
        write(d, ' no aparece en ', n);
end.