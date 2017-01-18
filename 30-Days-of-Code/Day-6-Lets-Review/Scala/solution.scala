object Solution {

    def main(args: Array[String]) {
        val sc = new java.util.Scanner(System.in);
        val n = sc.nextInt();
        
        sc.nextLine();
        
        for (i <- 1 to n) {
            val s = sc.nextLine();
            
            val firstHalf = for (j <- 0 until s.length() by 2) yield { s.charAt(j); }
            val secondHalf = for (j <- 1 until s.length() by 2) yield { s.charAt(j); }
            
            println(firstHalf.mkString + ' ' + secondHalf.mkString);
        }
    }
}
