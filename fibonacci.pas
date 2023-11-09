
function fib( n: integer):integer;
var i: integer;
begin
    if n = 1 then
    begin
        fib := 0;
    end
    else if n = 2 then
    begin
        fib := 1;
    end
    else
    begin
        writeln('abc');
        fib := fib( n - 1 ) + fib( n - 2 );
    end
end;

var num: integer;
var res: integer;
begin
    num := 6;
    res := fib(num);
    writeln(res); 
end.