
type
    item = record
        key: integer;
        info: integer; 
    end;


type
    listptr = ^node;
    node = record
        item: item;
        next: listptr
    end;

{
type 
    listptr = ^node;
    node = record
        item: integer;
        next: listptr;
    end;
}
procedure CopyList(var destList: listptr; var sourceList: listptr);
begin
    if sourceList = nil then
    begin
        destList := nil;
    end
    else
    begin
        new(destList);
        destList^.item := sourceList^.item;
        destList^.next := destList^.next;
        CopyList(destList^.next, sourceList^.next);
    end;
end;

procedure add(var l: listptr; value: integer);
var temp: listptr;
begin
    new(temp);
    temp^.next := l;
    temp^.item.info := value;
    l := temp;
end;

procedure NewList(var l1: listptr; i: integer; var l2: listptr);
begin
    
end;

procedure Behead(var l: listptr);
begin

end;

{}
function InList(l: listptr; k: integer): Boolean;
    function I(l: listptr): Boolean;
    begin
        if l = nil then
        begin
            I := false;
        end
        else if k = l^.item.key then
        begin
            I := true;
        end
        else
        begin
            I := I(l^.next)
        end;
    end;        

begin

end;


{
    counter := l;
    while counter <> nil do
    begin
        writeln(counter^.item);
        counter := counter^.next;    
    end;
end;
}
procedure printList2(var l: listptr);
begin
    while l <> nil do
    begin
        writeln(l^.item.info);
        l := l^.next;
    end; 
end;

procedure writeList(var l: listptr);
begin
    if l <> nil then
    begin
        write(' ',l^.item.info);
        writeList(l^.next);
    end
    else
    begin
        writeln();
    end;
end;



function size(var l: listptr):integer;
begin
    if l = nil then
        size := 0    
    else
        size := size(l^.next) + 1 
end;


procedure r1(var l1: listptr; var l2: listptr);
var temp: listptr;
begin
    temp := l1;
    l1 := l1^.next;
    temp^.next := l2;
    l2 := temp;
end;

procedure r2(var l1: listptr; var l2: listptr);
var temp: listptr;
begin
    temp := l1;
    l1 := l1^.next;
    temp^.next := l2;
    l2 := temp;    
end;

procedure reverse(var l1: listptr; var l2: listptr);
var temp: listptr;
begin
    if l1 = nil then
    begin
        exit
    end
    else
    begin
        temp := l1;
        l1 := l1^.next;
        temp^.next := l2;
        l2 := temp;
        reverse(l1, l2);
    end;
end;

var list: listptr;
var new_list: listptr;
var value_a: integer;
var dest_list: listptr;
begin
    writeln('Now we start to learn recursion fundenmental');    
    value_a := 10;
    add(list, 1);
    add(list, 2);
    add(list, 3);
    add(list, 4);
    add(list, 5);

//    writeln(list = nil);
//    writeln(list^.next^.item);
//    writeln(list^.item);
//    printList(list);
//    writeln(size(list));
//    writeln('old list');
//    writeList(list);
//    r1(list, new_list);
//    r2(list, new_list);
//    reverse(list, new_list);
//    writeln();
//    writeln('new list');
//    writeList(new_list);
//    writeln();
//    printList2(list);
    CopyList(dest_list, list);
    writeList(list);
    writeList(dest_list);
//    dispose(list);

end.
