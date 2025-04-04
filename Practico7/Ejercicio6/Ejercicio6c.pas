program P7Ej6c;

{$INCLUDE Ejercicio6b.pas}

var 
    cuadratico, lineal, independiente, cantidad : integer;
    raiz1, raiz2 : real;
begin
    write('Ingrese termino cuadratico: ');
    readln(cuadratico);
    write('Ingrese termino lineal: ');
    readln(lineal);
    write('Ingrese termino independiente: ');
    readln(independiente);
    cantidad := 0; //No sabemos cuantas raices tiene
    raiz1 := 0.0;
    raiz2 := 0.0;
    raices(cuadratico, lineal, independiente, cantidad, raiz1, raiz2);
    if cantidad = 2 then
        writeln('Resultado: cant = ', cantidad:2, ', raiz1 = ', raiz2:7:2, ', raiz2 = ', raiz1:7:2)
    else if cantidad = 1 then
        writeln('Resultado: cant = ', cantidad:2, ', raiz1 = ', raiz1:7:2, ', raiz2 = ?')
    else if cantidad = 0 then
        writeln('Resultado: cant = ', cantidad:2, ', raiz1 = ?, raiz2 = ?');
end.

{
Entrada: a = 2, b = -3, c = -2
Resultado: cant = 2, raiz1 = 2, raiz2 = -0.5

Entrada: a = 1, b = -6, c = 9
Resultado: cant = 1, raiz1 = 3, raiz2 = ?

Entrada: a = 5, b = 4, c = 1
Resultado: cant = 0, raiz1 = ?, raiz2 = ?}