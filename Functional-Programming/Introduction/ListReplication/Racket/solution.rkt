#lang racket
; Enter your code here. Read input from STDIN. Print output to STDOUT

(define x (read))

(define (read-list result f)
  (let ((now (read)))
    (if (integer? now)
      (read-list (f now result) f)
      (reverse result)))
)

(define (print-list lst)
  (if (null? lst)
    (printf "\n")
    (begin (printf "~a\n" (car lst)) (print-list (cdr lst))))
)

(define (multer n res)
  (define (helper i ret)
    (if (= x i)
      ret
      (helper (+ 1 i) (cons n ret))))
  (helper 0 res)
)

(define lst (read-list '() multer))

(print-list lst)
