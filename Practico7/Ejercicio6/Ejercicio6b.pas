procedure raices(a,b,c : integer; var cant : integer; var raiz1, raiz2 : real);
var Discriminante : real;
begin
    Discriminante := sqr(b) - (4*a*c);
    if (Discriminante > 0) then
    begin
        raiz1 := (-b + sqrt(Discriminante)) / 2*a; 
        raiz2 := (-b - sqrt(Discriminante)) / 2*a;
        cant := 2;
    end
    else if (Discriminante = 0) then
    begin
        raiz1 := (-b + sqrt(Discriminante)) / 2*a;
        cant := 1;
    end
    else
        cant := 0;
end;