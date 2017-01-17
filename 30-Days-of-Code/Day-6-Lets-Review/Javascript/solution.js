function processData(input) {
    var inputArray = input.split("\n");
    var n = parseInt(inputArray[0]);
    
    for (var i = 0; i < n; i++) {
        var s = inputArray[i+1];
        
        var firstHalf = "";
        var secondHalf = "";
        
        for (var j = 0; j < s.length; j++) {
            if (j % 2 == 0) {
                firstHalf += s.charAt(j);
            } else {
                secondHalf += s.charAt(j);
            }
        }
        
        process.stdout.write(firstHalf + " " + secondHalf + "\n");
        
        firstHalf = "";
        secondHalf = "";
    }
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});
