-module(solution).
-export([main/0]).

main() ->
    {MealCost, _} = string:to_float(string:strip(io:get_line(""), both, $\n)),
    {TipPercent, _} = string:to_integer(string:strip(io:get_line(""), both, $\n)),
    {TaxPercent, _} = string:to_integer(string:strip(io:get_line(""), both, $\n)),  

    Tip = MealCost * (TipPercent / 100),
    Tax = MealCost * (TaxPercent / 100),
    
    TotalCost = MealCost + Tip + Tax, 
    
    RoundedTotalCost = round(TotalCost),
    
    io:format("The total meal cost is ~p dollars.\n", [RoundedTotalCost]).
