var s = readLine()!
var n : Int! = Int(s)

for i in 0...n-1
{
    s = readLine()!
    var arr = Array(s.characters)

    var firstHalf : String = ""
    var secondHalf : String = ""
    
    for j in 0...arr.count-1
    {
        if(j % 2 == 0)
        {
            firstHalf = firstHalf + String(arr[j])
        } 
        else
        {
            secondHalf = secondHalf + String(arr[j])
        }
    }
    
    print("\(firstHalf) \(secondHalf)")
}
