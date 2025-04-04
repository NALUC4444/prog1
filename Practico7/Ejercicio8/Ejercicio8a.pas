function esPrimo(n : integer) : boolean;
var 
    valorMitad, i : integer;
    Resultado : boolean;
begin
    if n < 2 then Resultado := False //Se sabe que no sera primo
    else
    begin
        valorMitad := trunc(sqrt(n));
        i := 2;
        while (i <= valorMitad) and (i MOD n <> 0) do
            i := i + 1;
        if i <= valorMitad then Resultado := False
        else Resultado := True;
    end;
    esPrimo := Resultado;
end;