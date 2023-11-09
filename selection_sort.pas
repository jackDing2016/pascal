
type arrayType = array [0..5] of integer;
var i,j: integer;

procedure sort(var arr: arrayType);

var min_value: integer;
var index: integer; 
begin
    for i := 0 to 5 do
    begin
        min_value := 9999;
        for j := i to 5 do
        begin
            if arr[j] < min_value then
            begin
                min_value := arr[j];
                index := j;
            end

            else
            begin
            end;
        end;
        arr[index] := arr[i];
        arr[i] := min_value;
    end;
end;


var a: array [0..5] of integer = (78,12,65,88,16,2);
var z: integer;
begin
    sort(a);
    for z := 0 to 5 do
        writeln(a[z]);
end.