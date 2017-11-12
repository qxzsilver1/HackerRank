(defun l (n e) (if (= 0 n) nil (cons e (l (- n 1) e))))

(defun f (n list) 
  ;; Complete this function
    (if (null list) nil (append (l n (first list)) (f n (cdr list))))
)
(defun read-list ()
    (let ((n (read *standard-input* nil)))
        (if (null n)
            nil
            (cons n (read-list)))))

(format t "~{~d~%~}" (f (read) (read-list)))
