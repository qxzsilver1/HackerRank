var num:Int

num = Int(readLine()!)!

if num%2 == 1 {
    print("Weird");
} else if num >= 6 && num <= 20 {
    print ("Weird");
} else {
    print("Not Weird");
}
