type
    Book = record
        title: packed array [1..50] of  char;
        book_id: longint;
end;

type
    node_ptr = ^Node;
    Node = record
        item: integer;
        next: node_ptr;
end; 

var run_through_river: Book;

var list: node_ptr;

begin
    run_through_river.title := 'Run throuth river';

    writeln(run_through_river.title);   

    new(list);

    new(list^.next);

    list^.next^.item := 1;

    writeln(list^.next^.item);

end.
        