
type T = record
            key: integer;
            next: ^T;
            end;

var p,q: ^T;
var n: integer;
var c: ^T;
begin
    
    new(q);
    q^.key := 1;
    q^.next := p;
    p := q;

    new(q);
    q^.key := 2;
    q^.next := p;
    p := q;



    c := p;

    while c <> nil do
    begin
        writeln(c^.key);
        c := c^.next;
    end;


end.
