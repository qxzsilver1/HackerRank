import std.stdio;

void main()
{
    int N;
    
    readf("%s",&N);

    for (int i = 1; i <= 10; i++)
        writef("%d x %d = %d\n", N, i, N*i); 
    
}
