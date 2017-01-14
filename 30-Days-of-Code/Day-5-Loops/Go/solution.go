package main
import "fmt"

func main() {
    var n uint32
    
    fmt.Scanf("%d", &n)
    
    for i := 1; i <= 10; i++ {
        fmt.Printf("%d x %d = %d\n", n, i, n*uint32(i))
    }
}
