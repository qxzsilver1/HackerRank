#lang racket

(define (sum-of-two-integers a b)
  ; Hint: Type (+ a b)) below 
  (+ a b))
  

(let ([a (read)]
      [b (read)])
  (printf "~a~%" (sum-of-two-integers a b)))
