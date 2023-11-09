
type
    a = array [1..10] of integer;

procedure setArr(var arrayA: a);
// procedure setArr(var arrayA: array [1..10] of integer);
begin
    arrayA[1] := 1;
    arrayA[2] := 2;
end;

var arr: a; 

begin
    setArr(arr);
    writeln(arr[1]);
end.