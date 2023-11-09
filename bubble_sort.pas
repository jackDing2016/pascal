
type myarray = array [0..5] of integer; 

procedure Sort(var arr: myarray);

var i,j: integer;
var temp: integer;

begin
    for i := 0 to 5 do
    begin
        for j := 0 to 4 - i do
        begin
            if arr[j] > arr[j+1] then
            begin
                temp := arr[j];
                arr[j] := arr[j+1];
                arr[j+1] := temp;
            end;
        end;
    end;    
end;

var a: myarray = (6,1,7,8,3,2);
var z: integer;
begin
    Sort(a);
    for z := 0 to 5 do
        writeln(a[z]);    
end.