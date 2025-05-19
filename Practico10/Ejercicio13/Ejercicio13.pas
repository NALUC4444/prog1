program P10Ej13;
const
    cant_salones = ...; { valor entero mayor a 0 }
    max_pizarrones = ...; { valor entero mayor a 0 }
type
    TSalon = record
        asientos : Integer;
        pizarrones : 1..max_pizarrones;
        hayProyector : Boolean;
    end;
    TFacultad = array [1..cant_salones] of TSalon;

{$INCLUDE Ejercicio13a.pas}

{$INCLUDE Ejercicio13b.pas}

{$INCLUDE Ejercicio13c.pas}