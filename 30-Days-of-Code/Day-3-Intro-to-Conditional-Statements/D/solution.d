import std.stdio;
import std.conv;
import std.math;

void main()
{
    int N;
    
    readf("%s",&N);

    if (N % 2 == 1)
        writeln("Weird");
    else if (N >= 6 && N <= 20)
        writeln("Weird");
    else
        writeln("Not Weird");
    
}
