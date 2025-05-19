{Escriba el procedimiento multComplejos que almacena en c3 la 
multiplicacion de los numeros complejos c1 y c2.}
procedure multComplejos (c1, c2 : Complejo; var c3 : Complejo);
begin
    c3.re := (c1.re * c2.re) - (c1.im * c2.im);
    c3.im := (c1.im * c2.re) + (c2.im * c1.re);
end;

{
Si re1 e im1 representan los componentes de c1 y re2 e im2 
representan los componentes de c2, entonces los componentes de c3 estan dados por:
re3 = re1 * re2 - im1 * im2
im3 = im1 * re2 + im2 * re1
}