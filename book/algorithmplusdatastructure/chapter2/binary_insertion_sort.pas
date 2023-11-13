procedure Sort(var a: array of integer);
var i,j,left,right,middle: integer;
var k: integer;
begin
    for i := 1 to 4 do
    begin
        left := 0;
        right := i - 1;
        k := a[i];
        while(left <= right) do
        begin
            middle := (left + right) div 2;
            if k < a[middle] then
            begin
                right := middle - 1;
            end
            else
            begin
                left := middle + 1; 
            end;
        end;
        for j := i - 1 downto left do
            begin
                a[ j + 1 ] := a[j];
            end;
        a[left] := k;
    end;
end;
procedure write_arr(var a: array of integer);
var ele: integer;
begin
    for ele in a do
    begin
        write(ele, ' ');
    end;
    writeln();
end;
var arr : array [0..4] of integer = (6,1,7,8,3);
begin
    write_arr(arr);
    Sort(arr);
    write_arr(arr);    
end.