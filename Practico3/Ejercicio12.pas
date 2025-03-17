(*Letra Ejercicio:
Escriba un programa en Pascal que encuentre las raices de la ecuacion cuadratica:
a*x^2 + bx + c = 0
donde a, b, y c son valores reales leidos de la entrada estandar. El programa debera imprimir
en la salida estandar uno de los siguientes mensajes, segun corresponda. Incluya mensajes
de salida con etiquetas descriptivas para el ingreso y el despliegue de datos.*)
program P3Ej12;
var
    a, b, c, discriminante, raiz1, raiz2 : real;
begin
    write('Ingrese termino cuadratico: ');
    readln(a);
    write('Ingrese termino lineal: ');
    readln(b);
    write('Ingrese el termino independiente: ');
    readln(c);
    discriminante := sqr(b) - (4*a*c);
    if (discriminante > 0) then
    begin
        raiz1 := (-b + sqrt(discriminante)) / (2*a);
        raiz2 := (-b - sqrt(discriminante)) / (2*a);
        if raiz1 < raiz2 then
            writeln('Dos raices reales diferentes: ', raiz1:7:2, ' y ', raiz2:7:2)
        else
            writeln('Dos raices reales diferentes: ', raiz2:7:2, ' y ', raiz1:7:2);
    end
    else if (discriminante = 0) then
    begin
        raiz1 := (-b + sqrt(discriminante)) / (2*a);
        writeln('Dos raices reales iguales: ', raiz1:7:2);
    end
    else 
    begin
        raiz1 := (-b + sqrt(discriminante)) / (2*a);
        raiz2 := (-b - sqrt(discriminante)) / (2*a);
        if raiz1 < raiz2 then
            writeln('Dos raices complejas diferentes: ', raiz1:7:2, ' (+/-) i', raiz2:7:2)
        else
            writeln('Dos raices complejas diferentes: ', raiz2:7:2, ' (+/-) i', raiz1:7:2);
    end;
end.