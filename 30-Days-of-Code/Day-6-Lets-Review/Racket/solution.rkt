#lang racket

(define n [read])
(for ([i n])
     (let ([s (symbol->string (read))]
           [firstHalf (string)]
           [secondHalf (string)])
        (for ([j (in-string s)]
              [k (string-length s)])
             (cond
              [(even? k) (set! firstHalf (string-append firstHalf (string j)))]
              [(odd? k) (set! secondHalf (string-append secondHalf (string j)))]))
       (printf "~a ~a\n" firstHalf secondHalf)))
      
