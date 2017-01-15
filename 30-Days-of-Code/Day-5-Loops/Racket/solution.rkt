#lang racket

(define n (read))

(for ([i (in-range 1 11)])
     (printf "~a x ~a = ~a\n" n i (* n i)))
