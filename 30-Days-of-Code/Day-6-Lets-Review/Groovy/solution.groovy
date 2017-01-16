System.in.withReader() {          
    int num = it.readLine().toInteger()
    def output = ""
    while (num > 0)
    {
        word = it.readLine().toCharArray() 
        
        def splitFunc = {
            def firstHalf = ""
            def secondHalf = "" 
            
            for (int i = 0; i < word.length; i++)
            {   
                if ( i % 2 == 0) {
                    firstHalf += word[i]
                } else {
                    secondHalf += word[i]
                }
            }
            
            firstHalf + " " + secondHalf + "\n"
        }
        output += splitFunc()
        num--
    }
    
    println output
}
