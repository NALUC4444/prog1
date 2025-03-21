(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar un caracter c y un natural n.
El programa debe desplegar un triangulo de n lineas formado por el caracter c (similar al
que se muestra en el ejemplo). La primera linea debe tener n ocurrencias de c. La segunda
linea debe tener n-1 ocurrencias de c (y ası sucesivamente). La ultima linea debe tener
1 ocurrencia de c. Incluya mensajes de salida con etiquetas descriptivas para solicitar y
exhibir los valores.*)
program P4Ej8;
var 
    i, j, n, rep : integer;
    c : char;
begin
    write('Ingrese un caracter para c: ');
    readln(c);
    write('Ingrese un valor para n: ');
    readln(n);
    rep := n;
    for i := 1 to n do
    begin
        for j := 1 to rep do
        begin
            if (j <> rep) then write(c)
            else
            begin
                writeln(c);
                rep := rep - 1;
            end; //Cierra if...else
        end; //Cierra segundo for
    end; //Cierra for
end.


{Ingrese un caracter c: &
Ingrese un valor para n: 8
&&&&&&&&
&&&&&&&
&&&&&&
&&&&&
&&&&
&&&
&&
&}