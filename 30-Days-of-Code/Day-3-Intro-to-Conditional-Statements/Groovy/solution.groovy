System.in.withReader {
    int n = (it.readLine()).toInteger()
    
    if (n % 2 == 1) {
        println "Weird"
    } else if (n >= 6 && n <= 20) {
        println "Weird"
    } else {
        println "Not Weird"
    }
    
}
