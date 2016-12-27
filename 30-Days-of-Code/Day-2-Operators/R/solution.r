f <- file("stdin")
open(f)
row <- readLines(f, n=1, warn = FALSE)
mealCost <- row
row <- readLines(f, n=1, warn = FALSE)
tipPercent <- row
row <- readLines(f, n=1, warn = FALSE)
taxPercent <- row
close(f)

tip = as.numeric(mealCost[1]) * (as.numeric(tipPercent[1]) / 100)
tax = as.numeric(mealCost[1]) * (as.numeric(taxPercent[1]) / 100)
totalCost = as.numeric(mealCost[1]) + tip + tax

roundedTotalCost = floor(totalCost + 0.5)

cat("The total meal cost is", roundedTotalCost, "dollars.\n")
