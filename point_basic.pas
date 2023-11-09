
procedure Test(var i: ^integer);
begin
    i := @1;
    writeln(i)
end;


var
    number: integer;
    iptr: ^integer;
    y: ^word;

begin

    number := 100;
    iptr := @number;
    y := addr(iptr);
    writeln(y^);
    iptr^ := 230;
    writeln(y^);
    writeln(iptr^);
    writeln(iptr);
end.