package main
import "fmt"

func main() {
    var num uint32
    var firstHalf []byte
    var secondHalf []byte
    
    fmt.Scan(&num)
    strs := make([]string, num)
    
    for i, w := range strs {
        fmt.Scan(&(strs[i]))
        w = strs[i]
        
        for j := 0; j < len(w); j++ {
            if j % 2 == 0 {
                firstHalf = append(firstHalf, w[j])    
            } else {
                secondHalf = append(secondHalf, w[j])
            }
        }
        
        fmt.Printf("%s %s\n", string(firstHalf), string(secondHalf))
        firstHalf = nil
        secondHalf = nil
    }
}
