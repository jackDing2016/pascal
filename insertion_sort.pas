
type myarray = array [0..5] of integer;

procedure Sort(var arr: myarray);
var 
    i: integer;
    j: integer;
var temp: integer;
var index: integer;
begin
    for i := 1 to 5 do
    begin
       temp := arr[i];
       index := i;
       for j := i - 1 downto 0 do
       begin
            if arr[j] > temp then
            begin
                arr[ j + 1 ] := arr[ j ];
               // index := index - 1;
               index := j;
            end
            else
            begin
//                index :=j;
//                arr[index] := temp;
                break;      
            end;     
       end;
       arr[index] := temp; 
       
    end;
    
end;
var a: myarray = (10,23,12,6,88,66);
var x: integer;
begin
    Sort(a);
    for x := 0 to 5 do
        writeln(a[x]);
end.