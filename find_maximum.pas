
type
    arrayType = array [0..5] of integer;
var
    maximum_number: integer;
    i: integer;

function FindMaximum(var arr: arrayType):integer;
begin
    maximum_number := 0;
    for i := 0 to 5 do
        if arr[i] > maximum_number then maximum_number := arr[i];
            
    FindMaximum := maximum_number 
end;

var a: array[0..5] of integer = (12,66,5,89,75,3);
begin
    writeln(FindMaximum(a));
end.