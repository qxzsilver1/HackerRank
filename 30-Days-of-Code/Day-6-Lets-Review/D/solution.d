import std.stdio;
import std.string;

void main()
{
    int n;
    readf("%s ", &n); //the space after %s is important
    
    for (int i = 0; i < n; i++) {
        string input = strip(readln());
        
        string firstHalf = "";
        string secondHalf = "";
        
        for (int j = 0; j < input.length; j++) {
            if (j % 2 == 0)
                firstHalf ~= input[j];
            else
                secondHalf ~= input[j];
        }
        
        writeln(firstHalf, " ", secondHalf);
    }
}
