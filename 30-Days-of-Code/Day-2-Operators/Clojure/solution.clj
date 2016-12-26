(def mealCost (read-string (read-line)))
(def tipPercent (read-string (read-line)))
(def taxPercent (read-string (read-line)))

(def tip (* mealCost (/ tipPercent 100.0)))
(def tax (* mealCost (/ taxPercent 100.0)))
(def totalCost (+ mealCost tax tip))

(def roundedTotalCost (Math/round totalCost))

(println "The total meal cost is" roundedTotalCost "dollars.")

