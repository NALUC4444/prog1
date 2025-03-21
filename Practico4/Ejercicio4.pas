(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar tres numeros naturales a, b
y n. El programa debe exhibir en pantalla todos los multiplos de n que haya entre a y b.*)
program P4Ej4;
var a, b, n, i : integer;
begin
    write('Ingrese el valor de a: '); readln(a);
    write('Ingrese el valor de n: '); readln(n);
    write('ingrese el valor de b: '); readln(b);
    for i := a to b do
        if (i MOD n = 0) then write(i, ' ')
end.

(*a = 3, b = 17, n = 4
4 8 12 16*)