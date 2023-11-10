type T = record key: integer;
                next: ^T;
                end;
var list: ^T;
var q: ^T;
begin
{
    new(list);
    list^.key := 1;
    list^.next := nil;
    writeln(list^.key);
}
    new(q);
    q^.next := list;
    list := q;

end.

