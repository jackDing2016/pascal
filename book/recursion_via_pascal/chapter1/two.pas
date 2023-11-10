type int_array = array [0..9] of integer;

function Max(var a: int_array; n: integer):integer;
begin
    if n = 0 then
    begin
        Max := a[0];      
    end
    else
    begin
        if a[n] > Max(a, n - 1) then
        begin
            Max := a[n];
        end
        else
        begin
            Max := Max(a, n - 1 )
        end;
    end;
end;

var arr: int_array = (5,3,8,7,2,6,1,4,10,9);
begin
    writeln(Max(arr, 7));
    
end.