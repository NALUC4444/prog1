program P6Ej3;
const Centinela = -1;
var x, resultado, suma, valor1, valor2 : real;
begin
    write('Ingrese x: ');
    readln(x);
    write('Ingrese coeficientes: ');
    read(valor1);
    suma := 0;
    repeat
        valor2 := valor1;
        read(valor1); //Avanza secuencia de valores
        suma := valor1 + valor2 + suma;
        resultado := x * suma;
        read(valor1);
    until (valor1 = Centinela);
    resultado := resultado + 7.00;
    write('El resultado de evaluar en', x:7:2, ' es: ', resultado:7:2);
end.