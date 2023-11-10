type node = record 
            key: integer;
            next: ^node;
            end;

var list,temp: ^node;

var size: integer;
var n: integer;

var c: ^node;

begin
    size := 5;
    for n := 0 to size do
    begin
        new(temp);
        temp^.key := n;
        temp^.next := list;
        list := temp;
    end;

    c := list;
    while( c <> nil ) do
    begin
        writeln(c^.key);
        c := c^.next; 
    end;

end.