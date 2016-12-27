uses sysutils, math, crt;

var mealCost : double;
var tipPercent : byte;
var taxPercent : byte;
var tip : double;
var tax : double;
var totalCost : double;
var roundedTotalCost : byte;

begin
    mealCost := 0;
    tipPercent := 0;
    taxPercent := 0;
    readln(mealCost);
    readln(tipPercent);
    readln(taxPercent);
    
    tip := mealCost * (tipPercent / 100);
    tax := mealCost * (taxPercent / 100);
    totalCost := mealCost + tip + tax;
    
    roundedTotalCost := floor(totalCost + 0.5);
    
    writeln('The total meal cost is ', inttostr(roundedTotalCost), ' dollars.');
    
end.
