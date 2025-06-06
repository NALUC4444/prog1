program P12Ej3;
type
    Positivo = 1..MaxInt;
    ListaInt = ^TCelda;
    TCelda = record
        info : integer;
        sig : ListaInt
    end;
    PosibleElem = record case ok : boolean of
        true : (elem : integer);
        false : ()
    end;

{$INCLUDE Ejercicio3a.pas}

{$INCLUDE Ejercicio3b.pas}

{$INCLUDE Ejercicio3c.pas}

{$INCLUDE Ejercicio3d.pas}

{$INCLUDE Ejercicio3e.pas}

{$INCLUDE Ejercicio3f.pas}

{$INCLUDE Ejercicio3g.pas}

{$INCLUDE Ejercicio3h.pas}

begin
    writeln('Funciona')
end.