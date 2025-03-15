{Calculo para pasar de Octal a Decimal:
4 × 8^2 + 1 × 8^1 + 5 × 8^0}
program P2Ej11;
var
    valor, o1, o2, o3, Decimal : integer;
begin
    write('Ingrese el Octal para calcular: ');
    readln(valor);
    o1 := valor MOD 10; {Unidada}
    o2 := valor DIV 10 MOD 10; {Decena}
    o3 := valor DIV 100 MOD 10; {Centena}
    Decimal := (o3 * sqr(8)) + (o2 * 8) + o1;
    writeln('Octal ', valor, ' = Decimal ', Decimal);
    readln();
end.