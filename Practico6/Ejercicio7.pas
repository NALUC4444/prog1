program P6Ej7;
var i, j, resultado, m, n : integer;
begin
    write('Ingrese m: ');
    readln(m);
    write('Ingrese n: ');
    readln(n);
    for i := m to n do
    begin
        writeln('>>> Tabla ', i:2, ' <<<');
        for j := 1 to 10 do
        begin
            resultado := i * j;
            writeln(i:2, ' * ', j:2, ' = ', resultado:2);
        end;
        writeln() //Dejar un renglon vacio
    end;
end.