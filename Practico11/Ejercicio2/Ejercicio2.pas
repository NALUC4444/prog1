program P11Ej2;
const
    maxPersonas = ...; {valor entero mayor estricto a 0}
    maxCad = ...; {valor entero mayor estricto a 0}
type
    Cadena = record
        letras : array [1..maxCad] of char;
        largo : 0..maxCad;
    end;
    Fecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 0..maxint;
    end;
    Persona = record
        nombre : Cadena;
        fechNac : Fecha;
        indMadre, indPadre : 0..maxPersonas;
    end;
    Familia = record
        pers : array[1..maxPersonas] of Persona;
        tope : 0..maxPersonas;
    end;

{$INCLUDE Ejercicio2a.pas}

{$INCLUDE Ejercicio2b.pas}

{$INCLUDE Ejercicio2c.pas}