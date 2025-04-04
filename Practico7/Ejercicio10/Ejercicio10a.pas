procedure multiplicidadFactor(numero, factor : integer; var multiplicidad, residuo : integer);
var resultado : integer;
begin
    resultado := numero;
    while (resultado MOD factor = 0) do
    begin
        multiplicidad := multiplicidad + 1; //Para ir sumando
        resultado := resultado DIV factor;
    end;
    residuo := resultado DIV factor; //Para obtener el resto de la division
    writeln('numero = ', numero:2, ', factor = ', factor:2);
    write('multiplicidad = ', multiplicidad:2, ', residuo = ', resultado:2);
end;

{
numero : numero que sera dividido
factor : valor por el que se divide a *numero*
multiplicidad : cantidad de veces que se divide
residuo : resto de la ultima division (MOD)

Ejemplos:
Entrada: numero = 39, factor = 2
Salida: multiplicidad = 0, residuo = 39

Entrada: numero = 39, factor = 3
Salida: multiplicidad = 1, residuo = 13

Entrada: numero = 42, factor = 2
Salida: multiplicidad = 1, residuo = 21

Entrada: numero = 12, factor = 2
Salida: multiplicidad = 2, residuo = 3}