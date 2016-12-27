process.stdin.resume();
process.stdin.setEncoding('ascii');

var input_stdin = "";
var input_stdin_array = "";
var input_currentline = 0;

process.stdin.on('data', function (data) {
    input_stdin += data;
});

process.stdin.on('end', function () {
    input_stdin_array = input_stdin.split("\n");
    main();    
});

function readLine() {
    return input_stdin_array[input_currentline++];
}

function main() {
    
    var mealCost;
    var tipPercent;
    var taxPercent;

    mealCost = parseFloat(readLine());
    tipPercent = parseInt(readLine());
    taxPercent = parseInt(readLine());

    var tip = mealCost * (tipPercent / 100.0);
    var tax = mealCost * (taxPercent / 100.0);
    var totalCost = mealCost + tip + tax;
    
    var roundedTotalCost = Math.round(totalCost);
    
    process.stdout.write("The total meal cost is " + roundedTotalCost + " dollars.\n")
    
}
