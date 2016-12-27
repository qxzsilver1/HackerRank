#lang racket

(define mealCost (string->number (read-line (current-input-port) 'any)))
(define tipPercent (string->number (read-line (current-input-port) 'any)))
(define taxPercent (string->number (read-line (current-input-port) 'any)))

(define tip (* mealCost (/ tipPercent 100.0)))
(define tax (* mealCost (/ taxPercent 100.0)))
(define totalCost (+ mealCost tip tax))

(define roundedTotalCost (exact-floor (+ totalCost 0.5)))

(printf "The total meal cost is ~s dollars." roundedTotalCost)
