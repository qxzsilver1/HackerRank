#lang racket

(define num (string->number (read-line (current-input-port) 'any)))

(cond [(odd? num) (display "Weird")]
      [(and (>= num 6) (<= num 20)) (display "Weird")]
      [else (display "Not Weird")])
