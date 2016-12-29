package main
import "fmt"

func main() {
     var n uint32
    
    fmt.Scanf("%d", &n)
    
    if n%2 == 1 {
        fmt.Println("Weird")
    } else if n >= 6 && n <= 20 {
        fmt.Println("Weird")
    } else {
        fmt.Println("Not Weird")
    }
}
