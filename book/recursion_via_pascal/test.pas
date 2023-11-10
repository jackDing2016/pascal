type natural = 0..maxint;
var x:natural;

procedure WriteNatural(i: natural);
begin
    if i < 10 then
        write(chr(i+ord('0')))
    else
    begin
        WriteNatural(i div 10);
        writeln(chr(i mod 10 + ord('0')))
    end; 
end;

begin
    writeln('Yes man');   
    read(x);
    write(' The value of ', x,' is ');
    WriteNatural(x);
end.