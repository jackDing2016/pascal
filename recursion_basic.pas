
type ptr = ^integer;

procedure Print(var pp: ptr);
begin
    pp^ := pp^ + 1;
    writeln('pp^ is ', pp^);
    writeln('pp is', @pp);
   //  Print(pp);
    if pp^ = 5 then
    begin
        writeln('yes ');
       exit;
    end;
end;

var index: integer;
var p1: ptr;
begin
    index := 4;
    p1 := @index;
    Print(p1);    
end.
