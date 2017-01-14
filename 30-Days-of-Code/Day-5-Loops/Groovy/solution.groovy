System.in.withReader {
    int n = (it.readLine()).toInteger()
    
    for (int i = 1; i <= 10; i++)
        println n + " x " + i + " = " + n*i
    
}
