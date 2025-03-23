(*Letra Ejercicio:
Escriba un programa en Pascal que determine y exhiba la desviacion estandar de n numeros
reales positivos. Los numeros deben ser leidos de la entrada estandar, donde se ingresara un
numero negativo al final como centinela. La desviacion estandar de un conjunto de numeros
x1, x2, ..., xn se define como la raiz cuadrada de la expresion s/n−a^2, donde a es el promedio
de los valores xi ((x1 + x2 + ... + xn)/n) y s es la suma de los cuadrados de los valores xi
(x1^2 + x2^2 + ... + xn^2). 
Incluya mensajes de salida con etiquetas descriptivas para solicitar y/o exhibir los valores.*)
program P5Ej9;
var 
    s, a, n, valorAnterior, valorActual, suma, cantidad, resultado : real;
    centinela : boolean;
//No podemos usar una constante como centinela, ya que sera un valor negativo
begin
    write('Ingrese valores para analizar: ');
    read(valorActual);
    cantidad := 0;
    repeat //Ingresa de una al repeat
        cantidad := cantidad + 1;
        valorAnterior := valorActual;
        read(valorActual); //Avanzar en el bucle
        s := sqr(valorAnterior) + sqr(valorActual); //s lleva el resultado
        suma := valorAnterior + valorActual;
        if valorActual >= 0 then centinela := true
        else centinela := false; //Esto para el bucle
    until not (centinela);
    a := suma / cantidad; //Obtengo el promedio
    n := cantidad;
    resultado := sqrt(s/(n-sqr(a)));
    writeln('La desviacion estandar es: ', s:7:2);
end.
{25.0 23.0 22.0 21.0 17.0 9.0 6.0 5.0 -1.0
La desviacion estandar es 7.60}