uses math;

var num : byte;

begin
    num := 0;
    readln(num);
    
    if (odd(num)) then
        writeln('Weird')
    
    else if (num >= 6) and (num <= 20) then
        writeln('Weird')
        
    else 
        writeln('Not Weird');
    
end.
