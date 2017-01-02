object Solution {

    def main(args: Array[String]) {
        val sc = new java.util.Scanner (System.in);
        var N = sc.nextInt();
        
        if ( N%2 == 1 ) {
            println("Weird");
        } else if ( N >= 6 && N <= 20 ) {
            println("Weird");
        } else {
            println("Not Weird");
        }
    }
}
