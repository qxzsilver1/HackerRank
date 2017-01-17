var n : int64;
    i,j : longint;
    s,firstHalf,secondHalf : ansistring;
    
begin
    readln(n);
    for i:=1 to n do
    begin
        readln(s);
        
        firstHalf := '';
        secondHalf := '';
        
        for j:=1 to length(s) do
        begin
            if j mod 2=0 then secondHalf:=secondHalf + s[j]
            else firstHalf := firstHalf + s[j];          
        end;
        writeln(firstHalf,' ',secondHalf);
    end;
end.
