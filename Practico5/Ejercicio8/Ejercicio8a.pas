(*Letra parte A:
(a) Escriba un programa en Pascal que resuelva lo pedido, suponiendo que no hay espacios
en la entrada.*)
procedure CalcularConEspacios();
var 
    operador, valorAnterior, valorActual : char;
    resultado : integer;
begin
    writeln('Ingrese la cuenta a realizar: ');
    read(valorActual);
    read(operador);
    while operador <> centinela do
    begin
        valorAnterior := valorActual;
        case operador of
            '+' : resultado := (ord(valorAnterior) - ord('0')) + resultado;
            '-' : resultado := (ord(valorAnterior) - ord('0')) - resultado;
            '/' : resultado := (ord(valorAnterior) - ord('0')) / resultado;
            '*' : resultado := (ord(valorAnterior) - ord('0')) * resultado;
        end;
    end;
end;