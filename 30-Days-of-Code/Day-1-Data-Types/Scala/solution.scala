object Solution {
    def main(args: Array[String]) {
        val i = 4
        val d = 4.0
        val s = "HackerRank "
        
        // Read values of another integer, double, and string variables
        // Note use scala.io.StdIn to read from stdin
        val j = scala.io.StdIn.readInt()
        val e = scala.io.StdIn.readDouble()
        val t = scala.io.StdIn.readLine()
        
        // Print the sum of both the integer variables
        println(i+j)
        
        // Print the sum of both the double variables
        println(d+e)
        
        // Concatenate and print the string variables
        // The 's' variable above should be printed first.
        println(s+t)
    }
}
