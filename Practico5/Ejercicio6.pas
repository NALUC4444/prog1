(*Dado un fragmento de texto que debe ser leido de la entrada estandar, todo en una linea,
y terminado por el caracter $ (centinela), escriba un programa en Pascal que determine
y exhiba las consonantes y vocales que aparecen duplicadas en forma contigua. Asuma
que todas las letras ingresadas son minusculas. Incluya mensajes de salida con etiquetas
descriptivas para solicitar y exhibir los valores.*)
program P5Ej6;
CONST centinela = '$';
var letraAnterior, letraActual : char;
begin
    write('Ingrese un texto: ');
    read(letraActual);
    write('Las consonantes y vocales duplicadas son: ');
    while letraActual <> centinela do
    begin
        letraAnterior := letraActual; //Para guardar letra leida
        read(letraActual); //Avanza en el bucle
        if (letraActual = letraAnterior) then write(letraAnterior, letraAnterior, ' ');
    end; //Cierra while
end.

{Ingrese un texto: llama al chico que lee$
Las consonantes y vocales duplicadas son: ll ee}