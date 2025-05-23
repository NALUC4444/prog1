program P10Ej12;
const
    cant_letras = ...; { valor entero mayor a 0 }
    cant_articulos = ...; { valor entero mayor a 0 }
type
    TIdioma = (es, en, pt);
    TFecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 2001..9999 (* La wikipedia comienza en 2001 *)
    end;
    TNombre = array [1..cant_letras] of char;
    TArticulo = record
        nombre : TNombre;
        idioma : TIdioma;
        visitas : Integer;
        ultima_act : TFecha;
    end;
    Wikipedia = array [1..cant_articulos] OF TArticulo;

{El ejercicio no puede ser comprobado}