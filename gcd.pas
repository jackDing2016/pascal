
var r: integer;

function Gcd(var x: integer; var y: integer ):integer;
begin
    r := x mod y;
    if r = 0 then
    begin
        Gcd := y;
    end
    else
    begin
        Gcd(y, r);
    end;
end;

var result: integer;

var a,b: integer;

begin
    a := 20;
    b := 12;
    result := Gcd(a,b);
    writeln(result);
end.