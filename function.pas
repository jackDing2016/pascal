
// program exFunction;
var ret: integer;

function FuncTest():integer;

begin
    writeln('This is function logic'); 
    FuncTest := 3
end;

var a: integer;
begin
    ret := FuncTest();
    writeln('result is ');
    writeln(FuncTest());
end.