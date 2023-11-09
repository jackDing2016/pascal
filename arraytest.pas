
var 
    n: array [0..10] of integer;
    i: integer;
begin
    writeln('HI we will learn array here, be ready !');
    // initlize the array
    for i := 0 to 10 do
        n[i] := i + 100;

    // print the array
    for i := 0 to 10 do
        writeln('Element is ' , n[i]);
        
end.
