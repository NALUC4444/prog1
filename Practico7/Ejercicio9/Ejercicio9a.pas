function multiplo(m, n : integer) : boolean;
var resultado : boolean;
begin
    resultado := False; //No sabemos si son multiplos o no
    if (m MOD n = 0) or (n MOD m = 0) then resultado := True;
    multiplo := resultado;
end;