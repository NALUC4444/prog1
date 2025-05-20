program P10Ej6;
type 
    TipoMes = (
        enero, febrero, marzo, abril, mayo, junio, 
        julio, agosto, setiembre, octubre, noviembre, diciembre
    );
    TipoMesRango = 1..12;

procedure mesCorrecto(mes : TipoMes);
begin
    write('El mes elegido es: ');
    case mes of
        enero : writeln('enero');
        febrero : writeln('febrero');
        marzo : writeln('marzo');
        abril : writeln('abril');
        mayo : writeln('mayo');
        junio : writeln('junio');
        julio : writeln('julio');
        agosto : writeln('agosto');
        setiembre : writeln('septiembre');
        octubre : writeln('octubre');
        noviembre : writeln('noviembre');
        diciembre : writeln('diciembre');
    end;
end;

procedure convertirMes(mesNumero : TipoMesRango);
{TipoMesRango = 1..12 pero tenemos 0..11}
var mes : TipoMes;
begin
    write('El numero ', mesNumero:1, ' pertenece al mes: ');
    mesNumero := mesNumero - 1; {Obtener el rango 0..11}
    mes := TipoMes(mesNumero); {Obtener mes correspondiente}
    case mes of
        enero : writeln('enero');
        febrero : writeln('febrero');
        marzo : writeln('marzo');
        abril : writeln('abril');
        mayo : writeln('mayo');
        junio : writeln('junio');
        julio : writeln('julio');
        agosto : writeln('agosto');
        setiembre : writeln('septiembre');
        octubre : writeln('octubre');
        noviembre : writeln('noviembre');
        diciembre : writeln('diciembre');
    end;
end;

{Programa principal}
var 
    aux : TipoMes;
    aux2 : TipoMesRango;
begin
    write('Ingrese un mes: ');
    readln(aux);
    mesCorrecto(aux);
    write('Ingres numero entre 1 y 12: ');
    readln(aux2);
    convertirMes(aux2);
    readln();
end.