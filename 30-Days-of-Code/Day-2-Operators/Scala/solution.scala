import math.round

object Solution {
    def main(args: Array[String]) {
        val mealCost = scala.io.StdIn.readDouble()
        val tipPresent = scala.io.StdIn.readInt()
        val taxPresent = scala.io.StdIn.readInt()
            
        val tip = mealCost * (tipPresent / 100.0)
        val tax = mealCost * (taxPresent / 100.0)
        val totalCost = mealCost + tip + tax
            
        val roundedTotalCost = round(totalCost)

        printf("The total meal cost is %d dollars.", roundedTotalCost)
    }
}
