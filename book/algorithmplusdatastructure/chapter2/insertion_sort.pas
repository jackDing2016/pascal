

procedure Insertion_sort(var a: array of integer);
var i,j: integer;
var x: integer;
var y: integer;
begin
    for i := 1 to 4 do
    begin 
        x := a[i];
        j := i - 1;
        while (x < a[j]) and (j >= 0) do
        begin
            a[j + 1] := a[j];
            j := j - 1;
        end;
        a[j + 1] := x;
    end;  
end;


procedure WriteArray(var a: array of integer);
var ele: integer;
begin
    for ele in a do
    begin
        write(' ', ele);
    end;
    writeln();
end;

var arr: array [0..4] of integer = (6,1,7,8,3);
begin
    WriteArray(arr);
    Insertion_sort(arr);
    WriteArray(arr);
    write(arr[0]);
    write(arr[1]);
    write(arr[2]);
    write(arr[3]);
    write(arr[4]);
end.
