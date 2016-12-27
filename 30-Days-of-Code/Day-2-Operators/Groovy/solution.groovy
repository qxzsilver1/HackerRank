System.in.withReader {
    double mealCost = Double.parseDouble(it.readLine())
    int tipPercent = (it.readLine()).toInteger()
    int taxPercent = (it.readLine()).toInteger()
    
    double tip = mealCost * (tipPercent / 100.0)
    double tax = mealCost * (taxPercent / 100.0)
    
    double totalCost = mealCost + tip + tax
    
    int roundedTotalCost = totalCost.round()
    
    println "The total meal cost is " + roundedTotalCost + " dollars.\n"
}
