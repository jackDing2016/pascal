procedure Sort(var a: array of integer);

var i,j,k: integer;
var m: integer;

begin
    for i := 0 to 5 do
    begin
        m := a[i];
        k := i;
        for j := i + 1 to 5 do
        begin
            if a[j] < m then
            begin
               m := a[j];
               k := j; 
            end;
        end;
        a[k] := a[i];
        a[i] := m;
    end;
end;

procedure write_arr(var a: array of integer);
var i: integer;
begin
    for i := 0 to 5 do
    begin
        write(' ', a[i]); 
    end;
    writeln();
end;

var arr: array of integer = (6,1,7,8,3,5);

begin
    write_arr(arr);
    Sort(arr);
    write_arr(arr);  
end.