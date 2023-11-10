function find(var a: array of integer): integer;
var i,k: integer;
var m: integer;
begin
    m := a[0];
    k := 0;
    for i := 1 to 5 do
    begin
        if a[i] > m then
        begin
            m := a[i];
        end;
    end;
    find := m;
end;

var arr: array of integer = (6,1,7,8,3,5);

begin
    writeln(find(arr)); 
end.