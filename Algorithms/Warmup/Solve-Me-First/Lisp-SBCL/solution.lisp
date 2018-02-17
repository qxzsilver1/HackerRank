(defun solveMeFirst (x y)    
     ;; Hint: Type (+ x y)) below
    (+ x y))
    
(setq a (read-line))
(setq b (read-line))

(write (solveMeFirst (parse-integer a) (parse-integer b)))
