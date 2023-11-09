procedure MyProcedure(a: integer);

var i: integer;
begin
    writeln('hi this is procedure demo'); 
    writeln('The procedure will print gang ba de 10 times!');
    i := a;
    for i := 0 to a do
        writeln('Gang ba de!');
           
end;

var a: integer;

begin
    a := 10;
    MyProcedure(a);
end.