
function SumCubes(n: integer): integer;
begin
    if n = 1 then
    begin
        SumCubes := 1;
    end
    else
    begin
        SumCubes := SumCubes(n - 1) + n * n * n;
    end;
end;

var num :integer = 3;

begin
    writeln(SumCubes(num));
end.