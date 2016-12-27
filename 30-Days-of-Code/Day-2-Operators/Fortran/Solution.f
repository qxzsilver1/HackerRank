real :: mealCost
integer :: tipPercent, taxPercent, roundedTotalCost

READ *, mealCost
READ *, tipPercent
READ *, taxPercent

tip = (tipPercent / 100.0) * mealCost
tax = (taxPercent / 100.0) * mealCost

totalCost = mealCost + tip + tax

roundedTotalCost = INT(NINT(totalCost))

PRINT 100, roundedTotalCost
100 FORMAT ("The total meal cost is ", I2, 1x, "dollars.")

END
