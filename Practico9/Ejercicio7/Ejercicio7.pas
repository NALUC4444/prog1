program P9Ej7;
const
    M = 5; {valor mayor estricto a 1}
    N = 5; {valor mayor estricto a 1}
    P = 5; {valor mayor estricto a 1}
type
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMN = array [RangoM, RangoN] of integer;
    MatrizNP = array [RangoN, RangoP] of integer;
    MatrizMP = array [RangoM, RangoP] of integer;

var
    MatrizA : MatrizMN;
    MatrizB : MatrizNP;
    MatrizC : MatrizMP;
    i, j : integer;

procedure productoMatrices(a:MatrizMN; b:MatrizNP; VAR c:MatrizMP);
var i, j, s : integer;
begin
    for i := 1 to M do
        for j := 1 to N do
            for s := 1 to P do
                c[i, s] := a[i, j] * b[j, s];
end;

procedure cargar(VAR A : MatrizMN; VAR B : MatrizNP);
var i, j, n1, n2 : integer;
begin
    n1 := 1;
    n2 := 2;
    for i := 1 to M do
        for j := 1 to N do
        begin
            A[i, j] := n1;
            n1 := n1 + 1;
        end;
    for i := 1 to P do
        for j := 1 to N do
        begin
            B[i, j] := n2;
            n2 := n2 + 1;
        end;
end;

procedure mostrar(Amn : MatrizMN; Bnp:MatrizNP);
var i, j : integer;
begin
    for i := 1 to M do
    begin
        for j := 1 to N do
            write(Amn[i, j], ' ');
        readln();
    end;
    writeln('>>>SEGUNDA MATRIZ<<<');
    for i := 1 to N do
    begin
        for j := 1 to P do
            write(Bnp[i, j], ' ');
        readln();
    end;
end;

{Programa principal}
begin
    write('Ingrese numero base 1: ');
    readln(num1);
    write('Ingrese numero base 2: ');
    readln(num2);
    cargar(MatrizA, MatrizB);
    mostrar(MatrizA, MatrizB);
    productoMatrices(MatrizA, MatrizB, MatrizC);
    writeln('>>>Tercera Matriz<<<');
    for i := 1 to M do
    begin
        for j := 1 to P do
            write(MatrizC[i, j], ' ');
        readln();
    end;
end.